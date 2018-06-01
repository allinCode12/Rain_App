import 'package:flutter/material.dart';


class LoginApp extends StatefulWidget{
  @override
  LoginState createState() => new LoginState();
  

}


class LoginState extends State<LoginApp>{


  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  String _userName = "";


  _erase(){
    setState(() {
          _userController.clear();
          _passwordController.clear();
        });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("My Account"), backgroundColor: Colors.blue,
        centerTitle: true,),
      
      backgroundColor: Colors.blueGrey,

      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView(
          children: <Widget>[

            new Image.asset(
              'lib/images/face.png',
              height: 90.0,
              width:100.0,
              color: Colors.cyan,
              ),
            
            new Container(
              height: 180.0,
              width: 400.0,
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _userController,
                    decoration: new InputDecoration(
                      hintText: 'Username',
                      icon: new Icon(Icons.person)
                    ),
                  ),

                  new TextField(
                    controller: _passwordController,
                    decoration: new InputDecoration(
                      hintText: 'Password',
                      icon: new Icon(Icons.lock),
                    ),
                    obscureText: true,
                  ),

                  new Padding(padding: new EdgeInsets.all(15.0),),
                  new Center(
                    child: new Row(
                      children: <Widget>[
                        new Container(
                          margin: new EdgeInsets.only(left: 38.0),
                          child: new RaisedButton(
                            onPressed: _showWelcome,
                            color: Colors.redAccent,
                            child: new Text("Login", style: new TextStyle(
                              color: Colors.white,
                              fontSize: 17.9
                            ),),
                          )
                        ),


                        new Container(
                          margin: new EdgeInsets.only(left: 150.0),
                          child: new RaisedButton(
                            onPressed: _erase,
                            color: Colors.redAccent,
                            child: new Text("Clear", style: new TextStyle(
                              color: Colors.white,
                              fontSize: 17.9
                            ),),
                          )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  ('$_userName'), 
                  style: new TextStyle(
                    fontStyle: FontStyle.italic, fontSize: 25.0, color: Colors.white),)
              ],
            ),
          ],
        ),
      ),
    );
  }

  _showWelcome(){
    setState(() {

            if(_userController.text.isNotEmpty && _passwordController.text.isNotEmpty){
            _userName = ('Welcome ${_userController.text}!');
          }
        });
  }
}