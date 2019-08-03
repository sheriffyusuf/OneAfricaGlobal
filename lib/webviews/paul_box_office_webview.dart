import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';
import 'dart:convert';
import 'package:one_africa_global/utils/navigation_controls.dart';

class PauloBoxWebView extends StatefulWidget{
  @override
  _PauloBoxWebViewState createState() => _PauloBoxWebViewState();
}

class _PauloBoxWebViewState extends State<PauloBoxWebView> {
  final Completer<WebViewController> _controller =Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Paulo Box Office"),
        actions: <Widget>[
          NavigationControls(_controller.future)
        ],
      ),
      body: Builder(
          builder: (BuildContext context){
            return WebView(
              initialUrl: 'https://pauloboxoffice.com',
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (WebViewController webViewController){
                _controller.complete(webViewController);
              },
            );
          }
      ),
    );
  }
}

