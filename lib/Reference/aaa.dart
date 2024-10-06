import 'package:flutter/material.dart';

void main() => runApp(aaa());

class aaa extends StatefulWidget{
  @override
  State<aaa> createState() => _aaaState();

}

class _aaaState extends State<aaa> {
  bool ctp = false;
  bool ote = false;
  bool skcs = false;
  bool trkb = false;
  bool dbc = false;
  bool cbc = false;
  bool hcs = false;
  bool wcs = false;
  bool rwcs = false;
  bool zcs = false;


  int totalexcs = 10;
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
          title: Text("Arms Workout",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),
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
              CheckboxListTile(title:Text("Cable Tricep Pushdown 10-12x3",style: TextStyle(fontWeight: FontWeight.w500),),checkColor: Colors.white,activeColor: Colors.black87,
                controlAffinity:ListTileControlAffinity.leading,
                value: ctp,
                onChanged: (bool? value) { setState(() {
                  ctp = value!;
                  updateProgress(ctp);
                }); },),
              CheckboxListTile(title:Text("Overhead Tricep Extension 10-12x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: ote,
                onChanged: (bool? value) { setState(() {
                  ote = value!;
                  updateProgress(ote);
                }); },),
              CheckboxListTile(title:Text("Skull Crushers 10-12x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: skcs,
                onChanged: (bool? value) { setState(() {
                  skcs = value!;
                  updateProgress(skcs);
                }); },),
              CheckboxListTile(title:Text("Tricep Kickbacks 10-12x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: trkb,
                onChanged: (bool? value) { setState(() {
                  trkb = value!;
                  updateProgress(trkb);
                }); },),
              CheckboxListTile(title:Text("Dumbell Bicep Curls 10-12x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: dbc,
                onChanged: (bool? value) { setState(() {
                  dbc = value!;
                  updateProgress(dbc);
                }); },),
              CheckboxListTile(title:Text("Cable Bicep Curls 10-12x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: cbc,
                onChanged: (bool? value) { setState(() {
                  cbc = value!;
                  updateProgress(cbc);
                }); }, ),
              CheckboxListTile(title:Text("Hammer Curls 10-12x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: hcs,
                onChanged: (bool? value) { setState(() {
                  hcs = value!;
                  updateProgress(hcs);
                }); }, ),
              CheckboxListTile(title:Text("Wrist Curls 10-12x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: wcs,
                onChanged: (bool? value) { setState(() {
                  wcs = value!;
                  updateProgress(wcs);
                }); }, ),
              CheckboxListTile(title:Text("Reverse Wrist Curls 10-12x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: rwcs,
                onChanged: (bool? value) { setState(() {
                  rwcs = value!;
                  updateProgress(rwcs);
                }); }, ),
              CheckboxListTile(title:Text("Zottman Curls 10-12x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: zcs,
                onChanged: (bool? value) { setState(() {
                  zcs = value!;
                  updateProgress(zcs);
                }); }, ),

            ],
          ),
        ),
      ),
    );
  }
}