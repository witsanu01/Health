import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';

class scan extends StatefulWidget {
  @override
  scanState createState() => scanState();
}

class scanState extends State<scan> {
  String qrResult = 'Not yet Scaned';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        elevation: 0.0,
        title: Text(
          'Scan',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "RESULT",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              qrResult,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18.0),
            ),
            FlatButton(
              child: Text('SCAN QR CODE'),
              onPressed: () async {
                String scaning = await BarcodeScanner.scan();
                setState(() {
                  qrResult = scaning;
                });
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: BorderSide(color: Colors.greenAccent, width: 3.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
