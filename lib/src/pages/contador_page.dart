import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() =>_ContadorPageState();

}

class _ContadorPageState extends State<ContadorPage> {

  final TextStyle _fontStyle = TextStyle(fontSize: 30, color: Colors.blue);
  final TextStyle _fontTitle = TextStyle(color: Colors.black);
  final Color _appBarColor = Colors.lightGreenAccent;

  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Turbo Contador de Taps", style: _fontTitle),
        centerTitle: true,
        elevation: 2.0,
        backgroundColor: _appBarColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Taps Realizados", style: _fontStyle),
            Text("$_contador", style: _fontStyle),
          ],
        ),
      ),
      floatingActionButton: _buttons(),
    );
  }

  Widget _buttons(){
    return Row(
      children: <Widget>[
        SizedBox(width: 30.0,),
        FloatingActionButton(
          backgroundColor: _appBarColor,
          elevation: 5.0,
          child: Text("Reset", style: _fontTitle),
          onPressed: zero,
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          backgroundColor: _appBarColor,
          elevation: 5.0,
          child: Text("-1", style: _fontTitle),
          onPressed: minusOne,
        ),
        SizedBox(width: 5.0,),
        FloatingActionButton(
          backgroundColor: _appBarColor,
          elevation: 5.0,
          child: Text("+1", style: _fontTitle,),
          onPressed: plusOne,
        )
      ],
      mainAxisAlignment: MainAxisAlignment.end,
    );
  }

  void zero(){
    print("0 Prro");
    _contador=0;
    setState((){});
  }

  void minusOne(){
    print("0 Prro");
    if(_contador <= 0){
      _contador=0;
    } else{
      _contador--;
    }
    setState((){});
  }

  void plusOne(){
    print("+1 Prro");
    _contador+=1;
    setState(() {});
  }

}