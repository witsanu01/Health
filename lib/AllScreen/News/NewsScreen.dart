import 'package:Health/AllScreen/mainScreen.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  static const String idScreen = "NewsScreen";
  @override

  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen>
  with SingleTickerProviderStateMixin {
  List<Tab> tablist = [
    Tab(child:Text("top"),),
    Tab(child:Text("popular"),),
    Tab(child:Text("Trending"),),
  ];
  TabController _tabController;
  @override
  void initState(){
    super.initState();
    _tabController= TabController(vsync: this,length: tablist.length);
  }
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
        title: Text(
          'News for Elderly',
          style: TextStyle(color: Colors.white),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30.0),
        child: TabBar(
          indicatorColor: Colors.black,
          isScrollable: true,
          controller: _tabController,
          tabs: tablist,
        ),),
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
        body: TabBarView(
          controller: _tabController,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                child: ListView(),
              ),

            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(),
            ),
          ],

        ),
    );
  }
}
