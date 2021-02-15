import 'dart:html';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';




class UploadPhotoPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _UploadPhotoPageState();
  }
}

class _UploadPhotoPageState extends State<UploadPhotoPage> {
  File sampleImage;
  final formKey = new GlobalKey<FormState>();

  Future getImage()async
  {
   var tempImage = await ImagePicker.pickImage(source: ImageSource.gallery);
   setState(() {
    sampleImage = tempImage as File;
   });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("upload Image"),
        centerTitle: true,
      ),
      body: new Center(
        child: sampleImage == null ? Text("Select an Image") : enableUpload,
      ),
      floatingActionButton: new FloatingActionButton(
          onPressed: getImage, tooltip: 'Add Image',child: new Icon(Icons.add_a_photo_rounded),
    )
    );
  }
  Widget enableUpload()
  {
   return new Form
     (
   key: formKey,
     child: Column(
       children: [
         Image.file(sampleImage ,height: 330.0,width: 660.0,),
         SizedBox(height: 15.0,),
         TextFormField(
           decoration: new InputDecoration(labelText: 'Description'),
           validation:(value){
             return value.isEmpty ? 'Blod Description is requied' : null;
           },
         ),
       ],
     ),
   );
  }
}
