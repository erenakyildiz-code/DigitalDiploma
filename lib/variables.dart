import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "dart:core";
class classInfo{
  final String className;
  final double average;
  const classInfo(this.className,this.average);

}
class tapuObject{

  final String type;
  final String propertyName;
  final String propertyId;
  final String issuer; // can be any university.
  final String holder; // can be Master, bachelor etc.
  final double sellPrice;
  final DateTime sellTime;
  final String Xcoordinate;
  final String Ycoordinate;


  const tapuObject(this.type, this.propertyName, this.propertyId,this.issuer,this.holder, this.sellPrice, this.sellTime, this.Xcoordinate,this.Ycoordinate);


}

class carCredential{

  final String type;
  final String model;
  final String brand;
  final String color;
  final DateTime manufacturingDate;
  const carCredential(this.type,this.color,this.model,this.brand,this.manufacturingDate);


}


class cardCredential{

  final String type;
  final String cardType;
  final String brand;
  final String securityCode;
  final String name;
  final String surname;
  final String number;
  final DateTime expirationDate;
  const cardCredential(this.type,this.cardType,this.brand,this.securityCode,this.name,this.number,this.expirationDate,this.surname);


}


class DiplomaObject{

  final String type;
  final String university; // can be any university.
  final String diplomaType; // can be Master, bachelor etc.
  final double average;
  final DateTime startDate;
  final DateTime endDate;
  final String faculty;
  final String department;
  final List<classInfo> gradingInfo;
  const DiplomaObject(this.type,this.university,this.diplomaType, this.average, this.startDate, this.endDate,this.faculty,this.department,this.gradingInfo);

}

class connectionObject{
  final String connectionState;
  final String didOfOtherParty;
  final IconData stateIcon;
  final String communicationState;
  const connectionObject(this.connectionState,this.didOfOtherParty,this.stateIcon,this.communicationState);



}



String DID = "2ETaPWLMDn43mDER6qLjGZ";
TextStyle font(Color color_, FontWeight weight_, double size_ ){
  return GoogleFonts.mPlus1Code(color: color_, fontWeight: weight_ ,fontSize: size_);
}

final List<String> entries = <String>['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H' ,'I', 'J', 'K'];
final List<int> colorCodes = <int>[500,100];
final List<dynamic> diplomas = [DiplomaObject("Diploma","Sabanc?? ??niversitesi", "Lisans diplomas??", 3.2, DateTime.utc(2018, 1, 13), DateTime.utc(2023, 6, 15), "M??hendislik ve do??a bilimleri", "Bilgisayar bilimleri ve m??hendisli??i",
    [classInfo("Blockchain g??venli??i",3.4),classInfo("Sanat", 3.2),classInfo("Termodinamik", 2.1),classInfo("Ortaya kar??????k fizik", 4),classInfo("Matematik",2.4), classInfo("test", 2),classInfo("test2", 2.3)]
    ),tapuObject("tapu","Apartman dairesi" ,"15", "issuer", "holder", 123, DateTime.now(), "0", "0"),carCredential("araba", "K??rm??z??", "??biza", "Seat", DateTime.utc(2015,3,3)),
  cardCredential("creditCard","credit card", "Mastercard","012","Eren","1234123412341234",DateTime.now(), "Aky??ld??z")
];

final List<connectionObject> connectionStates = [connectionObject("Ba??l??", "a10929203102012", Icons.group_outlined,"Ba??lant??"),connectionObject("Ba??l??", "a10929203102012", Icons.group_outlined,"Ba??lant??"),connectionObject("Ba??l??", "a10929203102012", Icons.group_outlined,"Ba??lant??"),connectionObject("Ba??l??", "a10929203102012", Icons.group_outlined,"Ba??lant??"),connectionObject("Ba??l??", "a10929203102012", Icons.group_outlined,"Ba??lant??"),connectionObject("Ba??l??", "a10929203102012", Icons.group_outlined,"Ba??lant??"),connectionObject("Ba??l??", "a10929203102012", Icons.group_outlined,"Ba??lant??"),connectionObject("Ba??lant?? iste??i at??ld??", "didOfOtherParty", Icons.compare_arrows_outlined,"Ba??lant??"),connectionObject("Kan??t iste??i geldi", "SomeDidWillBeHere", Icons.description, "Do??rulama"),connectionObject("Kan??t g??nderildi", "didOfOtherParty1", Icons.verified_outlined,"Do??rulama")];