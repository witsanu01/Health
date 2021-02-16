import 'package:Health/AllScreen/Emercency/EmergencyScreeen.dart';
import 'package:Health/AllScreen/GoogleMap/googlemap.dart';
import 'package:Health/AllScreen/News/NewsScreen.dart';
import 'package:Health/AllScreen/Note/Notes.dart';
import 'package:Health/AllScreen/QRcode/QRcode.dart';
import 'package:Health/AllScreen/bepill/PillRemender.dart';
import 'package:Health/AllScreen/body/main.dart';
import 'package:Health/AllScreen/chatAl/chatScreen.dart';
import 'package:Health/AllScreen/fristaid/firstaid.dart';
import 'package:Health/AllScreen/login/RegisterScreen.dart';
import 'package:Health/AllScreen/login/auth.dart';
import 'package:Health/AllScreen/login/loginScreen.dart';
import 'package:Health/AllScreen/mainScreen.dart';
import 'package:Health/AllScreen/pill%20remember/mainScreenpill.dart';
import 'package:Health/AllScreen/speechScreen.dart';
import 'package:Health/AllScreen/theme.dart';
import 'package:Health/beHome.dart';
import 'package:Health/openApp.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp ());
}
DatabaseReference usersRef = FirebaseDatabase.instance.reference().child("users");
class MyApp  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      builder: (_)=>ThemeChanger(ThemeData.dark()),
      child: new MaterialApp(
        title: 'Elderly Health',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute:Body.idScreen,
        routes: {
          mainScreen.idScreen:(context)=>mainScreen(),
          LoginScreen.idScreen:(context)=>LoginScreen(),
          RegisterScreen.idScreen:(context)=>RegisterScreen(),
          QRcode.idScreen:(context)=>QRcode(),
          firstaid.idScreen:(context)=>firstaid(),
          speechScreen.idScreen:(context)=>speechScreen(),
          pillRememberScreen.idScreen:(context)=>pillRememberScreen(),
          NotesPage.idScreen:(context)=>NotesPage(),
          EmergencyScreen.idScreen:(context)=>EmergencyScreen(),
          Googlemap.idScreen:(context)=>Googlemap(),
          NewsScreen.idScreen:(context)=>NewsScreen(),
          ChatScreen.idScreen:(context)=>ChatScreen(),
          openApp.idScreen:(context)=> openApp(),
          Dashboard.idScreen:(context) => Dashboard(),
          behome.idScreen:(context) =>behome(),
          PillRemender1.idScreen:(context)=> PillRemender1(),

        },
        debugShowCheckedModeBanner: false,
        home:NotesPage(),
      ),
    );
  }
}






