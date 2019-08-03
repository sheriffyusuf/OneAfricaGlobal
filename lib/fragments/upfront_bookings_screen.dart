import 'package:flutter/material.dart';
import 'package:one_africa_global/color/hex_color.dart';
import 'package:one_africa_global/presentation/custom_icons_icons.dart';

class BookingScreen extends StatelessWidget{
 /* @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.center,
                width: 50,
                height: 80,
                color: FlutterColor("#071B42"),
                child: Text("Our Talents", style: TextStyle(color: Colors.white),),
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
        Flexible(
            fit: FlexFit.tight,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 15.0, 8.0, 8.0),
              child: Container(
                alignment: Alignment.centerLeft,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color:Colors.blue),
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.lightBlue,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 10.0,
                          spreadRadius: 1.0)
                    ]),
                child: Padding(
                    padding: EdgeInsets.only(left: 40.0),
                    child: Text(
                      "Artists / DJs'",
                    )),
              ),
            )),
        Flexible(
            fit: FlexFit.tight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.centerLeft,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color:Colors.blue),
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.lightBlue,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 10.0,
                          spreadRadius: 1.0)
                    ]),
                child: Padding(
                    padding: EdgeInsets.only(left: 40.0),
                    child: Text(
                      "Actor / Influncers",
                    )),
              ),
            )),
        Flexible(
            fit: FlexFit.tight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.centerLeft,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color:Colors.blue),
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.lightBlue,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 10.0,
                          spreadRadius: 1.0)
                    ]),
                child: Padding(
                    padding: EdgeInsets.only(left: 40.0),
                    child: Text(
                      "Athletes",
                    )),
              ),
            )),
        SizedBox(
          height: 50,
        )
      ],
    );
  }
*/

  static final CREATE_POST_URL = 'http://api.oneafricaglobal.com/oag/upfront.php';
  final TextEditingController tcCompanyName = TextEditingController();
  final TextEditingController tcArtistChoice = TextEditingController();
  final TextEditingController tcContactPerson = TextEditingController();
  final TextEditingController tcPositionOfContact = TextEditingController();
  final TextEditingController tcPhoneNumber = TextEditingController();
  final TextEditingController tcEmailAddress = TextEditingController();
  final TextEditingController tcWebsite = TextEditingController();
  final TextEditingController tcProposal = TextEditingController();



  @override
  Widget build(BuildContext context) {
   return Scaffold(
       body: Padding(
         padding: EdgeInsets.only(left: 10.0,right: 10.0,top: 0.0,bottom: 0.0),
         child: Form(
           child: ListView(
             children: <Widget>[
               Padding(
                   padding: EdgeInsets.all(10.0),
                   child: Icon(CustomIcons.hand_shake,size: 50,)
                 //  FlutterLogo(size: 50.0,),
               ),
               TextFormField(
                 controller: tcCompanyName,
                 decoration: InputDecoration(
                     labelText: 'Company Name'
                 ),
               ),
               SizedBox(height: 5.0,),
               TextFormField(
                 controller: tcArtistChoice,
                 decoration: InputDecoration(
                     labelText: 'Artist Choice'
                 ),
               ),
               SizedBox(height: 5.0,),
               TextFormField(
                 controller: tcContactPerson,
                 decoration: InputDecoration(
                     labelText: 'Contact person'
                 ),
               ),
               SizedBox(height: 5.0,),
               TextFormField(
                 controller: tcPositionOfContact,
                 decoration: InputDecoration(
                     labelText: 'Position of Contact'
                 ),
               ),
               SizedBox(height: 5.0,),
               TextFormField(
                 controller: tcPhoneNumber,
                 decoration: InputDecoration(
                     labelText: 'Phone Number'
                 ),
               ),
               SizedBox(height: 5.0,),
               TextFormField(
                 controller: tcEmailAddress,
                 decoration: InputDecoration(
                     labelText: 'Email'
                 ),
               ),
               SizedBox(height: 5.0,),
               TextFormField(
                 controller: tcWebsite,
                 decoration: InputDecoration(
                     labelText: 'Website'
                 ),
               ),
               SizedBox(height: 5.0,),
              /* TextFormField(
                 controller: tcProposal,
                 decoration: InputDecoration(
                     labelText: 'Proposal'
                 ),
               ),
               SizedBox(height: 5.0,),*/
               RaisedButton(
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                 color: FlutterColor("#071B42"),
                 child: Text('SUBMIT', style: TextStyle(color: Colors.white),),
                 onPressed: () async {
                   /*BeAPartner becomeAPartner= BeAPartner(
                       companyName: tcCompanyName.text,
                       companyAddress: tcCompanyAddress.text,
                       contactPerson: tcContactPerson.text,
                       positionOfContact: tcPositionOfContact.text,
                       phoneNumber: tcPhoneNumber.text,
                       emailAddress: tcEmailAddress.text,
                       website: tcWebsite.text,
                       proposal: tcProposal.text
                   );

                   BeAPartner bap = await createPost(CREATE_POST_URL,body: becomeAPartner.toMap());
                   print(bap);

                   tcCompanyName.clear();
                   tcCompanyAddress.clear();
                   tcContactPerson.clear();
                   tcPositionOfContact.clear();
                   tcPhoneNumber.clear();
                   tcEmailAddress.clear();
                   tcWebsite.clear();
                   tcProposal.clear();
                   // submit the form*/
                 },
               )
             ],
           ),
         ),
       ));
  }
}