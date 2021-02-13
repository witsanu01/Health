import 'package:Health/AllScreen/QRcode/generate.dart';
import 'package:Health/AllScreen/QRcode/scan.dart';
import 'package:Health/AllScreen/mainScreen.dart';
import 'package:flutter/material.dart';

class QRcode extends StatefulWidget {
  @override
  _QRcodeState createState() => _QRcodeState();
  static const String idScreen = "QRcode";
}

class _QRcodeState extends State<QRcode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        elevation: 0.0,
        title: Text(
          'QRcode',
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
      body: Container(
        padding: EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image(
                image: NetworkImage(
                    "https://thumbs.dreamstime.com/b/scanning-phone-qr-code-smartphone-mobile-scan-app-reading-information-online-place-product-84207644.jpg")),
            flatButton("Scan QR code", scan()),
            flatButton("Scan QR code", Generate()),

            
          ],
        ),
      ),
    );
  }
  Widget flatButton(String text,Widget widget){
    return FlatButton(
      child: Text(text),
      onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>widget));
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        side: BorderSide(color: Colors.greenAccent,width: 4.0),
      ),
    );
  }
}
