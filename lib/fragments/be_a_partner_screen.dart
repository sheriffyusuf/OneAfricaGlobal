import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:one_africa_global/color/hex_color.dart';
import 'package:one_africa_global/models/be_a_partner.dart';
import 'package:one_africa_global/presentation/custom_icons_icons.dart';
import 'package:one_africa_global/utils/http_request.dart';
import 'package:sweet_alert_dialogs/sweet_alert_dialogs.dart';
import 'package:http/http.dart' as http;



class BeAPartnerScreen extends StatefulWidget {


  static final RAND='https://ptsv2.com/t/x02c5-1564789027/post';
//  static final URL='http://api.oneafricaglobal.com/oag/subscribe.php';

  @override
  _BeAPartnerScreenState createState() => _BeAPartnerScreenState();
}

class _BeAPartnerScreenState extends State<BeAPartnerScreen> {
  static final CREATE_POST_URL = 'http://api.oneafricaglobal.com/oag/partner.php';
  final _formKey = GlobalKey<FormState>();
  final _beAPartner=BeAPartner();

  final TextEditingController tcCompanyName = TextEditingController();

  final TextEditingController tcCompanyAddress = TextEditingController();

  final TextEditingController tcContactPerson = TextEditingController();

  final TextEditingController tcPositionOfContact = TextEditingController();

  final TextEditingController tcPhoneNumber = TextEditingController();

  final TextEditingController tcEmailAddress = TextEditingController();

  final TextEditingController tcWebsite = TextEditingController();

  final TextEditingController tcProposal = TextEditingController();
  bool _saving = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
        title: new Text("Be A Partner"),
    ),
    body: ModalProgressHUD(
    child:Padding(
      padding: EdgeInsets.only(left: 10.0,right: 10.0,top: 0.0,bottom: 0.0),
      child: Form(
        key: _formKey,
   //     autovalidate: true,
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
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              onSaved: (val) => _beAPartner.companyName = val
            ),
            SizedBox(height: 5.0,),
            TextFormField(
              controller: tcCompanyAddress,
              decoration: InputDecoration(
                  labelText: 'Company Address'
              ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                onSaved: (val) => _beAPartner.companyAddress = val
            ),
            SizedBox(height: 5.0,),
            TextFormField(
              controller: tcContactPerson,
              decoration: InputDecoration(
                  labelText: 'Contact person'
              ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                onSaved: (val) =>  _beAPartner.contactPerson = val
            ),
            SizedBox(height: 5.0,),
            TextFormField(
              controller: tcPositionOfContact,
              decoration: InputDecoration(
                  labelText: 'Position of Contact'
              ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                onSaved: (val) =>  _beAPartner.positionOfContact = val
            ),
            SizedBox(height: 5.0,),
            TextFormField(
              controller: tcPhoneNumber,
              decoration: InputDecoration(
                  labelText: 'Phone Number'
              ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                onSaved: (val) =>  _beAPartner.phoneNumber = val
            ),
            SizedBox(height: 5.0,),
            TextFormField(
              controller: tcEmailAddress,
              decoration: InputDecoration(
                  labelText: 'Email'
              ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                onSaved: (val) =>  _beAPartner.emailAddress = val
            ),
            SizedBox(height: 5.0,),
            TextFormField(
              controller: tcWebsite,
              decoration: InputDecoration(
                  labelText: 'Website'
              ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                onSaved: (val) =>  _beAPartner.website = val
            ),
            SizedBox(height: 5.0,),
            TextFormField(
              controller: tcProposal,
              decoration: InputDecoration(
                  labelText: 'Proposal'
              ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                onSaved: (val) => _beAPartner.proposal = val
            ),
            SizedBox(height: 5.0,),
            RaisedButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              color: FlutterColor("#071B42"),
              child: Text('SUBMIT', style: TextStyle(color: Colors.white),),
              onPressed: (){
                final form= _formKey.currentState;
                if(form.validate()) {
                  form.save();
                  print(_beAPartner);
                  setState(() {
                    _saving = true;
                  });
                  sub(_beAPartner);

                    tcCompanyName.clear();
                tcCompanyAddress.clear();
                tcContactPerson.clear();
                tcPositionOfContact.clear();
                tcPhoneNumber.clear();
                tcEmailAddress.clear();
                tcWebsite.clear();
                tcProposal.clear();

                }
               // _sub(_beAPartner);

               /* _sub(becomeAPartner);*/



              /*  BeAPartner bap = await createPost(CREATE_POST_URL,body: becomeAPartner.toMap());
                print(bap);
*/
              /*  tcCompanyName.clear();
                tcCompanyAddress.clear();
                tcContactPerson.clear();
                tcPositionOfContact.clear();
                tcPhoneNumber.clear();
                tcEmailAddress.clear();
                tcWebsite.clear();
                tcProposal.clear();*/
                // submit the form
              },
            )
          ],
        ),
      ),
    ), inAsyncCall: _saving,
      opacity: 0.5,
      progressIndicator: CircularProgressIndicator(),
    )
    );
  }

   sub(BeAPartner becomeAPartner) async {
    HttpRequest _util = HttpRequest();
   var response = await http.post(CREATE_POST_URL,body: becomeAPartner.toJson());
    print("Response status: ${response.statusCode}");
    print("Response body: ${response.body}");

    if (response.statusCode == 200) {
      setState(() {
        _saving = false;
        showSuccessDialog();
    //    _isSuccessful = true;
      });
    }
    else if (response.statusCode < 200 || response.statusCode > 300) {
      setState(() {
        _saving = false;
        showFailureDialog();
        //    _isSuccessful=true;


      });
    }
  /* try {
    final response = await _util.post('https://ptsv2.com/t/x02c5-1564789027/post',becomeAPartner.toJson() );
      print("Response status: ${response.body}");
    }
    catch (Exception) {
print(Exception);
    }*/
  }
  showSuccessDialog(){
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return RichAlertDialog(
            alertTitle: richTitle("Success"),
            alertSubtitle: richSubtitle("Request successfully sent."),
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