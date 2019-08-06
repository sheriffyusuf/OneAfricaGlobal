import 'package:flutter/material.dart';

//font awesome
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewsLetterScreen extends StatefulWidget {
  @override
  _NewsLetterState createState() => _NewsLetterState();
}

class _NewsLetterState extends State<NewsLetterScreen> {
  TextEditingController emailField= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(32.0),
        children: <Widget>[
          SizedBox(
            height: 30.0,
          ),
          CircleAvatar(
            child: Image.asset('assets/logo.png'),
            backgroundColor: Colors.transparent,
            radius: 48.0,
          ),
          
          SizedBox(
            height: 40,
          ),
          Text(
              'Sign up and be the first to know about the latest news in the One Africa Space!'),
          TextField(),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(15.0),
                child: RaisedButton(
                  child: Text('Submit'),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: RaisedButton(
                child: Text('cancel'),
                onPressed: () {},
              ),
              ),
              
            ],
          )
        ],
      ),
    );
  }
}
