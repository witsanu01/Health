
import 'package:Health/Assistants/requestAssistant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
  static const String idSCreen = "SearchMap";
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController pickUpTextEditingController = TextEditingController();
  TextEditingController dropOffEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // String placeAddress = Provider.of<AppData>(context).pickUpLocation.placeId??"";
    // pickUpTextEditingController.text=placeAddress;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        elevation: 0.0,
        title: Text(
          'Search Googlemap',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,

      ),
      body: Column(
        children:[
          Container(
            height: 215.0,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 6.0,
                  spreadRadius: 0.5,
                  offset: Offset(0.7, 0.7),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.only(
                  left: 25.0, top: 20.0, right: 25.0, bottom: 20.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 5.0,
                  ),
                  Stack(
                    children: [
                      // GestureDetector(
                      //   onTap:(){
                      //     Navigator.pop(context);
                      //   },
                      //   child: Icon(Icons.arrow_back),
                      // ),
                      Center(
                        child: Text(
                          'Elderly Search',
                          style: TextStyle(
                              fontSize: 18.0, fontFamily: "Brand-Bold"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/map2.png",
                        height: 16.0,
                        width: 16.0,
                      ),
                      SizedBox(
                        width: 18.0,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(3.0),
                            child: TextField(
                              controller: pickUpTextEditingController,
                              decoration: InputDecoration(
                                hintText: "PickUp Location",
                                fillColor: Colors.grey[400],
                                filled: true,
                                border: InputBorder.none,
                                isDense: true,
                                contentPadding: EdgeInsets.only(
                                    left: 11.0, top: 8.0, bottom: 8.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/map2.png",
                        height: 16.0,
                        width: 16.0,
                      ),
                      SizedBox(
                        width: 18.0,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(3.0),
                            child: TextField(
                              onChanged: (val){
                                findPlace(val);
                              },
                              controller: dropOffEditingController,
                              decoration: InputDecoration(
                                hintText: "Where to?",
                                fillColor: Colors.grey[400],
                                filled: true,
                                border: InputBorder.none,
                                isDense: true,
                                contentPadding: EdgeInsets.only(
                                    left: 11.0, top: 8.0, bottom: 8.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void findPlace(String placeName) async{
    if(placeName.length>1)
    {
      String autoCompleteUrl =
          "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$placeName&key=$kMacOsToPhysicalKey&sessiontoken=123456789&components=country:TH";

      var res = await RequestAssistant.getRequest(autoCompleteUrl);
      if(res == "failed")
      {
        return ;
      }
      print("Places Predictions Response::") ;
      print(res) ;
    }
  }
}