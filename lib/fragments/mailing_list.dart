import 'package:easy_dialog/easy_dialog.dart';
import 'package:flutter/material.dart';
import 'package:marquee_flutter/marquee_flutter.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:one_africa_global/color/hex_color.dart';
import 'package:http/http.dart' as http;

class MailingScreen extends StatefulWidget {
  static final URL='http://api.oneafricaglobal.com/oag/subscribe.php';

  @override
  _MailingScreenState createState() => _MailingScreenState();
}

class _MailingScreenState extends State<MailingScreen> {
  TextEditingController emailField= TextEditingController();

  bool _saving = false;

  GlobalKey _globalKey = GlobalKey();

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
      body:ModalProgressHUD(
      child:Center(child:
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
                setState(() {
                  _saving=true;
                });
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
        inAsyncCall: _saving,
        opacity: 0.5,
        progressIndicator: CircularProgressIndicator(),
    )

    );
  }

  _subscribeEmail() async {
    var response = await http.post(MailingScreen.URL,body:{'emailAddress':emailField.text});
    print("Response status: ${response.statusCode}");
    print("Response body: ${response.body}");
    if(response.statusCode==200){
      setState(() {
        _saving=false;
        showSuccessDialog();
    //    _isSuccessful=true;


      });
    }
    else if(response.statusCode < 200 || response.statusCode > 300){
      setState(() {
        _saving=false;
       showFailureDialog();
        //    _isSuccessful=true;


      });

    }
  }
  showSuccessDialog(){
    EasyDialog(
        closeButton: false,
        cornerRadius: 10.0,
        fogOpacity: 0.1,
        width: 280,
        height: 180,
        title: Text(
          "Email Subscription Successful",
          style: TextStyle(fontWeight: FontWeight.bold),
          textScaleFactor: 1.2,
        ),
        descriptionPadding:
        EdgeInsets.only(left: 17.5, right: 17.5, bottom: 15.0),
        /*description: Text(
          "This is a custom dihelps you easily create basic or custom dialogs.",
          textScaleFactor: 1.1,
          textAlign: TextAlign.center,
        ),*/
        /*topImage: NetworkImage(
            "https://raw.githubusercontent.com/ricardonior29/easy_dialog/master/example/assets/topImageblack.png"),
        */
        topImage: AssetImage('assets/success.png'),
        contentPadding:
        EdgeInsets.only(top: 12.0), // Needed for the button design
        contentList: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0))),
            child: FlatButton(
              onPressed: () {
                Navigator.of(context).pop();},
              child: Text("Okay",
                textScaleFactor: 1.3,
              ),),
          ),
        ]).show(context);
    /*showDialog(
        context: context,
        builder: (BuildContext context) {
          return RichAlertDialog(
            alertTitle: richTitle("Success"),
            alertSubtitle: richSubtitle("Email Subscription successful"),
            alertType: RichAlertType.SUCCESS,
            actions: <Widget>[
              FlatButton(
                child: Text("OK"),
                onPressed: (){Navigator.pop(context);},
              ),
            ],
          );
        });*/
  }

  showFailureDialog(){
    EasyDialog(
        closeButton: false,
        cornerRadius: 10.0,
        fogOpacity: 0.1,
        width: 280,
        height: 200,
        title: Text(
          "An error occured",
          style: TextStyle(fontWeight: FontWeight.bold),
          textScaleFactor: 1.2,
        ),
        descriptionPadding:
        EdgeInsets.only(left: 17.5, right: 17.5, bottom: 15.0),
        description: Text(
          "Please try again!!!",
          textScaleFactor: 1.1,
          textAlign: TextAlign.center,
        ),
        topImage: AssetImage('assets/error.png'),
        contentPadding:
        EdgeInsets.only(top: 12.0), // Needed for the button design
        contentList: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0))),
            child: FlatButton(
              onPressed: () {
                Navigator.of(context).pop();},
              child: Text("Okay",
                textScaleFactor: 1.3,
              ),),
          ),
        ]).show(context);
    /* showDialog(
        context: context,
        builder: (BuildContext context) {
          return RichAlertDialog(
            alertTitle: richTitle("Not Successful"),
            alertSubtitle: richSubtitle("Please try again!!!"),
            alertType: RichAlertType.ERROR,
            actions: <Widget>[
              FlatButton(
                child: Text("OK"),
                onPressed: (){Navigator.pop(context);},
              ),
            ],
          );
        }
    );*/
  }
}
