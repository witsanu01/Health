import 'package:flutter/material.dart';


class MyApp3 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp3> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('el nuevo titulo'),
          backgroundColor: Colors.pinkAccent,
        ),
        body: new Container(
          child: Text('hola mundo',
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                  color: Colors.black)),
        ),
      ),
    );
  }
}
