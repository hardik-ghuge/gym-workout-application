import 'package:flutter/material.dart';

void main() => runApp(sh());

class sh extends StatefulWidget{
  @override
  State<sh> createState() => _shState();

}

class _shState extends State<sh> {
  bool bsp = false;
  bool dsp = false;
  bool frs = false;
  bool ltrs = false;
  bool uprs = false;
  bool rpd = false;
  bool fps = false;


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
          title: Text("Shoulders Workout",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),
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
              CheckboxListTile(title:Text("Barbell Shoulder Presses 10-12x3",style: TextStyle(fontWeight: FontWeight.w500),),checkColor: Colors.white,activeColor: Colors.black87,
                controlAffinity:ListTileControlAffinity.leading,
                value: bsp,
                onChanged: (bool? value) { setState(() {
                  bsp = value!;
                  updateProgress(bsp);
                }); },),
              CheckboxListTile(title:Text("Dumbell Shoulder Presses 10-12x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: dsp,
                onChanged: (bool? value) { setState(() {
                  dsp = value!;
                  updateProgress(dsp);
                }); },),
              CheckboxListTile(title:Text("Front Raises 10-12x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: frs,
                onChanged: (bool? value) { setState(() {
                  frs = value!;
                  updateProgress(frs);
                }); },),
              CheckboxListTile(title:Text("Lateral Raises 10-12x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: ltrs,
                onChanged: (bool? value) { setState(() {
                  ltrs = value!;
                  updateProgress(ltrs);
                }); },),
              CheckboxListTile(title:Text("Upright Rows 10-12x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: uprs,
                onChanged: (bool? value) { setState(() {
                  uprs = value!;
                  updateProgress(uprs);
                }); },),
              CheckboxListTile(title:Text("Reverse Peck Deck 20x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: rpd,
                onChanged: (bool? value) { setState(() {
                  rpd = value!;
                  updateProgress(rpd);
                }); }, ),
              CheckboxListTile(title:Text("Face Pulls 20x3",style: TextStyle(fontWeight: FontWeight.w500),),
                controlAffinity:ListTileControlAffinity.leading,checkColor: Colors.white,activeColor: Colors.black87,
                value: fps,
                onChanged: (bool? value) { setState(() {
                  fps = value!;
                  updateProgress(fps);
                }); }, ),
            ],
          ),
        ),
      ),
    );
  }
}