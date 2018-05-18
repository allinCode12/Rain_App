import 'package:flutter/material.dart';


class GestureApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Gesture Detector"),),

      body: new Center(
        child: new CustomButton(),
      ),
    );
  }

 
}

//make your own customed Button
class CustomButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    
    
    
    return new GestureDetector(
     
      child: new Container(
        padding: new EdgeInsets.all(30.0),
        decoration: new BoxDecoration(
          color: Colors.greenAccent,
          borderRadius: new BorderRadius.circular(5.5)
        ),
        child: new Text("Open SnackBar"),
      ),


      onTap: () {
        final snackBar = new SnackBar(content: new Text("SNACKBAR appeared"),
        backgroundColor: Colors.black,
        duration: new Duration(
          hours: 0, minutes: 0, seconds: 0, milliseconds: 4100
        ),);

        Scaffold.of(context).showSnackBar(snackBar);
      },


    );
  }

}