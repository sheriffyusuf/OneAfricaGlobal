import 'package:flutter/material.dart';
import 'package:one_africa_global/color/hex_color.dart';
import 'package:one_africa_global/constants/strings.dart';

class OAMFAboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.center,
                width: 50,
                height: 80,
                color: FlutterColor("#071B42"),
                child: Text("About", style: TextStyle(color: Colors.white),),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                width: 50,
                height: 80,
                color: Colors.blue,
                child: Text(
                  "2019 Concert", style: TextStyle(color: Colors.white),),
              ),
            )
          ],
        ),
        Expanded(
          child: Padding(
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 1.0),
              child: SingleChildScrollView(
                  child: Text(
                    Strings.sampleText,
                    maxLines: 9999,
                    textAlign: TextAlign.justify,
                  ))),
        ),
        Expanded(
          child: Padding(
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 1.0),
              child: SingleChildScrollView(
                  child: Text(
                    Strings.sampleText,
                    maxLines: 9999,
                    textAlign: TextAlign.justify,
                  ))),
        ),
        Expanded(
          child: Padding(
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 1.0),
              child: SingleChildScrollView(
                  child: Text(
                    Strings.sampleText,
                    maxLines: 9999,
                    textAlign: TextAlign.justify,
                  ))),
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              alignment: Alignment.centerLeft,
              width: 200,
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
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50.0)),
              child: Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: Text(
                    "Click for more details",
                    style: TextStyle(color: Colors.white),
                  )
              ),
            ),
        ),
        SizedBox(
          height: 50,
        )

      ],
    );
  }

}