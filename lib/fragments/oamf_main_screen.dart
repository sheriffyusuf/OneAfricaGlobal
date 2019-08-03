import 'package:flutter/material.dart';
import 'package:marquee_flutter/marquee_flutter.dart';
import 'package:one_africa_global/color/hex_color.dart';
import 'package:one_africa_global/webviews/webview_template.dart';

class OAMFScreen extends StatelessWidget {
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
            """ Interswitch One Africa Music Fest (IOAMF) is the most prestigious leading platform in showcasing Africa's best and brightest talents with the sole aim of solidifying Africa's position within the entertainment industry on a global level. We see this concept as a critical contribution to the development and awareness of African Music/Talents Globally. 
The results will be the expansion of physical and digital entertainment and lifestyle distribution,creating partnership opportunities around the globe. Our pointers are;Africa's Biggest Afrobeat Brand Africa's Best Afrobeat Brand Integriting Africa Globally.""",
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
                        builder: (context) => DisplayPage('Interswitch-OAMF',
                            'http://oneafricamusicfest.com')));
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
                  )),
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
                color: FlutterColor("#071B42"),
                child: Text(
                  "2019 Concert",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                width: 50,
                height: 80,
                color: Colors.blue,
                child: Text(
                  "About",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
        Flexible(
            fit: FlexFit.tight,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 15.0, 8.0, 8.0),
              child:Material(
    child:
              Container(
                alignment: Alignment.centerLeft,
                width: double.maxFinite,
                */ /*decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.lightBlue,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 10.0,
                          spreadRadius: 1.0)
                    ]),*/ /*
                child: Padding(
                    padding: EdgeInsets.only(left: 40.0),
                    child: Text(
                      "2019 Concert / Partnership",
                    )),
              ),
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15.0)),
                  elevation: 5.0,
                  //    borderRadius: BorderRadius.circular(15.0),
                  shadowColor: Colors.lightBlue
              ),
            )),
        Flexible(
            fit: FlexFit.tight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                  child: Container(
                alignment: Alignment.centerLeft,
                width: double.maxFinite,
              */ /*  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.lightBlue,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 10.0,
                          spreadRadius: 1.0)
                    ]),*/ /*
                child: Padding(
                    padding: EdgeInsets.only(left: 40.0),
                    child: Text(
                      "Gallery",
                    )),
              ),
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15.0)),
                  elevation: 5.0,
                  //    borderRadius: BorderRadius.circular(15.0),
                  shadowColor: Colors.lightBlue
              ),
            )),
        Flexible(
            fit: FlexFit.tight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    width: double.maxFinite,
                    */ /*decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.lightBlue,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 10.0,
                          spreadRadius: 1.0)
                    ]),*/ /*
                    child: Padding(
                        padding: EdgeInsets.only(left: 40.0),
                        child: Text(
                          "Get Tickets",
                        )),
                  ),
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(15.0)),
                  elevation: 5.0,
                  //    borderRadius: BorderRadius.circular(15.0),
                  shadowColor: Colors.lightBlue),
            )),
        SizedBox(
          height: 50,
        )
      ],
    );*/
  }
}
