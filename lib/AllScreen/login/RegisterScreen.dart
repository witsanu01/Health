import 'package:Health/AllScreen/login/loginScreen.dart';
import 'package:Health/AllWidget/processDialog.dart';
import 'package:Health/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegisterScreen extends StatefulWidget {
  static const String idScreen = "RegisterScreen";




  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailTextEditingController = TextEditingController();
TextEditingController nameTextEditingController = TextEditingController();
TextEditingController phoneTextEditingController = TextEditingController();
TextEditingController passwordTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 65.0,
              ),
              Image(
                image: AssetImage('assets/logo12.png'),
                width: 250.0,
                height: 250.0,
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "",
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 1.0,
                    ),
                    TextField(
                      controller: emailTextEditingController,
                      decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(fontSize: 14.0),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 10.0,
                          ),
                          icon: Icon(Icons.email)),
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(
                      height: 1.0,
                    ),

                    TextField(
                      controller: passwordTextEditingController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(fontSize: 14.0),
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0,
                        ),
                        icon: Icon(Icons.lock),
                      ),
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(
                      height: 1.0,
                    ),
                    TextField(
                      controller: phoneTextEditingController,
                      decoration: InputDecoration(
                        labelText: 'Phone',
                        labelStyle: TextStyle(fontSize: 14.0),
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0,
                        ),
                        icon: Icon(Icons.phone),
                      ),
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(
                      height: 1.0,
                    ),
                    TextField(
                      controller: nameTextEditingController,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        labelStyle: TextStyle(fontSize: 14.0),
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0,
                        ),
                        icon: Icon(Icons.person),
                      ),
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(
                      height: 1.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: RaisedButton(
                        color: Colors.blue,
                        onPressed: () {
                          if(nameTextEditingController.text.length<4)
                          {
                            Fluttertoast.showToast(msg: "name must be atleast 3 characters");

                          }
                          else if(!emailTextEditingController.text.contains("@")){
                            displayToastMessage("email address is not Valid", context);
                          }
                          else if(phoneTextEditingController.text.isEmpty)
                          {
                            displayToastMessage("phone number is mandatory", context);
                          }
                          else if(passwordTextEditingController.text.length<7)
                          {
                            displayToastMessage("password must be atleast 6 characters", context);
                          }
                          else
                          {
                            registerNewUser(context);
                          }
                        },
                        child: Text(
                          'Register'.toUpperCase(),
                          style: TextStyle(color: Colors.white,fontSize: 14.0,),
                        ),
                      ),
                    ),
                  ],
                ),
              ),


              FlatButton(
                splashColor: Colors.blue.shade500,
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context,LoginScreen.idScreen, (route) => false);
                },
                child: Text(
                  'Already have an Account? Login Here',
                  style: TextStyle(color: Colors.black45),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

 void registerNewUser(BuildContext context) async {
   showDialog(
       context: context,
       barrierDismissible: false,
       builder: (BuildContext context) {
         return ProcessDialog(
           message: "Register Please wait",
         );
       });
   final User firebaseUser = (await _firebaseAuth
          .createUserWithEmailAndPassword(
               email: emailTextEditingController.text,
               password: passwordTextEditingController.text)
          .catchError((errMsg) {
     Navigator.pop(context);
    displayToastMessage("Error" + errMsg.toString(), context);
   })).user;
   if (firebaseUser != null) {
     Map userdataMap = {
      "name": nameTextEditingController.text.trim(),
       "Phone": phoneTextEditingController.text.trim(),
     "password": passwordTextEditingController.text.trim(),
      "Email": emailTextEditingController.text.trim(),
    };
     usersRef.child(firebaseUser.uid).set((userdataMap));
    displayToastMessage(
        "Congratulation, your account has been create.", context);
    Navigator.pushNamedAndRemoveUntil(
         context, LoginScreen.idScreen, (route) => false);
   } else {
     Navigator.pop(context);
     displayToastMessage("New user account has not been Create", context);
  }
 }
}

 displayToastMessage(String message, BuildContext context) {
   Fluttertoast.showToast(msg: message);
}
