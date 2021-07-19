import 'package:Health/AllScreen/MainDrawer1.dart';
import 'package:Health/AllScreen/pill%20remember/mainScreenpill.dart';
import 'package:flutter/material.dart';

class BeHome extends StatefulWidget {
  static const String idScreen = "behome";

  @override
  _BehomeState createState() => _BehomeState();
}

class _BehomeState extends State<BeHome> with SingleTickerProviderStateMixin {
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
        child: MainDrawer1(),
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
                        color: Colors.grey[200],
                      ),
                      child: TextField(
                        onTap: () {},
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide(
                              color: Colors.grey.withOpacity(0.4),
                            ),
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
                        Image.asset("assets/clock.png", width: 100),
                        Container(
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {
                              Navigator.pushNamedAndRemoveUntil(
                                context,
                                PillRememberScreen.idScreen,
                                (route) => false,
                              );
                            },
                            child: Text(
                              'Pill Remember',
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
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
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
