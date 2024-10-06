import 'package:flutter/material.dart';

void main() => runApp(sharu());

class sharu extends StatelessWidget {
  const sharu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("This Is Just For You",style: TextStyle(color: Colors.pink,fontWeight: FontWeight.w900),),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Center(
          child:ListView(
            children:[
              SizedBox(height: 350,width: 400,child: Image.network("https://images.unsplash.com/photo-1641849460713-4e475f9b8f73?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bG92ZXJzJTIwa2lzc2luZ3xlbnwwfHwwfHx8MA%3D%3D"),),
              Text("  Kiss Me Like This",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 40),)
            ]
          ),
        ),
      ),
    );
  }
}
