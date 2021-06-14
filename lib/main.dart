import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  String _value = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Name here'),
      ),
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Text("Hello Drawer"),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  "Closed",
                ),
              )
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Column(
          children: <Widget>[
            Text(_value),
          ],
        ),
      ),
    );
  }
}
