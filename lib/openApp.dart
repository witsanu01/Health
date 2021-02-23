import 'package:Health/beHome.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

class openApp extends StatefulWidget {
  static const String idScreen = "openApp";
  @override
  _openAppState createState() => _openAppState();
}

class _openAppState extends State<openApp> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/logo12.png',
      nextScreen: BeHome(),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
