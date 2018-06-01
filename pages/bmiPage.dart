import 'package:flutter/material.dart';



class BmiApp extends StatefulWidget{
 
  @override
  BmiAppState createState() => new BmiAppState();
}

class BmiAppState extends State<BmiApp>{
  
  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("BMI"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),

      backgroundColor: Colors.blueGrey,
      body: new Container(
        alignment: Alignment.center,
        child: new ListView(
          children: <Widget>[
          
          new Image.asset(
            'lib/images/bmilogo.png',
              height: 133.0,
              width: 200.0,
          ),

          new Container(
            margin: new EdgeInsets.all(3.0),
            alignment: Alignment.center,
          ),
            
          ],
        ),
      ),

    );


  }}