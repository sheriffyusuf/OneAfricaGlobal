import 'package:flutter/material.dart';
import 'package:one_africa_global/color/hex_color.dart';
import 'package:one_africa_global/constants/strings.dart';
import 'package:one_africa_global/pages/main_page.dart';
import 'package:one_africa_global/webviews/social_webview.dart';

class SocialConnectScreen extends StatefulWidget {
  @override
  _SocialConnectState createState() => _SocialConnectState();
}

class _SocialConnectState extends State<SocialConnectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  /* stops: [0.4,0.8,0.9],*/
                  colors: [
                    FlutterColor("#071B42"),
                    FlutterColor("#214776"),
                    FlutterColor("#2E6AA5")
                  ])),
          child: Column(
           // shrinkWrap: true,
            //padding: EdgeInsets.all(32.0),
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(45.0, 30.0, 45.0, 10.0),
                child: Image.asset('assets/oag1.png',height: 120,),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Social Connect',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28,color: Colors.white),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Please log in with your social account for better experience with social features',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15,color: Colors.white),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Image.asset(
                          'assets/facebook.png',
                          semanticLabel: 'Facebook',
                        ),
                        //radius: 30.0,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15.0, 0, 0, 0),
                        child: Text('Facebook',style: TextStyle(color: Colors.white)),
                      )
                    ],
                  ),
                  RaisedButton(
                    child: Text('Connect'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SocialWebView('Facebook',Strings.facebook_link)));

                    },
                    color: Colors.blue[900],
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Image.asset(
                          'assets/twitter.png',
                          semanticLabel: 'Twitter',
                        ),
//                        radius: 30.0,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15.0, 0, 0, 0),
                        child: Text('Twitter',style: TextStyle(color: Colors.white)),
                      )
                    ],
                  ),
                  RaisedButton(
                    child: Text('Connect'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SocialWebView('Twitter',Strings.twitter_link)));

                    },
                    color: Colors.lightBlueAccent,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Image.asset(
                          'assets/instagram.png',
                          semanticLabel: 'Intagram',
                        ),
//                        radius: 30.0,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15.0, 0, 0, 0),
                        child: Text('Instagram',style: TextStyle(color: Colors.white),),
                      )
                    ],
                  ),
                  RaisedButton(
                    child: Text('Connect'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SocialWebView('Instagram',Strings.instagram_link)));

                    },
                    color: Colors.brown,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(45, 20, 45.0, 20),
                child: RaisedButton(
                  child: Text('Skip',style: TextStyle(color: Colors.black),),
                  color: Colors.blueGrey[100],
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => MainPage()));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
