import 'package:Health/AllScreen/mainScreen.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class FoodScreen extends StatefulWidget {
  static const String idScreen = "foodScreen";
  // final _firebaseMessaging = FirebaseMessaging();
  // final _message = 'Genarating Message..';
  // final _token = 'Generating';
  //
  // void initstate(){
  //   _firebaseMessaging.configure(
  //       onMessage:(Map<string,dynamic>_message) async{
  //         setstate(){
  //
  //         }
  //       }
  //   );
  // }

  @override
  _FoodScreenState createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        elevation: 0.0,
        title: Text(
          'Elderly Circular',
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
              Navigator.pushNamedAndRemoveUntil(context, mainScreen.idScreen, (route) => false);
            },
          )
        ],
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            new CircularPercentIndicator(
              radius: 130.0,
              animation: true,
              animationDuration: 1200,
              lineWidth: 15.0,
              percent: 0.4,
              center: new Text(
                "1 hours",
                style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              circularStrokeCap: CircularStrokeCap.butt,
              backgroundColor: Colors.greenAccent,
              progressColor: Colors.yellow,
            ),
            new CircularPercentIndicator(
              radius: 120.0,
              lineWidth: 13.0,
              animation: true,
              percent: 0.7,
              center: new Text(
                "70.0%",
                style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              footer: new Text(
                "Sales this week",
                style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
              ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: Colors.purple,
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: new CircularPercentIndicator(
                radius: 100.0,
                lineWidth: 10.0,
                percent: 1.0,
                center: new Text("100%"),
                progressColor: Colors.green,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: new LinearPercentIndicator(
                      width: 140.0,
                      lineHeight: 14.0,
                      percent: 0.5,
                      center: Text(
                        "50.0%",
                        style: new TextStyle(fontSize: 12.0),
                      ),
                      trailing: Icon(Icons.mood),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      backgroundColor: Colors.grey,
                      progressColor: Colors.blue,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: new LinearPercentIndicator(
                      width: 170.0,
                      animation: true,
                      animationDuration: 1000,
                      lineHeight: 20.0,
                      leading: new Text("left content"),
                      trailing: new Text("right content"),
                      percent: 0.2,
                      center: Text("20.0%"),
                      linearStrokeCap: LinearStrokeCap.butt,
                      progressColor: Colors.red,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: new LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width - 50,
                      animation: true,
                      lineHeight: 20.0,
                      animationDuration: 2000,
                      percent: 0.9,
                      center: Text("90.0%"),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      progressColor: Colors.greenAccent,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: new LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width - 50,
                      animation: true,
                      lineHeight: 20.0,
                      animationDuration: 2500,
                      percent: 0.8,
                      center: Text("80.0%"),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      progressColor: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                color: Colors.greenAccent,
                onPressed: () {},
                child: Text(
                  'send foods'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
