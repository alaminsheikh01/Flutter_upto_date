import 'package:flutter/material.dart';

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
  String _value = "Hello world";

  void _onPressed(String value) {
    setState(() {
      // setState will make chaneg the value
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Name here'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Column(
          children: <Widget>[
            Text(_value),
            ElevatedButton(
              onPressed: () => _onPressed("Hello Alamin"),
              child: Text("Click me"),
            )
          ],
        ),
      ),
    );
  }
}
