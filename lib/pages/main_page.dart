import 'package:flutter/material.dart';
import 'package:one_africa_global/fragments/auth_screen.dart';
import 'package:one_africa_global/fragments/be_a_partner_screen.dart';
import 'package:one_africa_global/fragments/settings_screen.dart';
import 'package:one_africa_global/fragments/welcome_screen.dart';
import 'package:one_africa_global/fragments/about_screen.dart';
import 'package:one_africa_global/fragments/main_gallery_screen.dart';
import 'package:one_africa_global/fragments/oamf_main_screen.dart';
import 'package:one_africa_global/fragments/oamf_about_screen.dart';
import 'package:one_africa_global/fragments/paulo_box_office_screen.dart';
import 'package:one_africa_global/fragments/oagf_main_screen.dart';
import 'package:one_africa_global/fragments/oagf_donate_screen.dart';
import 'package:one_africa_global/fragments/upfront_bookings_screen.dart';
import 'package:one_africa_global/color/hex_color.dart';
import 'package:one_africa_global/constants/strings.dart';
import 'package:one_africa_global/fragments/oafc_main_screen.dart';
import 'package:one_africa_global/presentation/my_flutter_app_icons.dart';
import 'package:one_africa_global/fragments/oabc_main_screen.dart';
import 'package:one_africa_global/webviews/help_webview.dart';
import 'package:one_africa_global/webviews/webview_template.dart';

class DrawerItem{
  String title;
  IconData icon;
  DrawerItem(this.title,this.icon);
}

class MainPage extends StatefulWidget{
  final drawerItems = [
    DrawerItem(Strings.discover_oag,Icons.find_in_page),
    DrawerItem(Strings.interswitch,MyFlutterApp.ioamf),
    DrawerItem(Strings.paulo,MyFlutterApp.pobo),
    DrawerItem(Strings.one_africa_football,MyFlutterApp.oafc),
    DrawerItem(Strings.oag_foundation,MyFlutterApp.oagf),
    DrawerItem(Strings.one_africa_beauty,MyFlutterApp.oab),
    DrawerItem(Strings.one_africa_radio,MyFlutterApp.oar),
    DrawerItem(Strings.last_price,MyFlutterApp.lp),
    DrawerItem(Strings.upfront_bookings,MyFlutterApp.upgmc),
    DrawerItem(Strings.help,Icons.help_outline),
    DrawerItem(Strings.settings,Icons.settings)
  ];
    /*DrawerItem("fragment 1",Icons.rss_feed),
    DrawerItem("Be a Partner",Icons.local_airport),
    DrawerItem("fragment 3",Icons.info),
    DrawerItem("One Africa Global Foundation",Icons.add)
  ];
*/
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MainPageState();
  }
}

class MainPageState extends State<MainPage>{
  int _selectedDrawerIndex =0;
  int _currentSelected = 0;
  _getDrawerItemWidget(int position){
    switch(position){
      case 0:
        return new WelcomeScreen();
      case 1:
        return new OAMFScreen();
      case 2:
        return new PauloBoxOffice();
      case 3:
        return new OneAfricaFootballScreen();
      case 4:
        return new OAGFMainScreen();
      case 5:
        return new OABMainScreen();
      case 6:
        return comingSoon();

      case 7:
        return comingSoon();
      case 8:
        /*return new BookingScreen();*/
        return BookingScreen();
      case 9:
        return HelpWebView();
      case 10:
        return SettingScreen();
      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index){
    setState((){
      _selectedDrawerIndex=index;
      Navigator.of(context).pop();
    });

  }

  @override
  Widget build(BuildContext context){
    var drawerOptions = <Widget>[];
    Image image;
    for(var i=0; i< widget.drawerItems.length;i++){
      var d = widget.drawerItems[i];

      switch(i){
        case 0:
          image=Image.asset('assets/oag1.png',);
          break;
        case 1:
          image=Image.asset('assets/ioamf.png');
          break;
        case 2:
          image=Image.asset('assets/pobo.png',height: 40,width: 40);
          break;
        case 3:
          image=Image.asset('assets/oafc.png');
          break;
        case 4:
          image=Image.asset('assets/oagf.png',);
          break;
        case 5:
          image=Image.asset('assets/oab.png',height: 40,width: 40,);
          break;
        case 6:
          image=Image.asset('assets/oar.png',height: 40,width: 40,);
          break;
        case 7:
          image=Image.asset('assets/lp.png');
          break;
        case 8:
          image=Image.asset('assets/upgmc.png',height: 40,width: 40,);
          break;
        case 9:
          image=Image.asset('assets/help.png',height: 35,width: 35,);
          break;
        case 10 :
          image=Image.asset('assets/settings.png',height: 35,width: 35,);
          break;
      }




      drawerOptions.add(
        Container(
          color: _currentSelected == i ? FlutterColor("#2E6AA5") : FlutterColor("#071B42"),          child: new ListTile(
            //leading: Icon(d.icon,color: Colors.white,),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FittedBox(
              fit: BoxFit.contain,
              child:
            image),
          ),
            title: Text(d.title,style: TextStyle(color: Colors.white)),
            selected: i == _selectedDrawerIndex,
            onTap: () {
              setState(() {
                _currentSelected=i;
              });
              _onSelectItem(i);
              },

          ),
        )

      );
      drawerOptions.add(Divider(color: Colors.white,height:1.0));
    }
    return Scaffold(
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Colors.white),
        title: FittedBox(
        fit: BoxFit.contain,
        child: Text(widget.drawerItems[_selectedDrawerIndex].title),)
      ),
      drawer:Theme(
    data: Theme.of(context).copyWith(
    canvasColor: FlutterColor("#071B42"),
      //This will change the drawer background to blue.
    //other styles
    ),
        child: SafeArea(child: Drawer(
        child: new ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            new Container(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/oag1.png',height: 70,),
            ))
            ,
            new Column(children: drawerOptions)

          ],
        ),
      ),

    ),

    ) ,body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
  Widget comingSoon(){
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [FlutterColor("#0f2850"),FlutterColor("#3176b7")]
          )
      ),
      child: Center(
        child: Text("Coming Soon...",style: TextStyle(fontSize: 20.0,color: Colors.white),textDirection: TextDirection.ltr, maxLines: 1,),
      ),
    );
  }
}

