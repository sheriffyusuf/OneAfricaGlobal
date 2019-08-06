import 'dart:async';

import 'package:flutter/material.dart';
import 'package:one_africa_global/color/hex_color.dart';
import 'package:one_africa_global/pages/main_page.dart';
import 'package:one_africa_global/fragments/social_connect.dart';
import 'package:http/http.dart' as http;
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:sweet_alert_dialogs/sweet_alert_dialogs.dart';


class AuthScreen extends StatefulWidget {
/*  final Function callback;

  AuthScreen(this.callback);
  AuthScreen();*/
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen>{
  bool _isPressed = false,
      _animatingReveal = false;
  bool _isSuccessful = false;
  int _state = 0;
  double _width = double.infinity;
  Animation _animation;
  GlobalKey _globalKey = GlobalKey();
  AnimationController _controller;
  TextEditingController emailField = TextEditingController();
  static final URL = 'http://api.oneafricaglobal.com/oag/subscribe.php';
  bool _saving = false;



  @override
  dispose() {
    //  _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: ModalProgressHUD(child:
        Container(
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
          child: Stack(
            children: <Widget>[_showBody(context)],
          ),
        )
          , inAsyncCall: _saving,
          opacity: 0.5,
          progressIndicator: CircularProgressIndicator(),
        )
    );
  }

  Widget _showBody(BuildContext context) {
    return new Container(
        padding: EdgeInsets.all(16.0),
        child: new Form(
          /*key: _formKey,*/
          child: new ListView(
            // shrinkWrap: true,
            children: <Widget>[
              _showLogo(),
              _showEmailInput(),
              _showPasswordInput(),
              _showPrimaryButton(context),
              _showSecondaryButton(context),
              // _showErrorMessage(),
            ],
          ),
        ));
  }

  Widget _showLogo() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
      child: new Hero(
        tag: 'hero',
        child: Image.asset('assets/oag1.png', height: 150,),
      ),
    );
  }

  Widget _showEmailInput() {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 80.0, 0.0, 0.0),
        child: Text(
          "Sign Up and be the first to know about the latest news in the One Africa Space",
          textAlign: TextAlign.center, style: TextStyle(color: Colors.white),)
      /*child: new TextFormField(
        maxLines: 1,
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        decoration: new InputDecoration(
            hintText: 'Email',
            icon: new Icon(
              Icons.mail,
              color: Colors.grey,
            )),*/
      /* validator: (value) {
          if (value.isEmpty) {
            setState(() {
              _isLoading = false;
            });
            return 'Email can\'t be empty';
          }
        },
        onSaved: (value) => _email = value,*/
    );
  }

  Widget _showPasswordInput() {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
        child: new TextFormField(
          style: TextStyle(color: Colors.white),
          maxLines: 1,
          controller: emailField,
          obscureText: false,
          autofocus: false,
          textInputAction: TextInputAction.done,
          onFieldSubmitted: (term) {
            print(emailField.text);
            _subscribeEmail();
            emailField.clear();
          },
          decoration: new InputDecoration(
            hintText: 'Email Address',
            hintStyle: TextStyle(color: Colors.white70, fontSize: 14),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.teal
              ),
              /*icon: new Icon(
              Icons.lock,
              color: Colors.grey,
            )*/
            ),
            /*validator: (value) {
          if (value.isEmpty) {
            setState(() {
              _isLoading = false;
            });
            return 'Email can\'t be empty';
          }
        },
        onSaved: (value) => _password = value,*/
          )
          ,
        ));
  }

  Widget _showSecondaryButton(BuildContext context) {
    return new FlatButton(
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => SocialConnectScreen()));
        },
        child: _isSuccessful ?
        new Text('Continue',
            style: new TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
                color: Colors.white)) : new Text('Skip',
            style: new TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
                color: Colors.white))
      /*onPressed: _formMode == FormMode.LOGIN
          ? _changeFormToSignUp
          : _changeFormToLogin*/
    );
  }

  Widget _showPrimaryButton(BuildContext context) {
    return new Padding(
        padding: EdgeInsets.fromLTRB(30.0, 35.0, 30.0, 10.0),
        /* child: PhysicalModel(
           color: Colors.blue,
           elevation: calculateElevation(),
           borderRadius: BorderRadius.circular(25.0),
           child: Container(
             key: _globalKey,
             height: 48.0,
             width: _width,
             child: RaisedButton(
               padding: EdgeInsets.all(0.0),
               color: _state == 2 ? Colors.green : Colors.blue,
               child: buildButtonChild(),
               onPressed: () {},
               onHighlightChanged: (isPressed) {
                 setState(() {
                   _isPressed = isPressed;
                   if (_state == 0) {
                     animateButton();
                   }
                 });
               },
             ),
           )),*/
        child: SizedBox(
          height: 40.0,
          child: new RaisedButton(
            elevation: 5.0,
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
            color: Colors.blue,
            child: new Text('Subscribe',
                style: new TextStyle(fontSize: 20.0, color: Colors.white)),
            onPressed: () {
              print(emailField.text);
              setState(() {
                _saving = true;
              });
              _subscribeEmail();
              emailField.clear();
            },
            //onPressed: _validateAndSubmit,
          ),
        )
    );
  }

  _subscribeEmail() async {
    var response = await http.post(
        URL, body: {'emailAddress': emailField.text});
    print("Response status: ${response.statusCode}");
    print("Response body: ${response.body}");
    if (response.statusCode == 200) {
      setState(() {
        _saving = false;
        showSuccessDialog();
        _isSuccessful = true;
      });
    }
    else if (response.statusCode < 200 || response.statusCode > 300) {
      setState(() {
        _saving = false;
        showFailureDialog();
        //    _isSuccessful=true;


      });
    }

   /* void animateButton() {
      double initialWidth = _globalKey.currentContext.size.width;

      _controller =
          AnimationController(
              duration: Duration(milliseconds: 300), vsync: this);
      _animation = Tween(begin: 0.0, end: 1.0).animate(_controller)
        ..addListener(() {
          setState(() {
            _width = initialWidth - ((initialWidth - 48.0) * _animation.value);
          });
        });
      _controller.forward();

      setState(() {
        _state = 1;
      });

      Timer(Duration(milliseconds: 3300), () {
        setState(() {
          _state = 2;
        });
      });

      *//* Timer(Duration(milliseconds: 3600), () {
      _animatingReveal = true;
     // widget.callback();
    });*//*
    }*/

    Widget buildButtonChild() {
      if (_state == 0) {
        return Text(
          'Login',
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        );
      } else if (_state == 1) {
        return SizedBox(
          height: 36.0,
          width: 36.0,
          child: CircularProgressIndicator(
            value: null,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),
        );
      } else {
        return Icon(Icons.check, color: Colors.white);
      }
    }

    double calculateElevation() {
      if (_animatingReveal) {
        return 0.0;
      } else {
        return _isPressed ? 6.0 : 4.0;
      }
    }

    void reset() {
      _width = double.infinity;
      _animatingReveal = false;
      _state = 0;
    }
  }
  showSuccessDialog(){
    showDialog(
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
        });
  }

  showFailureDialog(){
    showDialog(
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
    );
  }
}
