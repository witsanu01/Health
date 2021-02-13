import 'dart:async';
import 'package:Health/AllScreen/GoogleMap/searchScreen.dart';
import 'package:Health/AllScreen/mainScreen.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Googlemap extends StatefulWidget
{
  static const String idScreen = "Googlemap";

  @override
  _GooglemapState createState() => _GooglemapState();
}

class _GooglemapState extends State<Googlemap> {
  Completer<GoogleMapController> _controllerGoogleMap = Completer();
  GoogleMapController newGoogleMapController;

  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  Position currentPosition;
  var geoLocator = Geolocator();
  double bottomPaddingOfMap = 0;


  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        elevation: 0.0,
        title: Text(
          'Google Map ',
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

      drawer:Container(
        color: Colors.white,
        width: 255.0,
        child: ListView(
          children: [
            Container(
              height: 165.0,
              child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    Image.asset('',height: 65.0, width: 65.0,),
                    SizedBox(width: 16.0,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Profile Name',style: TextStyle(fontSize: 16.0,fontFamily: 'Brand-Bold'),),
                        SizedBox(height: 6.0,),
                        Text('Visit Profile'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
                ],
        ),
      ),
      body: Stack(
        children: [
          GoogleMap(
            padding: EdgeInsets.only(bottom: bottomPaddingOfMap),
            mapType: MapType.normal,
            myLocationButtonEnabled:true,
            initialCameraPosition: _kGooglePlex,
            myLocationEnabled: true,
            zoomGesturesEnabled: true,
            zoomControlsEnabled: true,
            onMapCreated: (GoogleMapController controller)
            {
              _controllerGoogleMap.complete(controller);
              newGoogleMapController = controller;
              setState(() {
                bottomPaddingOfMap = 300.0;
              });
            },
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: Container(
              height: 300.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0),topRight: Radius.circular(15.0)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 16.0,
                    spreadRadius: 0.5,
                    offset: Offset(0.7,0.7),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 6.0,),
                    Text('Help people',style: TextStyle(fontSize: 12.0),),
                    Text('Where to?',style: TextStyle(fontSize: 20.0,fontFamily: "Brand-Bold"),),
                    SizedBox(height: 20.0,),

                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScreen(),),);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54,
                              blurRadius: 6.0,
                              spreadRadius: 0.5,
                              offset: Offset(0.7,0.7),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.search,color: Colors.blue,),
                            SizedBox(width: 30.0,),
                            Text('Search Drop off')
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 24.0,),
                    Row(
                      children: [
                        Icon(Icons.home,color: Colors.grey,),
                        SizedBox(width: 12.0,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                               ""
                            ),
                            SizedBox(height: 4.0,),
                            Text('Your living home address',style: TextStyle(color: Colors.black45,fontSize: 12.0),),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 10.0,),
                    SizedBox(height: 16.0,),
                    Row(
                      children: [
                        Icon(Icons.work,color: Colors.grey,),
                        SizedBox(width: 12.0,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Add work'),
                            SizedBox(height: 4.0,),
                            Text('Your office address',style: TextStyle(color: Colors.black45,fontSize: 12.0),),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: FloatingActionButton(
              mini: true,
              onPressed: (){},
              backgroundColor: Colors.white,
              child: Icon(Icons.gps_fixed,color: Colors.black,),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 54,
                  alignment: Alignment.topRight,
                  margin: const EdgeInsets.only(top: 17,right: 15,left: 15),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RaisedButton(
                        onPressed: (){},
                        highlightElevation: 0,
                        elevation: 0,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 13, bottom: 13, right: 40),
                          child: Text("Elderly",style: TextStyle(
                            fontSize: 21,fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,vertical: 11,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(33.0),
                          ),
                          child: OutlineButton.icon(onPressed: (){},
                          icon: Icon(Icons.access_time),
                          label: Text("car"),
                          shape: StadiumBorder(),
                            borderSide: BorderSide(color: Colors.white),
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
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(color:Colors.black,size: 21),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.drive_eta),
          title: Text("car",style: TextStyle(fontSize:12),)
          ),
          BottomNavigationBarItem(icon: Icon(Icons.hotel),
            title: Text("home")
            ,),
        ],
      ),
    );
  }
  Widget addessList(){
    return InkWell(
      child:  Padding(
        padding:const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black12,
                  child: Icon(Icons.star,size:17,color:Colors.black),
                  radius: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Text("nearly car",style: TextStyle(
                    fontSize: 15,fontWeight: FontWeight.w700
                  ),),
                ),
              ],
            ),
            Icon(Icons.keyboard_arrow_right),
          ],
        ),
      ),
      onTap: (){},
    );

  }
}
