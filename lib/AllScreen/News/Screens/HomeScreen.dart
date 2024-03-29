import 'package:Health/AllScreen/News/Data/data.dart';
import 'package:Health/AllScreen/News/Widgets/ForYouContainer.dart';
import 'package:Health/AllScreen/News/Widgets/TrendingContainer.dart';
import 'package:Health/AllScreen/mainScreen.dart';
import 'package:flutter/material.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';

class HomeScreen extends StatefulWidget {
  static const String idScreen = "HomeScreen";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget buildForYouContainers() {
    List<Widget> forYouContainers = [];
    for (Article article in forYou) {
      forYouContainers.add(ForYouContainer(
        article: article,
      ));
    }

    return Column(
      children: forYouContainers,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f6f9),
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        elevation: 0.0,
        title: Text(
          'News Elderly',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.fast_forward_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context,MainScreen.idScreen, (route) => false);
            },
          )
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  size: 40,
                  color: Colors.black,
                ),
                Image.asset(
                  'assets/logo.png',
                  height: 40,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Material(
              elevation: 5,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                  hintText: 'Search...',
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          DefaultTabController(
            length: 5,
            child: TabBar(
              labelStyle: TextStyle(
                fontWeight: FontWeight.w700,
              ),
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.black,
              isScrollable: true,
              indicator: MD2Indicator(
                indicatorHeight: 3,
                indicatorColor: Colors.blue,
                indicatorSize: MD2IndicatorSize.full,
              ),
              tabs: [
                Tab(
                  text: 'Trending',
                ),
                Tab(
                  text: 'Sports',
                ),
                Tab(
                  text: 'Economy',
                ),
                Tab(
                  text: 'Fashion',
                ),
                Tab(
                  text: 'Entertainment',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 250,
            padding: EdgeInsets.only(left: 10),
            child: ListView.builder(
                itemCount: trendingNews.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  Article article = trendingNews[index];
                  return TrendingContainer(
                    article: article,
                  );
                }),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'For You',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          buildForYouContainers(),
        ],
      ),
    );
  }
}
