import 'package:flutter/material.dart';

class ct2 extends StatefulWidget {
  const ct2({super.key});

  @override
  State<ct2> createState() => _ct2State();
}

class _ct2State extends State<ct2> {

//incline dumbell press
  bool idp1 = false;
  bool idp2 = false;
  bool idp3 = false;
//flat dumbell press
  bool fdp1 = false;
  bool fdp2 = false;
  bool fdp3 = false;
//decline dumbell press
  bool ddp1 = false;
  bool ddp2 = false;
  bool ddp3 = false;
//peck deck flyes
  bool pdf1 = false;
  bool pdf2 = false;
  bool pdf3 = false;
//Cable Chest Flyes
  bool ccf1 = false;
  bool ccf2 = false;
  bool ccf3 = false;
//Tricep Pushdown
  bool tpd1 = false;
  bool tpd2 = false;
  bool tpd3 = false;
//Tricep KickBacks
  bool tck1 =false;
  bool tck2 =false;
  bool tck3 =false;

  int totalexcs = 21;
  int compexcp = 0;

//incline dumbell press
  int totidp = 3;
  int comidp = 0;

//flat dumbell press
  int totfdp = 3;
  int comfdp = 0;

//decline dumbell press
  int totddp = 3;
  int comddp = 0;

//Peck deck flys
  int totpdf = 3;
  int compdf = 0;

//cable chest flys
  int totccf = 3;
  int comccf = 0;

//Tricep pushdown
  int tottpd = 3;
  int comtpd = 0;

//Tricep Kickback
  int tottkb = 3;
  int comtkb = 0;

  void updateProgress(bool isChecked){
    setState(() {
      compexcp += isChecked ? 1 : -1;
    });
  }

  void updateprogidp(bool isChecked){
    setState(() {
      comidp += isChecked ? 1 : -1;
    });
  }

  double calcprogress(){
    return compexcp/totalexcs;
  }

  //Incline db press
  double calcprogidp(){
    return comidp/totidp;
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    color: Color.fromARGB(255, 230, 90, 0),
        home: Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 105, 114),
        appBar:AppBar(
          title: Text("Chest Triceps Workout",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),
          centerTitle:true,
          backgroundColor: Colors.black,
        ),
        body: Center(
            child: Column(
              children: [
                  Text("             "),
                SizedBox(height:200,width:200,
                  child:Stack(
                  alignment: Alignment.center,
                  children: [
                  Container( height:185 ,width: 185,
                    child:CircularProgressIndicator(value: calcprogress(),
                    color:Color.fromARGB(255,179 ,136 ,255 ),
                    strokeWidth: 12,backgroundColor:Colors.black26,strokeCap: StrokeCap.round,
                    ),
                  ),
                  Positioned(
                    child: Text('${(compexcp / totalexcs * 100).toInt()}%',
                    style: TextStyle(color: Colors.black, fontSize: 45,fontWeight: FontWeight.w300),),
                  ),
                  ],
                ),
            ),
            //Incline DB Press
            Text("Incline Dumbell Press 10-12 X 3*",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),),
            LinearProgressIndicator(
              backgroundColor: Colors.black26,
              value: calcprogidp(),
              minHeight: 15,
              color: Color.fromARGB(255,179 ,136 ,255 ),
            ),

            CheckboxListTile( title:Text("Incline Dumbbell Press Set 1",style: TextStyle(fontWeight: FontWeight.w700),),
              controlAffinity: ListTileControlAffinity.leading,
              checkColor: Colors.white,
              activeColor: Colors.black87,
              value: idp1, onChanged:(bool? value){
              setState(() {
                idp1 = value!;
                updateprogidp(idp1);
                updateProgress(idp1);
              });
            }),
                CheckboxListTile( title:Text("Incline Dumbbell Press Set 2",style: TextStyle(fontWeight: FontWeight.w700),),
              controlAffinity: ListTileControlAffinity.leading,
                    checkColor: Colors.white,
                    activeColor: Colors.black87,
              value: idp2, onChanged:(bool? value){
              setState(() {
                idp2 = value!;
                updateprogidp(idp2);
                updateProgress(idp2);
              });
            }),
                CheckboxListTile( title:Text("Incline Dumbbell Press Set 3",style: TextStyle(fontWeight: FontWeight.w700),),
              controlAffinity: ListTileControlAffinity.leading,
                    checkColor: Colors.white,
                    activeColor: Colors.black87,
              value: idp3, onChanged:(bool? value){
              setState(() {
                idp3 = value!;
                updateprogidp(idp3);
                updateProgress(idp3);
              });

              //Flat Db Press
    Text("Incline Dumbell Press 10-12 X 3*",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),),
    LinearProgressIndicator(
    backgroundColor: Colors.black26,
    value: calcprogidp(),
    minHeight: 15,
    color: Color.fromARGB(255,179 ,136 ,255 ),
    ),
    CheckboxListTile( title:Text("Incline Dumbbell Press Set 1",style: TextStyle(fontWeight: FontWeight.w700),),
    controlAffinity: ListTileControlAffinity.leading,
    checkColor: Colors.white,
    activeColor: Colors.black87,
    value: idp1, onChanged:(bool? value){
    setState(() {
    idp1 = value!;
    updateprogidp(idp1);
    updateProgress(idp1);
    });
    }),
    CheckboxListTile( title:Text("Incline Dumbbell Press Set 2",style: TextStyle(fontWeight: FontWeight.w700),),
    controlAffinity: ListTileControlAffinity.leading,
    checkColor: Colors.white,
    activeColor: Colors.black87,
    value: idp2, onChanged:(bool? value){
    setState(() {
    idp2 = value!;
    updateprogidp(idp2);
    updateProgress(idp2);
    });
    }
    ),
    CheckboxListTile( title:Text("Incline Dumbbell Press Set 3",style: TextStyle(fontWeight: FontWeight.w700),),
    controlAffinity: ListTileControlAffinity.leading,
    checkColor: Colors.white,
    activeColor: Colors.black87,
    value: idp3, onChanged:(bool? value){
    setState(() {
    idp3 = value!;
    updateprogidp(idp3);
              updateProgress(idp3);
            });
            }
            ),
    )

          ]),
       )
     )
   );
  }
}
