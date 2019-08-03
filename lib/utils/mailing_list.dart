class MailingList{
  String _emailAddress;
  MailingList(this._emailAddress);

  MailingList.map(dynamic obj){
    this._emailAddress=obj["emailaddress"];
  }

  String get emailAddress => _emailAddress;

  Map<String, dynamic> toMap(){
    var map = new Map<String,dynamic>();
    map["emailaddress"]=_emailAddress;
    return map;
  }
}