import 'dart:async';

import 'package:flutter/material.dart';
import 'package:one_africa_global/fragments/auth_screen.dart';
import 'package:one_africa_global/main.dart';
import 'package:one_africa_global/color/hex_color.dart';

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{

  @override
  void initState() {
    super.initState();
    initData();
   // navigateToHomeScreen();
  /*  new Future.delayed(
        const Duration(seconds: 3),
            () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AuthScreen()),
        ));*/
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
      Container(
     decoration: BoxDecoration(
       gradient: LinearGradient(
         begin: Alignment.centerLeft,
         end: Alignment.centerRight,
         colors: [FlutterColor("#0f2850"),FlutterColor("#3176b7")]
       )
     ),
      child: Center(
        child: Text("...Taking Africa to the world",style: TextStyle(fontSize: 20.0,color: Colors.white),textDirection: TextDirection.ltr, maxLines: 1,),
      ),
    )
    );
  }
  
  Future<Timer> initData() async {
    //await Future.delayed(Duration(seconds: 3));
    return new Timer(Duration(seconds: 3), navigateToHomeScreen);
  }
  
 navigateToHomeScreen() async{
    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => AuthScreen()));
  }
  
}