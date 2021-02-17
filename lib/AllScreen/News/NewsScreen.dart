import 'package:Health/AllScreen/mainScreen.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  static const String idScreen = "NewsScreen";
  @override

  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        elevation: 0.0,
        title: Text(
          'News blog',
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
                  context, mainScreen.idScreen, (route) => false);
            },
          )
        ],
      ),

    );
  }
}
