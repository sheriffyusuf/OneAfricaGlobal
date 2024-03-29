import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:one_africa_global/pages/main_page.dart';
import 'package:one_africa_global/splashscreen/splash_screen.dart';
import 'package:one_africa_global/constants/strings.dart';
import 'package:one_africa_global/fragments/auth_screen.dart';
import 'package:one_africa_global/color/hex_color.dart';



Future main() async {
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(  MaterialApp(
    // title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: FlutterColor("#071B42"),
          primarySwatch: white


      ),home:SplashScreen()));
}

/*void main() => runApp(  MaterialApp(
   // title: 'Flutter Demo',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primaryColor: FlutterColor("#071B42"),
        primarySwatch: white


    ),home:SplashScreen()));*/
const MaterialColor white = const MaterialColor(
  0xFFFFFFFF,
  const <int, Color>{
    50: const Color(0xFFFFFFFF),
    100: const Color(0xFFFFFFFF),
    200: const Color(0xFFFFFFFF),
    300: const Color(0xFFFFFFFF),
    400: const Color(0xFFFFFFFF),
    500: const Color(0xFFFFFFFF),
    600: const Color(0xFFFFFFFF),
    700: const Color(0xFFFFFFFF),
    800: const Color(0xFFFFFFFF),
    900: const Color(0xFFFFFFFF),
  },
);
class MyApp extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primaryColor: FlutterColor("#071B42"),
       primarySwatch: white


      ),
      home: AuthScreen(),
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
            title: Text("Drawer App"),
            elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0 ,),
        drawer: Drawer(
          child: Container(
            color: Colors.blue,
            child: ListView(
              padding: EdgeInsets.only(left: 5.0),
              children: <Widget>[
           //     DrawerHeader(child: CircleAvatar(backgroundColor: Colors.red,)),
                UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.amber,
                    child: Text("p"),
                  ),
                  accountName: Text("Sheriffdeen Yusuf")
                ),
                ListTile(
                  leading: Icon(Icons.add),
                  title: Text(Strings.interswitch, style: TextStyle(color: Colors.white),),
                ),
                Divider(color: Colors.white,height: 2.0),
                ListTile(
                  leading: Icon(Icons.add),
                  title: Text(Strings.paulo, style: TextStyle(color: Colors.white),),
                ),
                Divider(color: Colors.white,height: 2.0),
                ListTile(
                  leading: Icon(Icons.add),
                  title: Text(Strings.one_africa_football, style: TextStyle(color: Colors.white),),
                ),
                Divider(color: Colors.white,height: 2.0),
                ListTile(
                  leading: Icon(Icons.add),
                  title: Text(Strings.one_africa_beauty, style: TextStyle(color: Colors.white),),
                ),
                Divider(color: Colors.white,height: 2.0),
                ListTile(
                  leading: Icon(Icons.add),
                  title: Text(Strings.one_africa_radio, style: TextStyle(color: Colors.white),),
                ),
                Divider(color: Colors.white,height: 2.0),
                ListTile(
                  leading: Icon(Icons.add),
                  title: Text(Strings.last_price, style: TextStyle(color: Colors.white),),
                ),
                Divider(color: Colors.white,height: 2.0),
                ListTile(
                  leading: Icon(Icons.add),
                  title: Text(Strings.upfront_bookings, style: TextStyle(color: Colors.white),),
                ),
                Divider(color: Colors.white,height: 2.0)
                ,ListTile(
                  leading: Icon(Icons.help_outline),
                  title: Text(Strings.help,style: TextStyle(color: Colors.white),),

                )
              ],
            ),
          ),
        ),
         body: Center(

        ),
      );
  }

}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
        _counter++;
    });
  }



  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
            title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
