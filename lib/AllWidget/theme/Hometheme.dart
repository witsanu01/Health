import 'package:flutter/material.dart';
class Theme extends StatelessWidget {
 static const String idScreen = "Theme";
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Elderly Theme",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark
      ),
    );
  }
}
