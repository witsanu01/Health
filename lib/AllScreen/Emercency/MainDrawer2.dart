import 'package:Health/AllScreen/login/RegisterScreen.dart';
import 'package:Health/AllScreen/login/loginScreen.dart';
import 'package:Health/AllScreen/mainScreen.dart';
import 'package:Health/AllScreen/speechScreen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MainDrawer2 extends StatelessWidget {

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
            customlaunch("tel:191");
          },
          leading: Icon(
            Icons.pregnant_woman,
            color: Colors.black,
          ),
          title: Text(
            "police",
          ),
        ),
        ListTile(
          onTap: () {
            customlaunch("tel:1193");
          },
          leading: Icon(
            Icons.account_balance_wallet_outlined,
            color: Colors.black,
          ),
          title: Text(
            "Highway hotline",
          ),
        ),

        ListTile(
          onTap: () {
            customlaunch("tel:1300");
          },
          leading: Icon(
            Icons.person_add_disabled_rounded,
            color: Colors.black,
          ),
          title: Text(
            "Lost person",
          ),
        ),
        ListTile(
          onTap: () {
            customlaunch("tel:1691");
          },
          leading: Icon(
            Icons.account_balance_wallet_outlined,
            color: Colors.black,
          ),
          title: Text(
            "car police",
          ),
        ),
        ListTile(
          onTap: () {
            customlaunch("tel:1543");
          },
          leading: Icon(
            Icons.account_balance_wallet_outlined,
            color: Colors.black,
          ),
          title: Text(
            "Expressway accident",
          ),
        ),
        ListTile(
          onTap: () {
            customlaunch("tel:112");
          },
          leading: Icon(
            Icons.account_balance_wallet_outlined,
            color: Colors.black,
          ),
          title: Text(
            "Phone Emergency",
          ),
        ),
        ListTile(
          onTap: () {
            customlaunch("tel:1554");
          },
          leading: Icon(
            Icons.account_balance_wallet_outlined,
            color: Colors.black,
          ),
          title: Text(
            "Hideout",
          ),
        ),
        ListTile(
          onTap: () {
            customlaunch("tel:1196");
          },
          leading: Icon(
            Icons.account_balance_wallet_outlined,
            color: Colors.black,
          ),
          title: Text(
            "waterways",
          ),
        ),
      ],
    );
  }
}
