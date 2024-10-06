import 'package:flutter/material.dart';
import 'package:application/Chest-Triceps/Chest Tricep Final.dart';
import 'package:application/Back-Biceps/Back Bicep Final.dart';
import 'package:application/Shoulders/Shoulders Final.dart';
import 'package:application/Legs-Abs/Legs Abs Final.dart';
import 'package:application/Arms/Arms Final.dart';

void main() => runApp(myapp());

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: mainpage(),
    );
  }
}

class mainpage extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 230, 90, 0),
        appBar: AppBar(
          title:Text("Gym Workout Application",style:TextStyle(
            fontWeight: FontWeight.w900,color: Colors.white
          )
            ,),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: ListView(
            //itemExtent:70,
            //diameterRatio: 1.1,
            children: [
              Text("  Choose What You Wish To Train",style: TextStyle(fontSize:23,color: Colors.white,fontWeight:FontWeight.w800),),
              Text("                 "),
              SizedBox(height:150,width:900,child: Image.network("https://simplifaster.com/wp-content/uploads/2018/02/Bench-Press.jpg"),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed:()
                {
                  Navigator.push
                    (context,MaterialPageRoute(builder: (context) => ctfinal()));
                  },
                    child: Text("Chest Triceps")
                ),
              ),
              Text("                 "),
              SizedBox(height: 190,width:300,child:Image.network("https://images.unsplash.com/photo-1605296867424-35fc25c9212a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fEd5bSUyMEd1eSUyMEJhY2t8ZW58MHx8MHx8fDA%3D"),),
              Text("   "),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed:()
                {
                  Navigator.push
                    (context,MaterialPageRoute(builder: (context) => bbfinal()));
                  },
                    child: Text(" Back Biceps ")
                ),
              ),
              Text("                 "),
              SizedBox(height: 190,width: 300,child: Image.network("https://images.unsplash.com/photo-1596357395217-80de13130e92?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fEd5bSUyMEd1eSUyMExlZ3N8ZW58MHx8MHx8fDA%3D"),),
              Text("    "),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed:()
                  {
                    Navigator.push
                      (context,MaterialPageRoute(builder: (context) => lafinal()));
                    },
                      child: Text("   Legs Abs   ")
                  ),
                ),
              ),
              Text("                 "),
              SizedBox(height: 165,width: 300,child: Image.network("https://plus.unsplash.com/premium_photo-1679635697366-8a550f2bc2d3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDl8fEd5bSUyMEd1eSUyMFNob3VsZGVycyUyMHdvcmtvdXR8ZW58MHx8MHx8fDA%3D"),),
              Text("  "),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed:()
                {
                  Navigator.push
                    (context,MaterialPageRoute(builder: (context) => shfinal()));
                  },
                    child: Text("  Shoulders  "),
                ),
              ),
              Text("                 "),
              SizedBox(height: 190,width: 300,child: Image.network("https://images.unsplash.com/photo-1581009146145-b5ef050c2e1e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8QmljZXAlMjBXb3Jrb3V0fGVufDB8fDB8fHww"),),
              Text("    "),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed:()
                {
                  Navigator.push
                    (context,MaterialPageRoute(builder: (context) => aafinal()));
                  },
                    child: Text("       Arms       ")
                ),
              ),
              Text("                 "),
            ],
          ),
        ),
      ),
    );
  } //Widget
}  //mainpage