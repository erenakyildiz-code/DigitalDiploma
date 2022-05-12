import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "variables.dart" as variables;


class proof extends StatefulWidget {
  final int proofID;
  const proof({Key? key, required this.proofID}) : super(key: key);

  @override
  State<proof> createState() => _proof();
}

class _proof extends State<proof> {


  @override
  Widget build(BuildContext context) {
    TextEditingController userInput = TextEditingController();
    int credentialID = widget.proofID;
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

      body: SingleChildScrollView(

        child: Column(


          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration

                      (
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.indigo,


                    ),
                    child: Column(

                      children: [
                        Text(
                          "Kanıt iç eriği", style: variables.font(Colors.white,FontWeight.w400,20)),
                        SizedBox(height: 20,),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Diploma belgesinden istenilen kanıtlar: ", style: variables.font(Colors.white,FontWeight.w400,15)),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          height: 100,
                          child: ListView.builder(itemCount: variables.diplomas[credentialID].gradingInfo.length,itemBuilder: (BuildContext context, int index){
                           return Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text(variables.diplomas[credentialID].gradingInfo[index].className, style:variables.font(Colors.white,FontWeight.w500,20) ),
                               Text(">=2" , style:  variables.font(Colors.white,FontWeight.w500,20)  ),

                             ],
                           );
                          }),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          child: Text(
                            "İstenilen durum sağlanıyor.", style: variables.font(Colors.white,FontWeight.w500,25),
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
              ],
            ),



            Row(
              children: [
                Expanded(
                  child: Container(padding: EdgeInsets.all(10),
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration

                        (
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.indigo[100],


                      ),
                      child: Column(
                        children: [
                          Text("İstenen ekstra bilgiler:",style: variables.font(Colors.black,FontWeight.w500,20)),
                          TextFormField(
                            controller: userInput,
                            style:  variables.font(Colors.black,FontWeight.w500,20),
                            decoration: InputDecoration(
                              focusColor: Colors.white,
                              //add prefix icon



                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),

                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                const BorderSide(color: Colors.blue, width: 1.0),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              fillColor: Colors.grey,

                              hintText: "İsim",

                              //make hint text
                              hintStyle: variables.font(Colors.black,FontWeight.w500,20),

                              //create lable
                              labelText: 'İsim',
                              //lable style
                              labelStyle: variables.font(Colors.black,FontWeight.w500,20),
                            ),
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            controller: userInput,
                            style:  variables.font(Colors.black,FontWeight.w500,20),
                            decoration: InputDecoration(
                              focusColor: Colors.white,
                              //add prefix icon



                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),

                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                const BorderSide(color: Colors.blue, width: 1.0),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              fillColor: Colors.grey,

                              hintText: "Soyisim",

                              //make hint text
                              hintStyle: variables.font(Colors.black,FontWeight.w500,20),

                              //create lable
                              labelText: 'Soyisim',
                              //lable style
                              labelStyle: variables.font(Colors.black,FontWeight.w500,20),
                            ),
                          ),

                        ],
                      )),
                ),
              ],
            ),
            GestureDetector(
              child: Container(padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration

                  (
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.indigo,


                ),
                child: Text("Gönder",style: variables.font(Colors.white,FontWeight.w500,20),),
              ),
            )
          ],
        ),
      ),

    );
  }
}
