import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Generate extends StatefulWidget {
  @override
  _GenerateState createState() => _GenerateState();
}

class _GenerateState extends State<Generate> {
  String qrData = "www.google.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        elevation: 0.0,
        title: Text(
          'Generate',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              QrImage(data: qrData),
              SizedBox(height: 20.0,),
              Text(
                "Get your data/link to the QR Code",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              TextField(
                controller: qrText,
                decoration: InputDecoration(
                  hintText: "Enter the data/link",
                ),
              ),
              FlatButton(
                padding: EdgeInsets.all(15.0),
                child: Text("Generate QR CODE"),
                onPressed: () {
                  if (qrText.text.isEmpty){
                     setState(() {
                       qrData = "https.//flutter.dev";
                     });
                  }else{
                    setState(() {
                      qrData = qrText.text;
                    });
                  }
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(color: Colors.blue, width: 3.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  final qrText = TextEditingController();
}
