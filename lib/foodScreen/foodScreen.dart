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
              Navigator.pushNamedAndRemoveUntil(context, MainScreen.idScreen, (route) => false);
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
                "30 min",
                style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              footer: new Text(
                "walk ",
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
                center: new Text("30 min"),
                 footer: new Text(
                "Dance",
                style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
              ),
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
                        "100%",
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
                      leading: new Text("หมู่ที่ 1 เนื้อ ไข่ นม"),
                      trailing: new Text("เนื้อปลา"),
                      percent: 0.2,
                      center: Text("150cal"),
                      linearStrokeCap: LinearStrokeCap.butt,
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
                      leading: new Text("หมู่ที่ 2 ข้าว น้ำตาล"),
                      trailing: new Text("ข้าวเจ้า"),
                      percent: 0.2,
                      center: Text("60 cal"),
                      linearStrokeCap: LinearStrokeCap.butt,
                      progressColor: Colors.blueGrey,
                    ),
                  ),
                   Padding(
                    padding: EdgeInsets.all(15.0),
                    child: new LinearPercentIndicator(
                      width: 170.0,
                      animation: true,
                      animationDuration: 1000,
                      lineHeight: 20.0,
                      leading: new Text("หมู่ที่ 3 ผัก"),
                      trailing: new Text("ผักกาด ผักบุ้ง"),
                      percent: 0.2,
                      center: Text("20 cal"),
                      linearStrokeCap: LinearStrokeCap.butt,
                      progressColor: Colors.greenAccent,
                    ),
                  ),
                     Padding(
                    padding: EdgeInsets.all(15.0),
                    child: new LinearPercentIndicator(
                      width: 170.0,
                      animation: true,
                      animationDuration: 1000,
                      lineHeight: 20.0,
                      leading: new Text("หมู่ที่ 4 ผลไม้"),
                      trailing: new Text("ส้ม แอปเปิ้ล กล้วย"),
                      percent: 0.2,
                      center: Text("30 cal"),
                      linearStrokeCap: LinearStrokeCap.butt,
                      progressColor: Colors.red,
                    ),
                  ),
                   Padding(
                    padding: EdgeInsets.all(15.0),
                    child: new LinearPercentIndicator(
                      width: 170.0,
                      animation: true,
                      animationDuration: 1000,
                      lineHeight: 20.0,
                      leading: new Text("หมู่ที่ 5 ไขมัน"),
                      trailing: new Text("น้ำมันมะพร้าว"),
                      percent: 0.2,
                      center: Text("5%"),
                      linearStrokeCap: LinearStrokeCap.butt,
                      progressColor: Colors.yellow,
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
                onPressed: () {
                  
                },
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
