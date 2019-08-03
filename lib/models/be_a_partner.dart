class BeAPartner{
   String companyName;
   String companyAddress;
   String contactPerson;
   String positionOfContact;
   String phoneNumber;
   String emailAddress;
   String website;
   String proposal;

  BeAPartner({this.companyName, this.companyAddress, this.contactPerson,
      this.positionOfContact, this.phoneNumber, this.emailAddress, this.website,
      this.proposal});

 /* factory BeAPartner.fromJson(Map<String, dynamic> json){
    return BeAPartner(
        companyName: json['companyname'],
        companyAddress: json['companyaddress'],
        contactPerson: json['contactperson'],
        positionOfContact: json['positionofcontract'],
        phoneNumber: json['phonenumber'],
        emailAddress: json['email'],
        website: json['website'],
        proposal: json['proposal']
    );
  }*/

  Map toMap(){
    var map= new Map<String, dynamic>();
    map["companyname"]= companyName;
    map["companyaddress"]= companyAddress;
    map["contactperson"]=contactPerson;
    map["positionofcontract"]=positionOfContact;
    map["phonenumber"]=phoneNumber;
    map["email"]=emailAddress;
    map["website"]=website;
    map["proposal"]=proposal;
    return map;
  }

  Map<String, dynamic> toJson() =>
      {
        "companyname": companyName,
        "companyaddress":companyAddress,
        "contactperson":contactPerson,
        "positionofcontract":positionOfContact,
        "phonenumber": phoneNumber,
        "email":emailAddress,
        "website":website,
        "proposal":proposal
      };

  @override
  String toString() {
    return 'BeAPartner{companyName: $companyName, companyAddress: $companyAddress, contactPerson: $contactPerson, positionOfContact: $positionOfContact, phoneNumber: $phoneNumber, emailAddress: $emailAddress, website: $website, proposal: $proposal}';
  }


}
/*
class Post {
  final String userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }

  Map toMap() {
    var map = new Map<String, dynamic>();
    map["userId"] = userId;
    map["title"] = title;
    map["body"] = body;

    return map;
  }
}*/
