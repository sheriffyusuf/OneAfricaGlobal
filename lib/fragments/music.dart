import 'package:flutter/material.dart';
import 'package:one_africa_global/webviews/webview_template.dart';

class MusicScreen extends StatefulWidget {
  @override
  _MusicScreenState createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Music'),
          centerTitle: true,
        ),
        body: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DisplayPage('Music','https://www.youtube.com/channel/UC1VcNaHhdbLXZD9dfdmxtTA')));

            },
            child: Image.asset('assets/play.png'),
          ),
        ));
  }
}
