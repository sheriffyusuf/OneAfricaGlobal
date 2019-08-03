import 'package:flutter/material.dart';
import 'package:marquee_flutter/marquee_flutter.dart';
import 'package:one_africa_global/color/hex_color.dart';
import 'package:one_africa_global/fragments/image_gallery_screen.dart';
import 'package:one_africa_global/fragments/music.dart';
import 'package:one_africa_global/fragments/videos.dart';
import 'package:one_africa_global/webviews/webview_template.dart';

class MainGalleryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text("Gallery"),
        ),
        body: Column(
          children: <Widget>[
            Center(
                child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(
                Icons.dvr,
                size: 35,
              ),
            )),
            Flexible(
                fit: FlexFit.tight,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ImageGalleryScreen()));
                      },
                      child: Material(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            width: double.maxFinite,

                            /*decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.blue),
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.lightBlue,
                                  offset: Offset(0.0, 10.0),
                                  blurRadius: 10.0,
                                  spreadRadius: 1.0)
                            ]),*/
                            child: Padding(
                                padding: EdgeInsets.only(left: 40.0),
                                child: Text(
                                  "Photos",
                                )),
                          ),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(15.0)),
                          elevation: 5.0,
                          //    borderRadius: BorderRadius.circular(15.0),
                          shadowColor: Colors.lightBlue),
                    ))),
            Flexible(
                fit: FlexFit.tight,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MusicScreen()));
                      },
                      child: Material(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            width: double.maxFinite,
                            /* decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.lightBlue,
                              offset: Offset(0.0, 10.0),
                              blurRadius: 10.0,
                              spreadRadius: 1.0)
                        ]),*/
                            child: Padding(
                                padding: EdgeInsets.only(left: 40.0),
                                child: Text(
                                  "Music",
                                )),
                          ),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(15.0)),
                          elevation: 5.0,
                          //    borderRadius: BorderRadius.circular(15.0),
                          shadowColor: Colors.lightBlue),
                    ))),
            Flexible(
                fit: FlexFit.tight,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DisplayPage('Videos',
                                    'https://www.youtube.com/channel/UC1VcNaHhdbLXZD9dfdmxtTA')));
                      },
                      child: Material(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            width: double.maxFinite,
                            /*  decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.lightBlue,
                              offset: Offset(0.0, 10.0),
                              blurRadius: 10.0,
                              spreadRadius: 1.0)
                        ])*/
                            child: Padding(
                                padding: EdgeInsets.only(left: 40.0),
                                child: Text(
                                  "Videos",
                                )),
                          ),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(15.0)),
                          elevation: 5.0,
                          //    borderRadius: BorderRadius.circular(15.0),
                          shadowColor: Colors.lightBlue),
                    ))),
            SizedBox(
              height: 40,
            ),
            Container(
                alignment: Alignment.center,
                height: 50,
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
                    padding: const EdgeInsets.all(13.0),
                    child: new MarqueeWidget(
                        text:
                            "One Africa Music Fest Returns NYC, London & Dubai",
                        textStyle:
                            new TextStyle(fontSize: 14.0, color: Colors.white),
                        scrollAxis: Axis.horizontal
                        //     ),
                        ))),
          ],
        ));
  }
}
