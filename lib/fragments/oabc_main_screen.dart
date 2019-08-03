import 'package:flutter/material.dart';
import 'package:marquee_flutter/marquee_flutter.dart';
import 'package:one_africa_global/color/hex_color.dart';
import 'package:one_africa_global/webviews/webview_template.dart';

class OABMainScreen extends StatelessWidget {
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
            """OAB brand offers a wide range of skin and hair care products. oneafricabeauty.com is your online destination for great values, special offers, and the latest news on some of the world's most loved beauty and skincare products.This site allows you to purchase your favorite products directly from One Africa Beauty, manage your online account, take advantage of exclusive offers and promotions, and learn more about other One Africa Beauty® products that may interest you.
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
                        builder: (context) => DisplayPage('One Africa Beauty',
                            'https://oneafricabeauty.com')));
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
  }
}
