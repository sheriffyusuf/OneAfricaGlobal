import 'package:flutter/material.dart';
import 'package:marquee_flutter/marquee_flutter.dart';
import 'package:one_africa_global/color/hex_color.dart';
import 'package:one_africa_global/webviews/webview_template.dart';

class PauloBoxOffice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.info_outline,
            size: 48,
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            """Paulo Box Office is a global ticket store for promoting events that allows anyone to create, share, find and attend events that fuel their passions and get them excited. From music festivals, community rallies, and fundraisers, to gaming competitions and various contests. We connect the world with an amazing blend of different experiences.
""",
            maxLines: 9999,
            textAlign: TextAlign.justify,
          ),
        )),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DisplayPage('Paulo Box Office',
                            'http://pauloboxoffice.com')));
              },
              child: Container(
                alignment: Alignment.center,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Click for more details",
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                /* Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),*/
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                      colors: [
                        FlutterColor("#071B42"),
                        FlutterColor("#214776"),
                        FlutterColor("#2E6AA5")
                      ]),
                ),
              )),
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
                textStyle: new TextStyle(fontSize: 14.0, color: Colors.white),
                scrollAxis: Axis.horizontal
                //     ),
                ),
          ),
        )
      ],
    );
    /*return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
              Expanded(
              child: Container(
                alignment: Alignment.center,
                width: 50,
                height: 80,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                      */ /* stops: [0.4,0.8,0.9],*/ /*
                      colors: [
                        FlutterColor("#071B42"),
                        FlutterColor("#214776"),
                        FlutterColor("#2E6AA5")
                      ]),
                ),

                child:Padding(
                  padding: EdgeInsets.all(10.0),
                child: Image.asset(
                  'assets/pobo.png',
                ),
              )
              ),
            )
          ],
        ),

        Flexible(
            fit: FlexFit.tight,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 15.0, 8.0, 8.0),
              child: Container(
                alignment: Alignment.centerLeft,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.lightBlue,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 10.0,
                          spreadRadius: 1.0)
                    ]),
                child: Padding(
                    padding: EdgeInsets.only(left: 40.0),
                    child: Text(
                      "Upcoming Event",
                    )),
              ),
            )),
        Flexible(
            fit: FlexFit.tight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.centerLeft,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.lightBlue,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 10.0,
                          spreadRadius: 1.0)
                    ]),
                child: Padding(
                    padding: EdgeInsets.only(left: 40.0),
                    child: Text(
                      "Become a Promoter",
                    )),
              ),
            )),
        Flexible(
            fit: FlexFit.tight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.centerLeft,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.lightBlue,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 10.0,
                          spreadRadius: 1.0)
                    ]
                ),
                child: Padding(
                    padding: EdgeInsets.only(left: 40.0),
                    child: Text(
                      "Contact / Ts & Cs",
                    )),
              ),
            )),
        SizedBox(
          height: 100,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 4.0),
            child: Row(
              children: <Widget>[
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    child: new TextField(
                      style: TextStyle(fontSize: 14),
                      decoration: new InputDecoration(
                          border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(50.0),
                              ),
                       //       borderSide: BorderSide(width: 3.0,style: BorderStyle.none,color: Colors.red)
                          ),
                          filled: true,
                          hintStyle: new TextStyle(color: Colors.grey[200]),
                          hintText: "Receive news on upcoming event",
                          fillColor: Colors.white70),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    child: Icon(Icons.arrow_forward,color: Colors.white,),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          */ /* stops: [0.4,0.8,0.9],*/ /*
                          colors: [
                            FlutterColor("#071B42"),
                            FlutterColor("#214776"),
                            FlutterColor("#2E6AA5")
                          ]),
                    ),
                  ),
                )
              ],
            )
          )
        )
      ],
    );*/
  }
}
