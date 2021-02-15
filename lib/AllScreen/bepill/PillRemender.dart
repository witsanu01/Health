
import 'package:Health/beHome.dart';
import 'package:flutter/material.dart';

class PillRemender extends StatefulWidget {
  static const String idScreen = "PillRemender";
  @override
  _PillRemenderState createState() => _PillRemenderState();
}

class _PillRemenderState extends State<PillRemender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        elevation: 0.0,
        title: Text(
          'Elderly Chat',
          style: TextStyle(color: Colors.black),
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
                  context,behome.idScreen, (route) => false);
            },
          )
        ],
      ),
    );
  }
}