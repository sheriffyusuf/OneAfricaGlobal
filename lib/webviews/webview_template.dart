import 'dart:async';

import 'package:flutter/material.dart';
import 'package:one_africa_global/utils/navigation_controls.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DisplayPage extends StatefulWidget {
  final title;
  final String url;

  DisplayPage(this.title, this.url);

  @override
  _DisplayPageState createState() => _DisplayPageState(this.title, this.url);
}

class _DisplayPageState extends State<DisplayPage> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  var _title;
  String _url;

  _DisplayPageState(this._title, this._url);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            actions: <Widget>[NavigationControls(_controller.future)],
            title: FittedBox(
              fit: BoxFit.contain,
              child: Text(_title),
            )),
        body: Builder(builder: (BuildContext context) {
          return WebView(
            initialUrl: _url,
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            },
          );
        }));
  }
}
