import 'package:flutter/material.dart';
import 'package:marquee_flutter/marquee_flutter.dart';
import 'package:one_africa_global/constants/strings.dart';
import 'package:one_africa_global/color/hex_color.dart';
import 'package:one_africa_global/webviews/webview_template.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: FittedBox(
              fit: BoxFit.contain, child: Text("About One Africa Global")),
        ),
        body: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.info_outline,
              size: 48,
            ),
          ),
          Expanded(
            child: Padding(
                padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 1.0),
                child: SingleChildScrollView(
                    child: Text(
                  """When people are asked what they think about Africa, their answers usually revolve around "war," "famine," "animals," "jungles" and "poverty." While these words are indubitably a part of Africa, they only represent a tiny thread of a vast and ancient tapestry resplendent with more than 6,000 years of Africa’s history, culture and heritage. One Africa Global is mandated to promote the understanding of Africa's uniqueness to the world through; Music, Sensitization, Global Events on Africa, Visual Arts and Partnerships. By doing so, we not only hope to empower people to have pride in themselves, we also hope to allow them to appreciate how Africa's legacy directly relates to their lives while building a cultural awareness that deepens their connection to the global community.Our activities have continuously changed lives, caused self-discovery of young people and have also earned us a continental partnership with African Union, ECOSOCC; the apex organization in Africa whose aim is to achieve greater unity and solidarity between the African countries and Africans and defend the sovereignty, territorial integrity and independence of its Member States and also accelerate the political and social-economic integration of the continent""",
                  maxLines: 9999,
                  textAlign: TextAlign.justify,
                ))),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DisplayPage('About OAG',
                              'http://oneafricaglobal.com/home/')));
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
        ]));
  }
}
