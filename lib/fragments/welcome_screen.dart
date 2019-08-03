import 'package:flutter/material.dart';
import 'package:one_africa_global/constants/strings.dart';
import 'package:one_africa_global/utils/welcome_screen_list.dart'
    as welcomeList;
import 'package:one_africa_global/color/hex_color.dart';
import 'package:one_africa_global/fragments/about_screen.dart';
import 'package:one_africa_global/fragments/main_gallery_screen.dart';
import 'package:one_africa_global/fragments/be_a_partner_screen.dart';
import 'package:one_africa_global/fragments/live_stream.dart';
import 'package:one_africa_global/fragments/mailing_list.dart';
import 'package:one_africa_global/webviews/paul_box_office_webview.dart';
import 'package:marquee_flutter/marquee_flutter.dart';

class WelcomeScreen extends StatelessWidget {
  List<Container> _buildGridCards() {
    List<GridItem> gridItems = List<GridItem>();
    gridItems.add(GridItem(Icons.add, Strings.aboutOAG));
    gridItems.add(GridItem(Icons.add, Strings.liveStream));
    gridItems.add(GridItem(Icons.add, Strings.tickets));
    gridItems.add(GridItem(Icons.add, Strings.gallery));
    gridItems.add(GridItem(Icons.add, Strings.mailingList));
    gridItems.add(GridItem(Icons.add, Strings.beAPartner));

    if (gridItems == null || gridItems.isEmpty) {
      return const <Container>[];
    }

    return gridItems.map((gridItems) {
      return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.lightBlue,
                  offset: Offset(0.0, 10.0),
                  blurRadius: 10.0,
                  spreadRadius: 1.0)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //      FlutterLogo(size: 40.0,),
            AspectRatio(
              aspectRatio: 1.8,
              child: FlutterLogo(
                size: 2.0,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[Text(gridItems.title)],
                ),
              ),
            )
          ],
        ),
        // alignment: Alignment.center,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Expanded(
          child: GridView.builder(
          //    physics: new NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 20.0),
              padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 70.0),
              itemCount: welcomeList.list.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                //  splashColor: FlutterColor("#071B42"),
                  onTap: () {
                    switch (index) {
                      case 0:
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AboutScreen()));
                        break;
                      case 1:
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LiveStreamScreen()));
                        break;
                      case 2:
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PauloBoxWebView()));
                        break;
                      case 3:
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainGalleryScreen()));
                        break;
                      case 4:
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MailingScreen()));
                        break;
                      case 5:
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BeAPartnerScreen()));
                        break;
                    }
                  },
                  child: Material(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: 50,
                    decoration: BoxDecoration(
                        //color: Colors.white,
                  //      border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                         /* BoxShadow(
                              color: Colors.lightBlue,
                              offset: Offset(0.0, 10.0),
                              blurRadius: 10.0,
                              spreadRadius: 1.0)*/
                        ]),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            welcomeList.list[index]["icon"],
                            size: 40,
                            color: FlutterColor("#071B42"),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                            child: Text(welcomeList.list[index]["name"]),
                          )
                        ],
                      ),
                    ),
                  ),
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15.0)),
                    elevation: 5.0,
                //    borderRadius: BorderRadius.circular(15.0),
                    shadowColor: Colors.lightBlue
                )
                );
              })),
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
            padding: const EdgeInsets.all(13.0),
            /*child: FittedBox(
                fit: BoxFit.contain,*/
              child: new MarqueeWidget(
                text: "One Africa Music Fest Returns NYC, London & Dubai",
                textStyle: new TextStyle(fontSize: 14.0,color: Colors.white),
                scrollAxis: Axis.horizontal
         //     ),
            )

               /* Text(
                  "One Africa Music Fest Returns NYC, London & Dubai",
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  style: TextStyle(color: Colors.white),
                )*/
            ),




          ),
        ),
     // )
    ]);
  }

/*  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GridView.count(
        crossAxisCount: 2,
       // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 20.0,crossAxisSpacing: 20.0),
        padding: EdgeInsets.all(10.0),
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
        //childAspectRatio: 14.0/14.0,
        //children: _buildGridCards()
      //  itemCount: 6,
         //   mainAxisAlignment: MainAxisAlignment.center,
           // crossAxisAlignment: CrossAxisAlignment.center,
            children: _buildGridCards()
          ),
    );
}*/
}

class GridItem {
  IconData icon;
  String title;

  GridItem(this.icon, this.title);
}

/*
Card(
clipBehavior: Clip.antiAlias,
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: <Widget>[
AspectRatio(
aspectRatio: 18.0 /11.0,
child: FlutterLogo(size: 10,),
),
Expanded(
child: Padding(padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: <Widget>[
Text("Title"),
SizedBox(height: 8.0,),
Text("Secondary Text")
],
),
),
)
],

),
)
],*/
