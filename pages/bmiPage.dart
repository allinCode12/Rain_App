import 'package:flutter/material.dart';



class BmiApp extends StatefulWidget{
  @override
  BmiAppState createState() => new BmiAppState();
}

class BmiAppState extends State<BmiApp>{
  final TextEditingController _ageController = new TextEditingController();
  final TextEditingController _heightController = new TextEditingController();
  final TextEditingController _weightController = new TextEditingController();
  double inches =0.0;
  double result = 0.0;

  
  void _calculateBMI() {
    setState(() {
          int age = int.parse(_ageController.text);
          double height = double.parse(_heightController.text);
          inches = height*12;
          double weight = double.parse(_weightController.text);

          if ((_ageController.text.isNotEmpty || age > 0) 
            && (_weightController.text.isNotEmpty || weight >0) 
              && (_heightController.text.isNotEmpty)) {
              result = weight / (inches * inches) * 703;
          }else {
            result = 0.0;
          }

        });
  }

   
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
              height: 85.0,
              width: 75.0,
          ),

          new Container(
            color: Colors.white70,
            margin: new EdgeInsets.all(3.0),
            alignment: Alignment.center,
            
            child: new Column(
              children: <Widget>[
              
                new TextField(
                                  controller: _ageController,
                                  keyboardType: TextInputType.number,
                                  decoration: new InputDecoration(
                                    labelText: 'Age',
                                    icon: new Icon(Icons.person),
                                  ),
                                ),

                new TextField(
                                  controller: _heightController,
                                  keyboardType: TextInputType.number,
                                  decoration: new InputDecoration(
                                    labelText: 'Height in feet',
                                    icon: new Icon(Icons.poll),
                                  ),
                                ),

                new TextField(
                                  controller: _weightController,
                                  keyboardType: TextInputType.number,
                                  decoration: new InputDecoration(
                                    labelText: 'Height in feet',
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
                    onPressed: _calculateBMI,
                  ),
                )
              ],
            ),

          ),
          
          new Container(
            alignment: Alignment.center,
            margin: new EdgeInsets.all(3.0),
            child: new Text("Your BMI: $result", 
            style: new TextStyle(
              fontSize: 20.0, 
              fontWeight: FontWeight.w500, 
              fontStyle: FontStyle.italic),),
          ),  
          ],
        ),
      ),

    );


  }}