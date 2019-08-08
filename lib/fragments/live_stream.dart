import 'package:flutter/material.dart';
import 'package:marquee_flutter/marquee_flutter.dart';
import 'package:one_africa_global/color/hex_color.dart';
import 'package:one_africa_global/webviews/live_streaming_webview.dart';

class LiveStreamScreen extends StatefulWidget {
  @override
  _LiveStreamScreenState createState() => _LiveStreamScreenState();
}

class _LiveStreamScreenState extends State<LiveStreamScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
          'Live Streaming',
          textAlign: TextAlign.start,
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        //    iconTheme: IconThemeData(color: Colors.indigo[900]),
        elevation: 0.2,
        backgroundColor: FlutterColor("#071B42"),
      ),
      /*   drawer: Drawer(
        child: ListView(),
      ),*/
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(32, 25, 32, 0),
              child: Icon(
                Icons.wifi,
                size: 44,
                color: Colors.indigo,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 16, 32, 0),
              child: Text(
                'Live stream of One Africa Music Fest attract a fee of \$0.99 If you have paid already. Enter you email to proceed',
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 16, 32, 0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email:',
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            RaisedButton(
              child: Text(
                'SIGN IN',
                style: TextStyle(color: Colors.white),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LiveStreamWebView("Live Stream",
                            "https://www.oneafricaglobal.com/home/OAMF-watch-live.php")));
              },
              color: Colors.indigo[900],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
              child: Text(
                'If you have never used our streaming services pay one time fee to get started.',
                textAlign: TextAlign.center,
              ),
            ),
            RaisedButton(
              child: Text(
                'PAY NOW',
                style: TextStyle(color: Colors.white),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LiveStreamWebView("Live Stream",
                            "https://www.oneafricaglobal.com/home/OAMF-watch-live.php")));
              },
              color: Colors.indigo[900],
            ),
            Container(
              alignment: Alignment.center,
              height: 40,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    /* stops: [0.4,0.8,0.9],*/
                    colors: [
                      FlutterColor("#071B42"),
                      FlutterColor("#214776"),
                      FlutterColor("#2E6AA5")
                    ]),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: new MarqueeWidget(
                    text: "One Africa Music Fest Returns NYC, London & Dubai",
                    textStyle:
                        new TextStyle(fontSize: 14.0, color: Colors.white),
                    scrollAxis: Axis.horizontal
                    //     ),
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
