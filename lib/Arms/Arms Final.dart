import 'package:flutter/material.dart';

class aafinal extends StatefulWidget {
  const aafinal({super.key});

  @override
  State<aafinal> createState() => _aafinalState();
}

class _aafinalState extends State<aafinal> {
  //Total Progress

  int total_excersises = 30;
  int completed_excercises = 0;

  void totalprogress(bool isChecked){
    setState(() {
      completed_excercises += isChecked ? 1 : -1;
    });
  }

  double totalprogressval(){
    return completed_excercises/total_excersises;
  }

  //Incline Db press
  bool idp1 = false;
  bool idp2 = false;
  bool idp3 = false;
  int totidp = 3;
  int comidp = 0;

  void inclineprogress(bool isChecked){
    setState(() {
      comidp += isChecked ? 1: -1;
    });
  }

  double idp_progresstracker(){
    return comidp/totidp;
  }


  //Flat DB Press
  bool fdp1 = false;
  bool fdp2 = false;
  bool fdp3 = false;
  int totalfdp = 3;
  int comfdp = 0;

  void flatprogress(bool isChecked){
    setState(() {
      comfdp += isChecked ? 1 : -1;
    });
  }

  double fdp_progresstracker(){
    return comfdp/totalfdp;
  }


  //Decline DB Press
  bool ddp1 = false;
  bool ddp2 = false;
  bool ddp3 = false;
  int totalddp = 3;
  int comddp = 0;

  void declineprogress(bool isChecked){
    setState(() {
      comddp += isChecked ? 1 : -1;
    });
  }

  double ddp_progresstracker(){
    return comddp/totalddp;
  }

  //Peck Deck Flyes
  bool pdf1 = false;
  bool pdf2 = false;
  bool pdf3 = false;
  int totalpdf = 3;
  int compdf = 0;

  void peckdeckprogress(bool isChecked){
    setState(() {
      compdf += isChecked ? 1 : -1;
    });
  }

  double pdf_progresstracker(){
    return compdf/totalpdf;
  }

  //cable chest flyes
  bool ccf1 = false;
  bool ccf2 = false;
  bool ccf3 = false;
  int totalccf = 3;
  int comccf = 0;

  void cablechestprogress(bool isChecked){
    setState(() {
      comccf += isChecked ? 1 : -1;
    });
  }

  double ccf_progresstracker(){
    return comccf/totalccf;
  }

  //Tricep Pushdown
  bool trpd1 = false;
  bool trpd2 = false;
  bool trpd3 = false;
  int tottrpd = 3;
  int comtrpd = 0;

  void trpdprogress(bool isChecked){
    setState(() {
      comtrpd += isChecked ? 1 : -1;
    });
  }

  double trpd_progresstracker(){
    return comtrpd/tottrpd;
  }

  //Tricep Kickbacks
  bool trkb1 = false;
  bool trkb2 = false;
  bool trkb3 = false;
  int tottrkb = 3;
  int comtrkb = 0;

  void trkbprogress(bool isChecked){
    setState(() {
      comtrkb += isChecked ? 1 : -1;
    });
  }

  double trkb_progresstracker(){
    return comtrkb/tottrkb;
  }

  //Wrist Curls
  bool wc1 = false;
  bool wc2 = false;
  bool wc3 = false;
  int totwc = 3;
  int compwc = 0;

  void wcprogress(bool isChecked){
    setState(() {
      compwc += isChecked ? 1 : -1;
    });
  }

  double wc_progresstracker(){
    return compwc/totwc;
  }

  //Reverse Wrist Curls
  bool rwc1 = false;
  bool rwc2 = false;
  bool rwc3 = false;
  int totrwc = 3;
  int comprwc = 0;

  void rwcprogress(bool isChecked){
    setState(() {
      comprwc += isChecked ? 1 : -1;
    });
  }

  double rwc_progresstracker(){
    return comprwc/totrwc;
  }

  //Zottman Curls
  bool zc1 = false;
  bool zc2 = false;
  bool zc3 = false;
  int totzc = 3;
  int compzc = 0;

  void zcprogress(bool isChecked){
    setState(() {
      compzc += isChecked ? 1 : -1;
    });
  }

