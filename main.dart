import 'package:flutter/material.dart';
import './pages/gesturedetectorPage.dart';
import './pages/rainappPage.dart';

void main() {
  runApp(new MaterialApp(
    title: "New TutorApp",
    home: new HomePage(),
    routes: <String, WidgetBuilder>{
      "/Gesture_App" : (BuildContext ctx) => new GestureApp(),
      "/Rain_App" : (BuildContext ctx) => new RainApp()
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

                  new Container(
                    padding: new EdgeInsets.all(5.0),
                  ),

                  new IconButton(
                    icon: new Icon(Icons.gesture),
                    onPressed: () {
                            Navigator.of(ctx).pushNamed("/Gesture_App");
                    }),
                            
                ],
              ),



      body: new  Container( 
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("Demo App", style: new TextStyle(fontSize: 50.0),),
            ],
          ),
        ), 
      ),


//Bottom Navigation Bar
    bottomNavigationBar: 
      new BottomNavigationBar(items: [
        new BottomNavigationBarItem(icon: Icon(Icons.image, color: Colors.black54,), title: new Text("Image")),
        new BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black54,), title: new Text("Home")),
        new BottomNavigationBarItem(icon: Icon(Icons.poll, color: Colors.black54,), title: new Text("Poll")),
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

