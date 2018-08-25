import 'package:flutter/material.dart';
import 'dart:async';

void main()=>runApp(
    new MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    )
);

class MyApp extends StatefulWidget{
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp>{


  Future _showAlert(BuildContext context, String message) async {
    return showDialog(
        context: context,
        child: new AlertDialog(
          title: new Text(message),
          actions: <Widget>[
            new FlatButton(onPressed: () => Navigator.pop(context), child: new Text("ok"))
          ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Material Design'),
      ),
      body: new Container(
        padding: EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              RaisedButton(child: new Text('Presione'), onPressed: ()=>_showAlert(context, 'Hola Mundo'),)
            ],
          ),
        ),
      ),
    );
  }
}