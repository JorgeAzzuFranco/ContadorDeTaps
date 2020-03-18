import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final TextStyle fontStyle = TextStyle(fontSize: 30, color: Colors.blueAccent);
  final TextStyle fontTitle = TextStyle(color: Colors.black);
  final Color appBarColor = Colors.lightGreenAccent;

  int contador = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Turbo Counter", style: fontTitle),
        centerTitle: true,
        elevation: 2.0,
        backgroundColor: appBarColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Taps Realizados", style: fontStyle),
              Text("$contador", style: fontStyle),
            ],
        ),
      ),
      floatingActionButton:  FloatingActionButton(
        backgroundColor: appBarColor,
        elevation: 5.0,
        child: Icon(Icons.plus_one, color: Colors.black,),
        onPressed: (){
          print("+1 Prro");
        },
      ),
    );
  }



}