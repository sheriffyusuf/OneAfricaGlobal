class UpFrontBooking{
  String companyName;
  String artistChoice;
  String contactPerson;
  String positionOfContact;
  String phoneNumber;
  String emailAddress;
  String website;

  UpFrontBooking({this.companyName, this.artistChoice, this.contactPerson,
    this.positionOfContact, this.phoneNumber, this.emailAddress, this.website});
  Map<String, dynamic> toJson() =>
      {
        "companyname": companyName,
        "artistchoice":artistChoice,
        "contactperson":contactPerson,
        "positionofcontract":positionOfContact,
        "phonenumber": phoneNumber,
        "email":emailAddress,
        "website":website,
      };


  @override
  String toString() {
    return 'UpFrontBooking{companyName: $companyName, artistChoice: $artistChoice, contactPerson: $contactPerson, positionOfContact: $positionOfContact, phoneNumber: $phoneNumber, emailAddress: $emailAddress, website: $website}';
  }


}