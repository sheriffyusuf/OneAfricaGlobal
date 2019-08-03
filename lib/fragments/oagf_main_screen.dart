import 'package:flutter/material.dart';
import 'package:marquee_flutter/marquee_flutter.dart';
import 'package:one_africa_global/color/hex_color.dart';
import 'package:one_africa_global/webviews/webview_template.dart';

class OAGFMainScreen extends StatelessWidget {
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
            """One Africa Global Foundation was established by a group of young, energetic and visionary people who were highly motivated and committed for contributing their time, skills and energies for the development and empowerment of socially disadvantaged and vulnerable communities in Africa and addressing poverty issues, gender based discriminations, Youth Unemployment, issues of continental identity, Poor health conditions and Extremism.
It’s a human-centered NGO. OAGF could also be labeled as an implementing organization which designs and implements various developmental projects with the financial and technical support of international donor agencies and the government.Formulated to activate Africans for the responsibility of Building of Continent through innovation, Empowerment and Pan African Identity.""",
            maxLines: 9999,
            textAlign: TextAlign.justify,
          ),
        )),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DisplayPage(
                            'OAG Foundation', 'https://oagfoundation.com')));
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
            ))
      ],
    );
    /* return Column(
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
                child: Text("Donate", style: TextStyle(color: Colors.white),),
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
               */ /* decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(color: Colors.blue),
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
                      "Mission / Vision",
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
                      "Gallery",
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
                      "Projects",
                    )),
              ),
            )),
        SizedBox(
          height: 50,
        )
      ],
    );*/
  }
}
