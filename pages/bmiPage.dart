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
    );


  }}