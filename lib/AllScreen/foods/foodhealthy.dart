import 'package:Health/AllScreen/mainScreen.dart';
import 'package:flutter/material.dart';
class Foods extends StatefulWidget {
  static const String idScreen = "foods";
  @override
  _foodsState createState() => _foodsState();
}

class _foodsState extends State<Foods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
        title: Text(
          'Medicine',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.fast_forward_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context,MainScreen.idScreen, (route) => false);
            },
          )
        ],
      ),
    
    );
  }
}
