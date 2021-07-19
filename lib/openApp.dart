import 'package:Health/beHome.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

class OpenApp extends StatefulWidget {
  static const String idScreen = "openApp";
  @override
  _OpenAppState createState() => _OpenAppState();
}

class _OpenAppState extends State<OpenApp> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/logo12.png',
      nextScreen: BeHome(),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
