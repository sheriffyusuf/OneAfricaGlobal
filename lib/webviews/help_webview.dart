import 'dart:async';

import 'package:flutter/material.dart';
import 'package:one_africa_global/utils/navigation_controls.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HelpWebView extends StatefulWidget{
  @override
  _HelpWebViewState createState() => _HelpWebViewState();
}

class _HelpWebViewState extends State<HelpWebView> {
  final Completer<WebViewController> _controller =Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    /*  appBar: AppBar(
        title: Text("Paulo Box Office"),
        actions: <Widget>[
      //    NavigationControls(_controller.future)
        ],
      ),*/
      body: Builder(
          builder: (BuildContext context){
            return WebView(
              initialUrl: 'https://www.oneafricaglobal.com/home/contact.php',
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (WebViewController webViewController){
                _controller.complete(webViewController);
              },
            );
          }
      ),
    );
} }