import 'package:flutter/material.dart';
import 'package:one_africa_global/webviews/webview_template.dart';

class SettingScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DisplayPage('Privacy Policy','https://www.oneafricaglobal.com/home/cookiesandprivacy.php')));

              },
              child:
            Text("Privacy Policy",style: TextStyle(fontSize: 24),),
          )),
          Divider(),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DisplayPage('Cookie Policy','https://www.oneafricaglobal.com/home/cookiesandprivacy.php')));

                },
                child:
                Text("Cookie Policy",style: TextStyle(fontSize: 24),),
              )),
          Divider(),
          
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DisplayPage('Terms of use','https://www.oneafricaglobal.com/home/termsandconditions.php')));

                },
                child:
                Text("Terms of use",style: TextStyle(fontSize: 24),),
              )),
             /* Marquee(
              text: 'There once was a boy who told this story about a boy: "',
    style: TextStyle(fontWeight: FontWeight.bold),
    scrollAxis: Axis.horizontal,
    crossAxisAlignment: CrossAxisAlignment.start,
    blankSpace: 20.0,
    velocity: 100.0,
    pauseAfterRound: Duration(seconds: 1),
    startPadding: 10.0,
    accelerationDuration: Duration(seconds: 1),
    accelerationCurve: Curves.linear,
    decelerationDuration: Duration(milliseconds: 500),
    decelerationCurve: Curves.easeOut,)*/

        ]

      ),
    );
  }

}