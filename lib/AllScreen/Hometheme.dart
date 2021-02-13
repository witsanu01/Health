import 'package:Health/AllScreen/mainScreen.dart';
import 'package:Health/AllScreen/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Hometheme extends StatelessWidget {
  static const String idScreen = "Hometheme";
  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
        title: Text(
          'ThemeHome',
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
                  context,mainScreen.idScreen, (route) => false);
            },
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            FlatButton(
                child: Text('Dark Theme'),
                onPressed: ()=>_themeChanger.setTheme(ThemeData.dark())),
            FlatButton(
                child: Text('Light Theme'),
                onPressed: ()=>_themeChanger.setTheme(ThemeData.light())),
          ],
        ),
      ),
    );
  }
}
