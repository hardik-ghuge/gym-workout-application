import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

void main() => runApp(ct());

class ct extends StatefulWidget{
  @override
  State<ct> createState() => _ctState();

}

class _ctState extends State<ct> {
  bool icdp = false;
  bool fdp = false;
  bool ddp = false;
  bool pdf = false;
  bool ccf = false;
  bool trpd = false;
  bool kkbk = false;

  int totalexcs = 7;
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
              CheckboxListTile(title:Text("Incline Dumbbell Press 10-12x3",style: TextStyle(fontWeight: FontWeight.w500),),checkColor: Colors.white,activeColor: Colors.black87,
                controlAffinity:ListTileControlAffinity.leading,
                value: icdp,
                onChanged: (bool? value) { setState(() {
                icdp = value!;
                updateProgress(icdp);
              }); },),
              CheckboxListTile(title:Text("Flat Dumbbell Press 10-12x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: fdp,
                onChanged: (bool? value) { setState(() {
                fdp = value!;
                updateProgress(fdp);
              }); },),
              CheckboxListTile(title:Text("Decline Dumbbell Press 10-12x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: ddp,
                onChanged: (bool? value) { setState(() {
                ddp = value!;
                updateProgress(ddp);
              }); },),
              CheckboxListTile(title:Text("Peck Deck Flyes 10-12x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: pdf,
                onChanged: (bool? value) { setState(() {
                pdf = value!;
                updateProgress(pdf);
              }); },),
              CheckboxListTile(title:Text("Cable Chest Flys 10-12x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: ccf,
                onChanged: (bool? value) { setState(() {
                ccf = value!;
                updateProgress(ccf);
              }); },),
              CheckboxListTile(title:Text("Triceps Push Down 20x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: trpd,
                onChanged: (bool? value) { setState(() {
                trpd = value!;
                updateProgress(trpd);
              }); }, ),
              CheckboxListTile(title:Text("Tricep Kickbacks 20x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: kkbk,
                onChanged: (bool? value) { setState(() {
                kkbk = value!;
                updateProgress(kkbk);
              }); },)
            ],
          ),
        ),
      ),
    );
  }
}