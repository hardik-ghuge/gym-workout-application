import 'package:flutter/material.dart';

void main() => runApp(bb());

class bb extends StatefulWidget{
  @override
  State<bb> createState() => _bbState();

}

class _bbState extends State<bb> {
  bool tbar = false;
  bool bor = false;
  bool ltpd = false;
  bool sr = false;
  bool sacp = false;
  bool dbc = false;
  bool cbc = false;
  bool hbc = false;

  int totalexcs = 8;
  int compexcp = 0;

  void updateProgress(bool isChecked){
    setState(() {
      compexcp += isChecked ? 1 : -1;
    });
  }

  double calcprogress(){
    return compexcp/totalexcs;
  }

  @override
  Widget build (BuildContext context){
    return MaterialApp(
      color: Color.fromARGB(255, 230, 90, 0),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 226, 105, 114),
        appBar:AppBar(
          title: Text("Back Biceps Workout",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),
          centerTitle:true,
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: ListView(
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
              CheckboxListTile(title:Text("T-Bar 10-12x3",style: TextStyle(fontWeight: FontWeight.w500),),checkColor: Colors.white,activeColor: Colors.black87,
                controlAffinity:ListTileControlAffinity.leading,
                value: tbar,
                onChanged: (bool? value) { setState(() {
                  tbar = value!;
                  updateProgress(tbar);
                }); },),
              CheckboxListTile(title:Text("Bent Over Row 10-12x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: bor,
                onChanged: (bool? value) { setState(() {
                  bor = value!;
                  updateProgress(bor);
                }); },),
              CheckboxListTile(title:Text("Lat Pulldown 10-12x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: ltpd,
                onChanged: (bool? value) { setState(() {
                  ltpd = value!;
                  updateProgress(ltpd);
                }); },),
              CheckboxListTile(title:Text("Seated Row 10-12x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: sr,
                onChanged: (bool? value) { setState(() {
                  sr = value!;
                  updateProgress(sr);
                }); },),
              CheckboxListTile(title:Text("Straight Arm Cable Push Down 10-12x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: sacp,
                onChanged: (bool? value) { setState(() {
                  sacp = value!;
                  updateProgress(sacp);
                }); },),
              CheckboxListTile(title:Text("Dumbbell Bicep Curls 10-12x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: dbc,
                onChanged: (bool? value) { setState(() {
                  dbc = value!;
                  updateProgress(dbc);
                }); }, ),
              CheckboxListTile(title:Text("Cable Bicep Curls 10-12x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: cbc,
                onChanged: (bool? value) { setState(() {
                  cbc = value!;
                  updateProgress(cbc);
                }); },),
              CheckboxListTile(title:Text("Hammer Curls 10-12x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: hbc,
                onChanged: (bool? value) { setState(() {
                  hbc = value!;
                  updateProgress(hbc);
                }); },)
            ],
          ),
        ),
      ),
    );
  }
}