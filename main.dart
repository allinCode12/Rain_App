import 'package:flutter/material.dart';
import './pages/gesturedetectorPage.dart';
import './pages/rainappPage.dart';
import './pages/loginAppPage.dart';
import './pages/planetPage.dart';

void main() {
  runApp(new MaterialApp(
    title: "New TutorApp",
    home: new HomePage(),
    routes: <String, WidgetBuilder>{
      "/Gesture_App" : (BuildContext ctx) => new GestureApp(),
      "/Rain_App" : (BuildContext ctx) => new RainApp(),
      "/login_app" : (BuildContext context) => new LoginApp(),
      "/Planet_App" :  (BuildContext context) => new PlanetApp()
    }

  ));

}



class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext ctx){
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Home Page"),
        backgroundColor: Colors.blueAccent,
                actions: <Widget>[
                  new IconButton(
                    icon: new Icon(Icons.exit_to_app),
                    onPressed: () {
                      Navigator.of(ctx).pushNamed("/Rain_App");
                    }),

                  new IconButton(
                    icon: new Icon(Icons.gesture),
                    onPressed: () {
                            Navigator.of(ctx).pushNamed("/Gesture_App");
                    }),


                  new IconButton(
                    icon: new Icon(Icons.account_box),
                    onPressed: () {
                            Navigator.of(ctx).pushNamed("/login_app");
                    }),
                  
                  new IconButton(
                    icon: new Icon(Icons.language),
                    onPressed: () {
                            Navigator.of(ctx).pushNamed("/Planet_App");
                    }),
                ],
              ),



      body: new  Container( 
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("Demo App", style: new TextStyle(fontSize: 50.0),),


              new Container(
                child:new Text("Release Mode", style: new TextStyle(fontSize: 20.0),)
              ),
            ],
          ),
        ), 
      ),


//Bottom Navigation Bar
    bottomNavigationBar: 
      new BottomNavigationBar(items: [
        new BottomNavigationBarItem(
          icon: Icon(Icons.image, color: Colors.black54,), title: new Text("Image")),
          
        new BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.black54,), title: new Text("Home")),

        new BottomNavigationBarItem(
          icon: Icon(Icons.poll, color: Colors.black54,), title: new Text("Poll")),
      ], onTap: (value) => debugPrint("Tapped $value"),),


//floatingAction Button
    floatingActionButton: new FloatingActionButton(
      onPressed: () => debugPrint("floatingACTION pressed"),
      backgroundColor: Colors.blueAccent,
      tooltip: 'Added Null',
      child: new Icon(Icons.add),
    ),
    );
  }
}