  double zc_progresstracker(){
    return compzc/totzc;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 226, 105, 114),
        appBar: AppBar(
          title: Text("Arms Workout",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Center(
          child: ListView(
            children: [
              Text("                "),
              SizedBox(
                  height: 200,width: 200,
                  child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(height: 185,width: 185,
                          child: CircularProgressIndicator(
                            value: totalprogressval(),
                            color:Color.fromARGB(255,179 ,136 ,255 ),
                            strokeWidth: 12,backgroundColor: Colors.black26,strokeCap:StrokeCap.round,
                          ),
                        ),
                        Positioned(
                          child: Text(
                            '${(completed_excercises / total_excersises * 100).toInt()}%',
                            style: TextStyle(color: Colors.black, fontSize: 45,fontWeight: FontWeight.w300),),
                        )
                      ] )
              ),
              Text("                        "),
              Text("     Cable Tricep Pushdown 10-12x3",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black,fontSize: 17),),
              LinearProgressIndicator(
                backgroundColor: Colors.black26,
                color: Color.fromARGB(255,179 ,136 ,255 ),
                value: idp_progresstracker(),
                minHeight: 15,
              ),
              CheckboxListTile(title: Text("Set 1",style:
              TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                  value: idp1,
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor: Colors.white,
                  activeColor: Colors.black87,
                  onChanged: (bool? value){
                    setState(() {
                      idp1 = value!;
                      totalprogress(idp1);
                      inclineprogress(idp1);
                    });
                  }),
              CheckboxListTile(title: Text("Set 2",style:
              TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                  value: idp2,
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor: Colors.white,
                  activeColor: Colors.black87,
                  onChanged:(bool? value){
                    setState(() {
                      idp2 = value!;
                      totalprogress(idp2);
                      inclineprogress(idp2);
                    });
                  }
              ),
              CheckboxListTile(title: Text("Set 3",style:
              TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                  value: idp3,
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor: Colors.white,
                  activeColor: Colors.black87,
                  onChanged:(bool? value){
                    setState(() {
                      idp3 = value!;
                      totalprogress(idp3);
                      inclineprogress(idp3);
                    });
                  }
              ),
              //Flat Dumbell Press
              Text("                        "),
              Text("     Overhead Tricep Extensions 10-12x3",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black,fontSize: 17),),
              LinearProgressIndicator(
                backgroundColor: Colors.black26,
                color: Color.fromARGB(255,179 ,136 ,255 ),
                value: fdp_progresstracker(),
                minHeight: 15,
              ),
              CheckboxListTile(title: Text("Set 1",style:
              TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                  value: fdp1,
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor: Colors.white,
                  activeColor: Colors.black87,
                  onChanged: (bool? value){
                    setState(() {
                      fdp1 = value!;
                      totalprogress(fdp1);
                      flatprogress(fdp1);
                    });
                  }),
              CheckboxListTile(title: Text("Set 2",style:
              TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                  value: fdp2,
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor: Colors.white,
                  activeColor: Colors.black87,
                  onChanged: (bool? value){
                    setState(() {
                      fdp2 = value!;
                      totalprogress(fdp2);
                      flatprogress(fdp2);
                    });
                  }),
              CheckboxListTile(title: Text("Set 3",style:
              TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                  value: fdp3,
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor: Colors.white,
                  activeColor: Colors.black87,
                  onChanged: (bool? value){
                    setState(() {
                      fdp3 = value!;
                      totalprogress(fdp3);
                      flatprogress(fdp3);
                    });
                  }),
              Text("                        "),
              Text("     Skull Crushers 10-12 X 3",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black,fontSize: 17),),
              LinearProgressIndicator(
                backgroundColor: Colors.black26,
                color: Color.fromARGB(255,179 ,136 ,255 ),
                value: ddp_progresstracker(),
                minHeight: 15,
              ),
              CheckboxListTile(title: Text("Set 1",style:
              TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                  value: ddp1,
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor: Colors.white,
                  activeColor: Colors.black87,
                  onChanged: (bool? value){
                    setState(() {
                      ddp1 = value!;
                      totalprogress(ddp1);
                      declineprogress(ddp1);
                    });
                  }),
              CheckboxListTile(title: Text("Set 2",style:
              TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                  value: ddp2,
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor: Colors.white,
                  activeColor: Colors.black87,
                  onChanged: (bool? value){
                    setState(() {
                      ddp2 = value!;
                      totalprogress(ddp2);
                      declineprogress(ddp2);
                    });
                  }),
              CheckboxListTile(title: Text("Set 3",style:
              TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                  value: ddp3,
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor: Colors.white,
                  activeColor: Colors.black87,
                  onChanged: (bool? value){
                    setState(() {
                      ddp3 = value!;
                      totalprogress(ddp3);
                      declineprogress(ddp3);
                    });
                  }),
              //Peck Deck flyes
              Text("                        "),
              Text("     Tricep Kickbacks 10-12x3",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black,fontSize: 17),),
              LinearProgressIndicator(
                backgroundColor: Colors.black26,
                color: Color.fromARGB(255,179 ,136 ,255 ),
                value: pdf_progresstracker(),
                minHeight: 15,
              ),
              CheckboxListTile(title: Text("Set 1",style:
              TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                  value: pdf1,
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor: Colors.white,
                  activeColor: Colors.black87,
                  onChanged: (bool? value){
                    setState(() {
                      pdf1 = value!;
                      totalprogress(pdf1);
                      peckdeckprogress(pdf1);
                    });
                  }),
              CheckboxListTile(title: Text("Set 2",style:
              TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                  value: pdf2,
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor: Colors.white,
                  activeColor: Colors.black87,
                  onChanged: (bool? value){
                    setState(() {
                      pdf2 = value!;
                      totalprogress(pdf2);
                      peckdeckprogress(pdf2);
                    });
                  }),
              CheckboxListTile(title: Text("Set 3",style:
              TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                  value: pdf3,
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor: Colors.white,
                  activeColor: Colors.black87,
                  onChanged: (bool? value){
                    setState(() {
                      pdf3 = value!;
                      totalprogress(pdf3);
                      peckdeckprogress(pdf3);
                    });
                  }),
              //Cable Chest Flyes
              Text("                        "),
              Text("     Dumbbell Bicep Curls 10-12x3",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black,fontSize: 17),),
              LinearProgressIndicator(
                backgroundColor: Colors.black26,
                color: Color.fromARGB(255,179 ,136 ,255 ),
                value: ccf_progresstracker(),
                minHeight: 15,
              ),
              CheckboxListTile(title: Text("Set 1",style:
              TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                  value: ccf1,
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor: Colors.white,
                  activeColor: Colors.black87,
                  onChanged: (bool? value){
                    setState(() {
                      ccf1 = value!;
                      totalprogress(ccf1);
                      cablechestprogress(ccf1);
                    });
                  }),
              CheckboxListTile(title: Text("Set 2",style:
              TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                  value: ccf2,
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor: Colors.white,
                  activeColor: Colors.black87,
                  onChanged: (bool? value){
                    setState(() {
                      ccf2 = value!;
                      totalprogress(ccf2);
                      cablechestprogress(ccf2);
                    });
                  }),
              CheckboxListTile(title: Text("Set 3",style:
              TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                  value: ccf3,
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor: Colors.white,
                  activeColor: Colors.black87,
                  onChanged: (bool? value){
                    setState(() {
                      ccf3 = value!;
                      totalprogress(ccf3);
                      cablechestprogress(ccf3);
                    });
                  }),
              //Tricep Pushdown
              Text("                        "),
              Text("     Cable Bicep Curls 10-12x3",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black,fontSize: 17),),
              LinearProgressIndicator(
                backgroundColor: Colors.black26,
                color: Color.fromARGB(255,179 ,136 ,255 ),
                value: trpd_progresstracker(),
                minHeight: 15,
              ),
              CheckboxListTile(title: Text("Set 1",style:
              TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                  value: trpd1,
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor: Colors.white,
                  activeColor: Colors.black87,
                  onChanged: (bool? value){
                    setState(() {
                      trpd1 = value!;
                      totalprogress(trpd1);
                      trpdprogress(trpd1);
                    });
                  }),
              CheckboxListTile(title: Text("Set 2",style:
              TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                  value: trpd2,
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor: Colors.white,
                  activeColor: Colors.black87,
                  onChanged: (bool? value){
                    setState(() {
                      trpd2 = value!;
                      totalprogress(trpd2);
                      trpdprogress(trpd2);
                    });
                  }),
              CheckboxListTile(title: Text("Set 3",style:
              TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                  value: trpd3,
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor: Colors.white,
                  activeColor: Colors.black87,
                  onChanged: (bool? value){
                    setState(() {
                      trpd3 = value!;
                      totalprogress(trpd3);
                      trpdprogress(trpd3);
                    });
                  }),
              //Tricep Kickbacks
              Text("                        "),
              Text("     Hammer Curls 10-12x3",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black,fontSize: 17),),
              LinearProgressIndicator(
                backgroundColor: Colors.black26,
                color: Color.fromARGB(255,179 ,136 ,255 ),
                value: trkb_progresstracker(),
                minHeight: 15,
              ),
              CheckboxListTile(title: Text("Set 1",style:
              TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                  value: trkb1,
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor: Colors.white,
                  activeColor: Colors.black87,
                  onChanged: (bool? value){
                    setState(() {
                      trkb1 = value!;
                      totalprogress(trkb1);
                      trkbprogress(trkb1);
                    });
                  }),
              CheckboxListTile(title: Text("Set 2",style:
              TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                  value: trkb2,
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor: Colors.white,
                  activeColor: Colors.black87,
                  onChanged: (bool? value){
                    setState(() {
                      trkb2 = value!;
                      totalprogress(trkb2);
                      trkbprogress(trkb2);
                    });
                  }),
              CheckboxListTile(title: Text("Set 3",style:
              TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                  value: trkb3,
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor: Colors.white,
                  activeColor: Colors.black87,
                  onChanged: (bool? value){
                    setState(() {
                      trkb3 = value!;
                      totalprogress(trkb3);
                      trkbprogress(trkb3);
                    });
                  }),              Text("                        "),
              Text("     Wrist Curls 10-12x3",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black,fontSize: 17),),
              LinearProgressIndicator(
                backgroundColor: Colors.black26,
                color: Color.fromARGB(255,179 ,136 ,255 ),
                value: wc_progresstracker(),
                minHeight: 15,
              ),
              CheckboxListTile(title: Text("Set 1",style:
              TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                  value: wc1,
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor: Colors.white,
                  activeColor: Colors.black87,
                  onChanged: (bool? value){
                    setState(() {
                      wc1 = value!;
                      totalprogress(wc1);
                      wcprogress(wc1);
                    });
                  }),
              CheckboxListTile(title: Text("Set 2",style:
              TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                  value: wc2,
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor: Colors.white,
                  activeColor: Colors.black87,
                  onChanged: (bool? value){
                    setState(() {
                      wc2 = value!;
                      totalprogress(wc2);
                      wcprogress(wc2);
                    });
                  }),
              CheckboxListTile(title: Text("Set 3",style:
              TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                  value: wc3,
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor: Colors.white,
                  activeColor: Colors.black87,
                  onChanged: (bool? value){
                    setState(() {
                      wc3 = value!;
                      totalprogress(wc3);
                      wcprogress(wc3);
                    });
                  }),              Text("                        "),
              Text("     Reverse Wrist Curls Curls 10-12x3",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black,fontSize: 17),),
              LinearProgressIndicator(
                backgroundColor: Colors.black26,
                color: Color.fromARGB(255,179 ,136 ,255 ),
                value: rwc_progresstracker(),
                minHeight: 15,
              ),
              CheckboxListTile(title: Text("Set 1",style:
              TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                  value: rwc1,
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor: Colors.white,
                  activeColor: Colors.black87,
                  onChanged: (bool? value){
                    setState(() {
                      rwc1 = value!;
                      totalprogress(rwc1);
                      rwcprogress(rwc1);
                    });
                  }),
              CheckboxListTile(title: Text("Set 2",style:
              TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                  value: rwc2,
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor: Colors.white,
                  activeColor: Colors.black87,
                  onChanged: (bool? value){
                    setState(() {
                      rwc2 = value!;
                      totalprogress(rwc2);
                      rwcprogress(rwc2);
                    });
                  }),
              CheckboxListTile(title: Text("Set 3",style:
              TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                  value: rwc3,
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor: Colors.white,
                  activeColor: Colors.black87,
                  onChanged: (bool? value){
                    setState(() {
                      rwc3 = value!;
                      totalprogress(rwc3);
                      rwcprogress(rwc3);
                    });
                  }),              Text("                        "),
              Text("     Zottman Curls 10-12x3",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black,fontSize: 17),),
              LinearProgressIndicator(
                backgroundColor: Colors.black26,
                color: Color.fromARGB(255,179 ,136 ,255 ),
                value: zc_progresstracker(),
                minHeight: 15,
              ),
              CheckboxListTile(title: Text("Set 1",style:
              TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                  value: zc1,
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor: Colors.white,
                  activeColor: Colors.black87,
                  onChanged: (bool? value){
                    setState(() {
                      zc1 = value!;
                      totalprogress(zc1);
                      zcprogress(zc1);
                    });
                  }),
              CheckboxListTile(title: Text("Set 2",style:
              TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                  value: zc2,
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor: Colors.white,
                  activeColor: Colors.black87,
                  onChanged: (bool? value){
                    setState(() {
                      zc2 = value!;
                      totalprogress(zc2);
                      zcprogress(zc2);
                    });
                  }),
              CheckboxListTile(title: Text("Set 3",style:
              TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                  value: zc3,
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor: Colors.white,
                  activeColor: Colors.black87,
                  onChanged: (bool? value){
                    setState(() {
                      zc3 = value!;
                      totalprogress(zc3);
                      zcprogress(zc3);
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
