import 'package:flutter/material.dart';
import 'package:one_africa_global/color/hex_color.dart';
import 'package:one_africa_global/webviews/webview_template.dart';

class OneAfricaFootballScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
    child:
      Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 10),
              child: Image.asset(
                'assets/favicon.png',
                height: 60,
                width: 70,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Text(
                'OAFC is a developmental organization and a global mobile clinic of high performance young footballer in Africa. OAFC develops its main activity to power Africa finest football talents in safe and conducive environment.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Text(
                'One Africa Football Clinic (OAFC) is also a platform that conferences ex-professional footballers who decided to come together for a good cause and give back to the community the skills they learnt over the years. OAFC is the first and only mobile football clinic in Africa, with dynamic innovation and passion. We provide exciting, intensive and professional training and uncommon experiences throughout Africa targeted to discovering football talents.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: Text(
                'We intend to use OAFC to correct and modify the methods of training which have been provided in Africa for the past decade. With these ex-professional players, each area of football will be well developed. applicants will selected according to their skill level and needs, which means a proper evaluation will take place and an appropriate training arrangement will be designed for them based on their evaluation result',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
           /* RaisedButton(
              child: Text(
                'Click to enroll',
                style: TextStyle(color: Colors.white),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {},
              color: Colors.indigo[900],
            ),*/
          /*  Container(
              height: 50,
              width: 500,
              color: Colors.indigo[900],
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'One Africa Music Fest Returns NYC, London & Dubai',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),*/
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DisplayPage('One Africa Football Clinic', 'http://oafootballacademy.com/')));

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
                    )
                    ,
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
           /* Flexible(

              fit: FlexFit.loose,
              child: Container(

              ),
            ),*/
           /* SizedBox(
              height: 40,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                      *//* stops: [0.4,0.8,0.9],*//*
                      colors: [
                        FlutterColor("#071B42"),
                        FlutterColor("#214776"),
                        FlutterColor("#2E6AA5")
                      ]),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        "One Africa Music Fest Returns NYC, London & Dubai",
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ),
            )*/
          ],
        ));
  }

}