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

  void _onClick(String value) => setState(() => _value = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Name here'),
      ),
      persistentFooterButtons: [
        IconButton(
          icon: Icon(Icons.timer),
          onPressed: () => _onClick("Button one"),
        ),
        IconButton(
          icon: Icon(Icons.people),
          onPressed: () => _onClick("Button two"),
        ),
        IconButton(
          icon: Icon(Icons.map),
          onPressed: () => _onClick("Button three"),
        )
      ],
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
