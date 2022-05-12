import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "variables.dart" as variables;
import 'package:digital_diploma_mobile/single_credential.dart';
import "package:digital_diploma_mobile/proof.dart";
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Dijital Diploma';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static TextStyle optionStyle =
      variables.font(Colors.black,FontWeight.w200,20);


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _widgetOptions = <Widget>[
      Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.only(top:20, left:20,right: 20),
            height: 100,
            decoration: BoxDecoration(

              color: Colors.indigo[200],
              borderRadius: BorderRadius.all(Radius.circular(10)),


            ),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Kullanıcı bilgileri",
                  style: variables.font(Colors.black, FontWeight.w700, 20),
                ),
                Container(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("İsim: Eren",style: variables.font(Colors.black, FontWeight.w500, 14),

                    ),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Soyisim: Akyıldız",style: variables.font(Colors.black, FontWeight.w500, 14),

                    ),
                    Text("TC: 10052960610",style: variables.font(Colors.black, FontWeight.w500, 14),

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
              itemCount: variables.diplomas.length,
              itemBuilder: (BuildContext context, int index) {
                if(variables.diplomas[index].type == "Diploma"){
                  return Card(
                    child: ListTile(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      tileColor: Colors.indigo[variables.colorCodes[index % 2]],
                      style: ListTileStyle.list,
                      leading: Container(
                        width: 55,
                        child: Column(
                          children: [
                            Icon(Icons.school_outlined, size: 30,color:  (index%2 == 0)? Colors.white54 : Colors.black54,),
                            Text("Diploma",style:  (index%2 == 0)? variables.font(Colors.white54,FontWeight.w500,12) :variables.font(Colors.black54,FontWeight.w500,12) ,)
                          ],
                        ),
                      ),
                      title: Text(variables.diplomas[index].diplomaType, style: (index%2 == 0)? variables.font(Colors.white,FontWeight.w500,20) :variables.font(Colors.black,FontWeight.w500,20) ),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(padding: const EdgeInsets.all(2),child: Text("Kurum: ${variables.diplomas[index].university}", style: (index%2 == 0)? variables.font(Colors.white,FontWeight.w500,14) :variables.font(Colors.black,FontWeight.w500,14))),
                          Padding(padding: const EdgeInsets.all(2),child: Text("Mezuniyet Tarihi: ${variables.diplomas[index].endDate.year}-${variables.diplomas[index].endDate.month}-${variables.diplomas[index].endDate.day}", style: (index%2 == 0)? variables.font(Colors.white,FontWeight.w500,14) :variables.font(Colors.black,FontWeight.w500,14))),

                        ],
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.notes, color: Colors.black,),
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent, // makes highlight invisible too
                        onPressed: () =>{
                          Navigator.push(context,MaterialPageRoute(builder: (context) => single_credential(CredentialID: index)))
                        },
                      ),



                    ),
                  );
                }
                else if (variables.diplomas[index].type == "tapu"){
                  return Card(
                    child: ListTile(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      tileColor: Colors.indigo[variables.colorCodes[index % 2]],
                      style: ListTileStyle.list,
                      leading: Container(
                        width: 55,
                        child: Column(
                          children: [
                            Icon(Icons.home, size: 30,color:  (index%2 == 0)? Colors.white54 : Colors.black54,),
                            Text("Tapu",style:  (index%2 == 0)? variables.font(Colors.white54,FontWeight.w500,12) :variables.font(Colors.black54,FontWeight.w500,12) ,)
                          ],
                        ),
                      ),
                      title: Text(variables.diplomas[index].propertyName, style: (index%2 == 0)? variables.font(Colors.white,FontWeight.w500,20) :variables.font(Colors.black,FontWeight.w500,20) ),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(padding: const EdgeInsets.all(2),child: Text("Kapı numarası: ${variables.diplomas[index].propertyId}", style: (index%2 == 0)? variables.font(Colors.white,FontWeight.w500,14) :variables.font(Colors.black,FontWeight.w500,14))),
                          Padding(padding: const EdgeInsets.all(2),child: Text("Alım Tarihi: ${variables.diplomas[index].sellTime.year}-${variables.diplomas[index].sellTime.month}-${variables.diplomas[index].sellTime.day}", style: (index%2 == 0)? variables.font(Colors.white,FontWeight.w500,14) :variables.font(Colors.black,FontWeight.w500,14))),

                        ],
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.notes, color: Colors.black,),
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent, // makes highlight invisible too
                        onPressed: () =>{
                          Navigator.push(context,MaterialPageRoute(builder: (context) => single_credential(CredentialID: index)))
                        },
                      ),



                    ),
                  );
                }
                else if(variables.diplomas[index].type == "araba"){
                  return Card(
                    child: ListTile(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      tileColor: Colors.indigo[variables.colorCodes[index % 2]],
                      style: ListTileStyle.list,
                      leading: Container(
                        width: 55,
                        child: Column(
                          children: [
                            Icon(Icons.directions_car, size: 30,color:  (index%2 == 0)? Colors.white54 : Colors.black54,),
                            Text("Otomobil",style:  (index%2 == 0)? variables.font(Colors.white54,FontWeight.w500,12) :variables.font(Colors.black54,FontWeight.w500,12) ,)
                          ],
                        ),
                      ),
                      title: Text( variables.diplomas[index].brand +" "+ variables.diplomas[index].model, style: (index%2 == 0)? variables.font(Colors.white,FontWeight.w500,20) :variables.font(Colors.black,FontWeight.w500,20) ),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(padding: const EdgeInsets.all(2),child: Text("Renk: ${variables.diplomas[index].color}", style: (index%2 == 0)? variables.font(Colors.white,FontWeight.w500,14) :variables.font(Colors.black,FontWeight.w500,14))),
                          Padding(padding: const EdgeInsets.all(2),child: Text("Üretim Tarihi: ${variables.diplomas[index].manufacturingDate.year}-${variables.diplomas[index].manufacturingDate.month}-${variables.diplomas[index].manufacturingDate.day}", style: (index%2 == 0)? variables.font(Colors.white,FontWeight.w500,14) :variables.font(Colors.black,FontWeight.w500,14))),

                        ],
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.notes, color: Colors.black,),
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent, // makes highlight invisible too
                        onPressed: () =>{
                          Navigator.push(context,MaterialPageRoute(builder: (context) => single_credential(CredentialID: index)))
                        },
                      ),



                    ),
                  );
                }
                else{
                  return Card(
                    child: ListTile(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      tileColor: Colors.indigo[variables.colorCodes[index % 2]],
                      style: ListTileStyle.list,
                      leading: Container(
                        width: 55,
                        child: Column(
                          children: [
                            Icon(Icons.credit_card_outlined, size: 30,color:  (index%2 == 0)? Colors.white54 : Colors.black54,),
                            Text("Kart",style:  (index%2 == 0)? variables.font(Colors.white54,FontWeight.w500,12) :variables.font(Colors.black54,FontWeight.w500,12) ,)
                          ],
                        ),
                      ),
                      title: Text( variables.diplomas[index].brand, style: (index%2 == 0)? variables.font(Colors.white,FontWeight.w500,20) :variables.font(Colors.black,FontWeight.w500,20) ),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(padding: const EdgeInsets.all(2),child: Text("Son 4 hanesi: ${variables.diplomas[index].number[0]}${variables.diplomas[index].number[1]}${variables.diplomas[index].number[2]}${variables.diplomas[index].number[3]}", style: (index%2 == 0)? variables.font(Colors.white,FontWeight.w500,14) :variables.font(Colors.black,FontWeight.w500,14))),
                          Padding(padding: const EdgeInsets.all(2),child: Text("Son kullanma tarihi: ${variables.diplomas[index].expirationDate.day}-${variables.diplomas[index].expirationDate.month}-${variables.diplomas[index].expirationDate.year}", style: (index%2 == 0)? variables.font(Colors.white,FontWeight.w500,14) :variables.font(Colors.black,FontWeight.w500,14))),

                        ],
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.notes, color: Colors.black,),
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent, // makes highlight invisible too
                        onPressed: () =>{
                          Navigator.push(context,MaterialPageRoute(builder: (context) => single_credential(CredentialID: index)))
                        },
                      ),



                    ),
                  );
                }

              },
              separatorBuilder: (BuildContext context, int index) => const Divider(),
            ),
          ),
        ],
      ),
      Column(
        children: [GestureDetector(
          onTap: ()=>{

          },
          child: Container(
            height: 40,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.indigoAccent,
            ),
            margin: EdgeInsets.all(10),
            child: Center(
              child: Text(
                "Bu bağlantıyı kapat ve yeni bağlantı oluştur ", style: variables.font(Colors.white, FontWeight.w700, 16),
              ),
            ),
          ),
        ),
          Row(
            children: [
              Expanded(
                child: Container(

                  height: 180,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.indigo[300],

                    borderRadius: BorderRadius.all(Radius.circular(10)),


                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Bağlantı durumu:", style: variables.font(Colors.white, FontWeight.w700, 15),
                      ),

                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Bağlı",style: variables.font(Colors.white, FontWeight.w700, 25)
                            ),
                            Icon(Icons.swap_vert_sharp, size: 40, color: Colors.white,),
                          ],
                        ),
                      ),
                    ],
                  ),

                ),
              ),
              Expanded(
                child: Container(
                  height: 180,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(

                    color: Colors.indigo[300],
                    borderRadius: BorderRadius.all(Radius.circular(10)),


                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Bağlanılan kurum:", style: variables.font(Colors.white, FontWeight.w700, 15),
                      ),
                      Expanded(
                        child: Center(
                          child: Text("Sabancı üniversitesi",style: variables.font(Colors.white, FontWeight.w700, 25),textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),

                ),
              ),
            ],
          ),
          Expanded(child:
          Container(
            height: 400,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.indigo,

            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.info_outline, color:  Colors.white,),
                    Text(" Kurum size Diploma belgesi kanıtı isteği gönderdi.", style: variables.font(Colors.white, FontWeight.w700, 13),),
                  ],
                ),
                SizedBox(height: 20,),
                Text("Kanıtta istenilen bilgiler:", style: variables.font(Colors.white, FontWeight.w700, 20),),
                Text("Üniversite ismi", style: variables.font(Colors.white, FontWeight.w700, 15),),
                Text("Fakülte ismi", style: variables.font(Colors.white, FontWeight.w700, 15),),
                Text("Bölüm ismi", style: variables.font(Colors.white, FontWeight.w700, 15),),
                Expanded(

                  child: Container(
                    height: 50,
                    alignment: Alignment.bottomCenter,
                    child: GestureDetector(
                      onTap: ()=>{
                        Navigator.push(context,MaterialPageRoute(builder: (context) => proof(proofID: 0)))

                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(

                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(10)),

                              ),
                              child: Text(
                                "Kanıt gönder",
                                style: variables.font(Colors.indigoAccent, FontWeight.w700, 20),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

          )
          ),

        ],
      ),

      Text(
        'Index 2: School',
        style: optionStyle,
      ),
    ];
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text("Dijital Diploma V0.1", style: variables.font(Colors.white,FontWeight.w400,25),textAlign: TextAlign.center,),
      ),

      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(

        backgroundColor: Colors.indigo,

        items: const <BottomNavigationBarItem>[

          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            activeIcon: Icon(Icons.account_balance_wallet),
            label: 'Sertifikalar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business_center_outlined),
            activeIcon: Icon(Icons.business_center),
            label: 'Başvurular',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school_outlined),
            activeIcon: Icon(Icons.school),
            label: 'Sertifika Ekle',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        onTap: _onItemTapped,
        selectedLabelStyle: variables.font(Colors.black,FontWeight.w700,12),
        unselectedLabelStyle: variables.font(Colors.black,FontWeight.w700,12),
      ),
    );
  }
}
