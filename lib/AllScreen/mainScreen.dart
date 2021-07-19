import 'package:Health/AllScreen/Emercency/EmergencyScreeen.dart';
import 'package:Health/AllScreen/GoogleMap/googlemap.dart';
import 'package:Health/AllScreen/MainDrawer.dart';
import 'package:Health/AllScreen/News/Screens/HomeScreen.dart';
import 'package:Health/AllScreen/Note/Notes.dart';
import 'package:Health/AllScreen/QRcode/QRcode.dart';
import 'package:Health/AllScreen/chatAl/chatScreen.dart';
import 'package:Health/AllScreen/fristaid/firstaid.dart';
import 'package:Health/AllScreen/pill%20remember/mainScreenpill.dart';
import 'package:Health/foodScreen/Newsfood.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  static const String idScreen = "mainScreen";

  @override
  mainScreenState createState() => mainScreenState();
}

class mainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  int selectedItemIndex = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
        title: Text(
          'Elderly Personal Health Secretary',
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              // Navigator.pushNamedAndRemoveUntil(
              //     context,Theme.idScreen, (route) => false);
            },
          )
        ],
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: SizedBox(
        child: Column(
          children: <Widget>[
            Container(
              height: 70,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey[200]),
                      child: TextField(
                        onTap: () {},
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide:
                                BorderSide(color: Colors.grey.withOpacity(0.4)),
                          ),
                          contentPadding: EdgeInsets.only(top: 10, left: 10.0),
                          hintText: 'search...',
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.count(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                primary: false,
                crossAxisCount: 2,
                children: <Widget>[
                  Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          "assets/map.png",
                          width: 100,
                        ),
                        Container(
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {
                              Navigator.pushNamedAndRemoveUntil(context,
                                  Googlemap.idScreen, (route) => false);
                            },
                            child: Text(
                              'Google Map',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/aid1.png", width: 100),
                        Container(
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, Firstaid.idScreen, (route) => false);
                            },
                            child: Text(
                              'First aid',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/know.png", width: 100),
                        Container(
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {
                              Navigator.pushNamedAndRemoveUntil(context,
                               HomeScreen.idScreen, (route) => false);
                            },
                            child: Text(
                              'News ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/healthy-food.png", width: 100),
                        Container(
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {
                              Navigator.pushNamedAndRemoveUntil(context,
                                  NewfoodScreen.idScreen, (route) => false);
                            },
                            child: Text(
                              'cal foods',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/chat.png", width: 100),
                        Container(
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {
                              Navigator.pushNamedAndRemoveUntil(context,
                                  ChatScreen.idScreen, (route) => false);
                            },
                            child: Text(
                              'Chat',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/QR.png", width: 100),
                        Container(
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, QRcode.idScreen, (route) => false);
                            },
                            child: Text(
                              'QR Code',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/cal.png", width: 100),
                        Container(
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {

                              Navigator.pushNamedAndRemoveUntil(context,
                                  EmergencyScreen.idScreen, (route) => false);
                            },
                            child: Text(
                              'Emergency',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/Note.png", width: 100),
                        Container(
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {
                              Navigator.pushNamedAndRemoveUntil(context,
                                  NotesPage.idScreen, (route) => false);
                            },
                            child: Text(
                              'Note Activity',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildNavBarItem(IconData icon, int index, bool isActive) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedItemIndex = index;
        });
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width / 5,
        decoration: BoxDecoration(
          color: index == selectedItemIndex ? Colors.greenAccent : Colors.white,
        ),
        child: Icon(
          icon,
          color: index == selectedItemIndex ? Colors.black : Colors.grey,
        ),
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatefulWidget {
  final int defaultSelectedIndex;

  CustomBottomNavigationBar({
    this.defaultSelectedIndex = 0,
  });

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildNavBarItem(Icons.home, 1, true),
        buildNavBarItem(Icons.qr_code, 2, false),
        buildNavBarItem(Icons.camera_alt, 3, false),
        buildNavBarItem(Icons.calendar_today, 4, false),
        buildNavBarItem(Icons.chat, 5, false),
      ],
    );
  }

  Widget buildNavBarItem(IconData icon, int index, bool isActive) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width / 5,
        decoration: BoxDecoration(
          color: index == selectedIndex ? Colors.greenAccent : Colors.white,
        ),
        child: Icon(
          icon,
          color: index == selectedIndex ? Colors.black : Colors.grey,
        ),
      ),
    );
  }
}
