import 'package:Health/AllScreen/Emercency/EmergencyScreeen.dart';
import 'package:Health/AllScreen/GoogleMap/googlemap.dart';
import 'package:Health/AllScreen/News/Screens/HomeScreen.dart';
import 'package:Health/AllScreen/Note/Notes.dart';
import 'package:Health/AllScreen/QRcode/QRcode.dart';
import 'package:Health/AllScreen/bepill/PillRemender.dart';
import 'package:Health/AllScreen/chatAl/chatScreen.dart';
import 'package:Health/AllScreen/foods/foodhealthy.dart';
import 'package:Health/AllScreen/fristaid/firstaid.dart';
import 'package:Health/AllScreen/login/RegisterScreen.dart';
import 'package:Health/AllScreen/login/auth.dart';
import 'package:Health/AllScreen/login/loginScreen.dart';
import 'package:Health/AllScreen/mainScreen.dart';
import 'package:Health/AllScreen/pill%20remember/mainScreenpill.dart';
import 'package:Health/beHome.dart';
import 'package:Health/foodScreen/Newsfood.dart';
import 'package:Health/foodScreen/foodScreen.dart';
import 'package:Health/openApp.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

DatabaseReference usersRef = FirebaseDatabase.instance.reference().child("users");

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Elderly Health',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute:  OpenApp.idScreen,
      routes: {
        MainScreen.idScreen: (context) => MainScreen(),
        LoginScreen.idScreen: (context) => LoginScreen(),
        RegisterScreen.idScreen: (context) => RegisterScreen(),
        QRcode.idScreen: (context) => QRcode(),
        Firstaid.idScreen: (context) => Firstaid(),
        PillRememberScreen.idScreen: (context) => PillRememberScreen(),
        NotesPage.idScreen: (context) => NotesPage(),
        EmergencyScreen.idScreen: (context) => EmergencyScreen(),
        Googlemap.idScreen: (context) => Googlemap(),
        ChatScreen.idScreen: (context) => ChatScreen(),
        OpenApp.idScreen: (context) => OpenApp(),
        Dashboard.idScreen: (context) => Dashboard(),
        BeHome.idScreen: (context) => BeHome(),
        PillRemender1.idScreen: (context) => PillRemender1(),
        FoodScreen.idScreen: (context) => FoodScreen(),
        NewfoodScreen.idScreen: (context) => NewfoodScreen(),
        Foods.idScreen: (context) => Foods(),
        HomeScreen.idScreen: (context) => HomeScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: NotesPage(),
    );
  }
}
