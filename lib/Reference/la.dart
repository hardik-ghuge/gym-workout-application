import 'package:flutter/material.dart';

void main() => runApp(la());

class la extends StatefulWidget{
  @override
  State<la> createState() => _laState();

}

class _laState extends State<la> {
  bool sts = false;
  bool fs = false;
  bool lpr = false;
  bool lext = false;
  bool hext = false;
  bool crc = false;
  bool rts = false;
  bool lr = false;
  bool plk = false;

  int totalexcs = 9;
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
          title: Text("Leg Abs Workout",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),
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
              CheckboxListTile(title:Text("Squats 10-12x3",style: TextStyle(fontWeight: FontWeight.w500),),checkColor: Colors.white,activeColor: Colors.black87,
                controlAffinity:ListTileControlAffinity.leading,
                value: sts,
                onChanged: (bool? value) { setState(() {
                  sts = value!;
                  updateProgress(sts);
                }); },),
              CheckboxListTile(title:Text("Front Squats 10-12x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: fs,
                onChanged: (bool? value) { setState(() {
                  fs = value!;
                  updateProgress(fs);
                }); },),
              CheckboxListTile(title:Text("Leg Press 10-12x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: lpr,
                onChanged: (bool? value) { setState(() {
                  lpr = value!;
                  updateProgress(lpr);
                }); },),
              CheckboxListTile(title:Text("Leg Extensions 10-12x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: lext,
                onChanged: (bool? value) { setState(() {
                  lext = value!;
                  updateProgress(lext);
                }); },),
              CheckboxListTile(title:Text("Hamstrings Extensions 10-12x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: hext,
                onChanged: (bool? value) { setState(() {
                  hext = value!;
                  updateProgress(hext);
                }); },),
              CheckboxListTile(title:Text("Crunches 20x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: crc,
                onChanged: (bool? value) { setState(() {
                  crc = value!;
                  updateProgress(crc);
                }); }, ),
              CheckboxListTile(title:Text("Russian Twists 20x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: rts,
                onChanged: (bool? value) { setState(() {
                  rts = value!;
                  updateProgress(rts);
                }); },),
              CheckboxListTile(title:Text("Leg Raises 20x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: lr,
                onChanged: (bool? value) { setState(() {
                  lr = value!;
                  updateProgress(lr);
                }); },),
              CheckboxListTile(title:Text("Plank 1 Minute",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: plk,
                onChanged: (bool? value) { setState(() {
                  plk = value!;
                  updateProgress(plk);
                }); },),

            ],
          ),
        ),
      ),
    );
  }
}