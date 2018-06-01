import 'package:flutter/material.dart';



class BmiApp extends StatefulWidget{
  @override
  BmiAppState createState() => new BmiAppState();
}

class BmiAppState extends State<BmiApp>{
  final TextEditingController _heightController = new TextEditingController();
  final TextEditingController _weightController = new TextEditingController();
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
          padding: new EdgeInsets.all(2.5),
          children: <Widget>[
          
          new Image.asset(
            'lib/images/bmilogo.png',
              height: 133.0,
              width: 200.0,
          ),

          new Container(
            color: Colors.white70,
            margin: new EdgeInsets.all(3.0),
            alignment: Alignment.center,
            
            child: new Column(
              children: <Widget>[

                new TextField(
                                  controller: _heightController,
                                  keyboardType: TextInputType.number,
                                  decoration: new InputDecoration(
                                    hintText: 'Height in feet',
                                    icon: new Icon(Icons.poll),
                                  ),
                                ),


                new TextField(
                                  controller: _weightController,
                                  keyboardType: TextInputType.number,
                                  decoration: new InputDecoration(
                                    hintText: 'Height in feet',
                                    icon: new Icon(Icons.line_weight),
                                  ),
                                ),


                new Container(
                  alignment: Alignment.center,
                  padding: new EdgeInsets.all(25.0),
                  child: new RaisedButton(
                    child: new Text("Calculate"),
                    color: Colors.red,
                    splashColor: Colors.purple,
                    shape: const StadiumBorder(),
                    onPressed: (){},
                  ),
                )
              ],
            ),
          ),
            
          ],
        ),
      ),

    );


  }}