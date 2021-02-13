import 'package:Health/AllScreen/Emercency/MainDrawer2.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:Health/AllScreen/mainScreen.dart';
import 'package:flutter/material.dart';


List _elements = [
  {'name': 'เหตูด่วนเหตุร้าย 191', 'group': 'A'},
  {'name': 'ไฟไหม้199', 'group': ' B'},
  {'name': 'เจ็บป่วยฉุกเฉิน', 'group': 'A'},
  {'name': 'จส.100', 'group': ' B'},
  {'name': 'โรงพยาบาลตำรวจ1669', 'group': 'A'},
  {'name': 'สายด่วนจราจร1197', 'group': ' B'},
];
class EmergencyScreen extends StatefulWidget {
  static const String idScreen  = "EmergencyScreen";
  @override
  _EmergencyScreenState createState() => _EmergencyScreenState();
}

class _EmergencyScreenState extends State<EmergencyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        elevation: 0.0,
        title: Text(
          'Emergency call',
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
                  context,mainScreen.idScreen, (route) => false);
            },
          )
        ],
      ),
    drawer: Drawer(
    child: MainDrawer2(),),
      body: GroupedListView<dynamic, String>(
        elements: _elements,
        groupBy: (element) => element['group'],
        groupComparator: (value1, value2) => value2.compareTo(value1),
        itemComparator: (item1, item2) =>
            item1['name'].compareTo(item2['name']),
        order: GroupedListOrder.DESC,
        useStickyGroupSeparators: true,
        groupSeparatorBuilder: (String value) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            value,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        itemBuilder: (c, element) {
          return Card(
            elevation: 8.0,
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: Container(
              child: ListTile(
                contentPadding:
                EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                leading: Icon(Icons.account_circle),
                title: Text(element['name']),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
          );
        },
      ),
    );

  }
}
