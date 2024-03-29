import 'dart:async';

import 'package:flutter/material.dart';
import 'package:one_africa_global/fragments/welcome_screen.dart';
import 'package:one_africa_global/pages/main_page.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SocialWebView extends StatefulWidget{
  final title;
  final String url;
SocialWebView(this.title,this.url);
  @override
  _SocialWebViewState createState() => _SocialWebViewState(this.title,this.url);
}

class _SocialWebViewState extends State<SocialWebView> {
  final Completer<WebViewController> _controller =
  Completer<WebViewController>();
  var _title;
  String _url;
  _SocialWebViewState(this._title, this._url);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            actions: <Widget>[NavigationControls(_controller.future)],
            title: FittedBox(
              fit: BoxFit.contain,
              child: Text(_title),

            ),
          automaticallyImplyLeading: false,
            leading: IconButton(icon:Icon(Icons.arrow_back),
              onPressed:() {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MainPage()));

              },
            )
        ),
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

class NavigationControls extends StatelessWidget {
  const NavigationControls(this._webViewControllerFuture)
      : assert(_webViewControllerFuture != null);

  final Future<WebViewController> _webViewControllerFuture;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<WebViewController>(
      future: _webViewControllerFuture,
      builder:
          (BuildContext context, AsyncSnapshot<WebViewController> snapshot) {
        final bool webViewReady =
            snapshot.connectionState == ConnectionState.done;
        final WebViewController controller = snapshot.data;

        return Row(
          children: <Widget>[
                IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: !webViewReady
                  ? null
                  : () async {
                if (await controller.canGoBack()) {
                  controller.goBack();
                } else {
                  Scaffold.of(context).showSnackBar(
                    const SnackBar(content: Text("No back history item")),
                  );
                  return;
                }
              },
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward_ios),
              onPressed: !webViewReady
                  ? null
                  : () async {
                if (await controller.canGoForward()) {
                  controller.goForward();
                } else {
                  Scaffold.of(context).showSnackBar(
                    const SnackBar(
                        content: Text("No forward history item")),
                  );
                  return;
                }
              },
            ),
            IconButton(
              icon: const Icon(Icons.replay),
              onPressed: !webViewReady
                  ? null
                  : () {
                controller.reload();
              },
            ),
          ],
        );
      },
    );
  }
}