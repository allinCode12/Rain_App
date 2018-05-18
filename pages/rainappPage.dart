import 'package:flutter/material.dart';



class RainApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: MakeItRain(),
    );
  }
  
}


class MakeItRain extends StatefulWidget{
  @override
  MakeItRainState createState() => new MakeItRainState();
  
}


class MakeItRainState extends State<MakeItRain>{



  int _mycounter = 0;
  Color _moneyColor = Colors.greenAccent;

  void _rainMoney() {
    setState(() {
          _mycounter = _mycounter + 100;
          if (_mycounter >= 3000){
            _moneyColor = Colors.red;
          }
          else{
            _moneyColor = Colors.greenAccent;
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Rain App"),
        backgroundColor: Colors.greenAccent.shade700,),


      body: new Container(
        child: new Column(
          children: <Widget>[
            
            
            new Center(
              child: new Text("Get Rich", 
                style: new TextStyle(fontSize: 35.0, 
                                     color: Colors.blueGrey, 
                                     fontWeight: FontWeight.w400
                                     )),
            ),


            new Expanded(
              child: new Center(
                child: new Text('\$$_mycounter',
                style: new TextStyle(
                  color: _moneyColor,
                  fontSize: 47.0,
                  fontWeight: FontWeight.bold
                ),),
              ),  
          ),



            new Expanded(
              child: new Center(
                child: new FlatButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  onPressed: _rainMoney,
                  child: new Text("Let It Rain", style: new TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic,),
               
                  ),
                 ),
               ),
            )
          ],
        ),
      ),
      
    );
  }

}