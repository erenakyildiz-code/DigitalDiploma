import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "variables.dart" as variables;


class single_credential extends StatefulWidget {
  final int CredentialID;
  const single_credential({Key? key, required this.CredentialID}) : super(key: key);

  @override
  State<single_credential> createState() => _single_credential();
}

class _single_credential extends State<single_credential> {


  @override
  Widget build(BuildContext context) {
    int credentialID = widget.CredentialID;
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(

          icon: Icon(Icons.arrow_back_rounded),
          onPressed: ()=>{ Navigator.pop(context,this)},
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        title: Text("Dijital Diploma V0.1", style: variables.font(Colors.white,FontWeight.w400,25),textAlign: TextAlign.center,),
      ),

      body: Column(

        children: [

          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0, left: 12, right: 12),
              child: Text(variables.diplomas[credentialID].diplomaType, style: variables.font(Colors.black, FontWeight.w700, 25),),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 6.0, left: 12, right: 12),
              child: Text(variables.diplomas[credentialID].university, style: variables.font(Colors.black, FontWeight.w600, 18),),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 6.0, left: 12, right: 12),
              child: Text(variables.diplomas[credentialID].faculty + " fakültesi", style: variables.font(Colors.black, FontWeight.w600, 14),),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 6.0, left: 12, right: 12,bottom: 12.0),
              child: Text(variables.diplomas[credentialID].department + " bölümü", style: variables.font(Colors.black, FontWeight.w600, 14),),
            ),
          ),

          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0, left: 12, right: 12,bottom: 12.0),
              child: Text("Not ortalaması: "+ variables.diplomas[credentialID].average.toString(), style: variables.font(Colors.black, FontWeight.w600, 18),),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10,right: 10),
            decoration: BoxDecoration(

              color: Colors.indigo[100],
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            height: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text("Başlama tarihi",
                          style: variables.font(Colors.black, FontWeight.w500, 15),

                        ),
                        Text( "${variables.diplomas[credentialID].startDate.year}-${variables.diplomas[credentialID].startDate.month}-${variables.diplomas[credentialID].startDate.day}",
                          style: variables.font(Colors.black, FontWeight.w400, 14),)
                      ],
                    ),
                    Column(
                      children: [
                        Text("Bitirme tarihi",
                          style: variables.font(Colors.black, FontWeight.w500, 15),

                        ),
                        Text("${variables.diplomas[credentialID].endDate.year}-${variables.diplomas[credentialID].endDate.month}-${variables.diplomas[credentialID].endDate.day}",
                          style: variables.font(Colors.black, FontWeight.w400, 14),
                        )
                      ],
                    ),

                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              padding: const EdgeInsets.all(8),
              itemCount: variables.diplomas[credentialID].gradingInfo.length,
              itemBuilder: (BuildContext context, int index) {

                  return Card(
                    child: ListTile(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      tileColor: Colors.indigo[variables.colorCodes[index % 2]],
                      style: ListTileStyle.list,

                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(variables.diplomas[credentialID].gradingInfo[index].className, style: (index%2 == 0)? variables.font(Colors.white,FontWeight.w500,20) :variables.font(Colors.black,FontWeight.w500,20) ),
                          Text(variables.diplomas[credentialID].gradingInfo[index].average.toString(), style: (index%2 == 0)? variables.font(Colors.white,FontWeight.w500,20) :variables.font(Colors.black,FontWeight.w500,20) ),

                        ],
                      ),




                    ),
                  );


              },
              separatorBuilder: (BuildContext context, int index) => const Divider(),
            ),
          ),



        ],
      ),

    );
  }
}
