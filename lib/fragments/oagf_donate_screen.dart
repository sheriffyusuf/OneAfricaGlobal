import 'package:flutter/material.dart';
import 'package:one_africa_global/color/hex_color.dart';

class OAGFDonateScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return ListView(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.center,
                width: 50,
                height: 80,
                color: FlutterColor("#071B42"),
                child: Text("Donate", style: TextStyle(color: Colors.white),),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                width: 50,
                height: 80,
                color: Colors.blue,
                child: Text("About", style: TextStyle(color: Colors.white),),
              ),
            )
          ],
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text("How are you toay",textAlign: TextAlign.left,),
              TextFormField(
                decoration: new InputDecoration(
                    labelText: "Hello",
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
              TextField(
                style: TextStyle(fontSize: 14),

              ),            ],
          ),
        )
      ],
    );
  }
}