import 'package:flutter/material.dart';
import 'package:marquee_flutter/marquee_flutter.dart';
import 'package:one_africa_global/color/hex_color.dart';
import 'package:http/http.dart' as http;

class MailingScreen extends StatelessWidget {
  TextEditingController emailField= TextEditingController();
  static final URL='http://api.oneafricaglobal.com/oag/subscribe.php';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
          'Join OAG Family',
       //   textAlign: TextAlign.start,
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,

    //    iconTheme: IconThemeData(color: Colors.indigo[900]),
     //   elevation: 0.1,
        backgroundColor: FlutterColor("#071B42"),
      ),
     /* drawer: Drawer(
        child: ListView(),
      ),*/
      body:
      Center(child:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(70, 30, 70, 10),
              child: Image.asset('assets/logo2.png',height: 120,),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(32, 0, 32, 10),
              child: Text(
                'Sign up and be the first to know Mailing the latest news in the One Africa Space!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email:',
                ),
                keyboardType: TextInputType.emailAddress,
                controller: emailField,
              ),
            ),
            
            RaisedButton(
              child: Text(
                'Submit',
                style: TextStyle(color: Colors.white),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {
                print(emailField.text);
                _subscribeEmail();
                emailField.clear();
              },
              color: FlutterColor("#071B42"),
            ),
          /*  Container(
              height: 50,
              width: 500,
              color: Colors.indigo[900],
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child:
                FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                  'One Africa Music Fest Returns NYC, London & Dubai',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              )),
            ),*/

            SizedBox(
              height: 40,
              child: Container(
                alignment: Alignment.center,
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
                  padding: const EdgeInsets.all(10.0),
                      child: new MarqueeWidget(
                    text: "One Africa Music Fest Returns NYC, London & Dubai",
                    textStyle: new TextStyle(fontSize: 14.0,color: Colors.white),
                    scrollAxis: Axis.horizontal
                  //     ),
                )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _subscribeEmail() async {
    var response = await http.post(URL,body:{'emailAddress':emailField.text});
    print("Response status: ${response.statusCode}");
    print("Response body: ${response.body}");
  }

}
