import 'package:Health/AllScreen/login/RegisterScreen.dart';
import 'package:Health/AllScreen/login/loginScreen.dart';
import 'package:Health/AllScreen/mainScreen.dart';
import 'package:Health/AllScreen/speechScreen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MainDrawer extends StatelessWidget {

  void customlaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print("could not launch $command");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.0,
        ),
        ListTile(
          onTap: () {

          },
          leading: Icon(
            Icons.person,
            color: Colors.black,
          ),
          title: Text("Proflie"),
        ),
        ListTile(
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
                context,speechScreen.idScreen, (route) => false);
          },
          leading: Icon(
            Icons.keyboard_voice_rounded,
            color: Colors.black,
          ),
          title: Text(
            "speech voice",
          ),
        ),
        ListTile(
          onTap: () {
            customlaunch("tel:1669");
          },
          leading: Icon(
            Icons.account_balance_wallet_outlined,
            color: Colors.black,
          ),
          title: Text(
            "Phone",
          ),
        ),
        ListTile(
          onTap: () {
            customlaunch('https://google.com');
          },
          leading: Icon(
            Icons.water_damage,
            color: Colors.black,
          ),
          title: Text(
            "Search Google",
          ),
        ),
        ListTile(
          onTap: () {
            customlaunch("http://www.hosting1.cmru.ac.th/61143231/?fbclid=IwAR1OEgQrhhaNyLTiEzvQTy9C2enAPRayRCsnz9e5DxnlA5TtA84XcA1p5S4");
          },
          leading: Icon(
            Icons.contact_support,
            color: Colors.black,
          ),
          title: Text(
            "Support Home",
          ),
        ),
        ListTile(
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
                context, LoginScreen.idScreen, (route) => false);
          },
          leading: Icon(
            Icons.login,
            color: Colors.black,
          ),
          title: Text(
            "Login",
          ),
        ),
        ListTile(
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
                context,RegisterScreen.idScreen, (route) => false);
          },
          leading: Icon(
            Icons.add_circle_outlined,
            color: Colors.black,
          ),
          title: Text(
            "Register",
          ),
        ),
        ListTile(
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
                context,LoginScreen.idScreen, (route) => false);
          },
          leading: Icon(
            Icons.logout,
            color: Colors.black,
          ),
          title: Text(
            "logout",
          ),
        ),
      ],
    );
  }
}
