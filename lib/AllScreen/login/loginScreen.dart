import 'package:Health/AllScreen/login/RegisterScreen.dart';
import 'package:Health/AllScreen/mainScreen.dart';
import 'package:Health/AllWidget/processDialog.dart';
import 'package:Health/main.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:sign_button/sign_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  static const String idScreen = "LoginScreen";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailTextEditingController = TextEditingController();
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
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: RaisedButton(
                        color: Colors.blue,
                        onPressed: () {
                          if (!emailTextEditingController.text.contains("@")) {
                            displayToastMessage(
                                "email address is not Valid", context);
                          } else if (passwordTextEditingController
                              .text.isEmpty) {
                            displayToastMessage(
                                "password is mandatory.", context);
                          } else {
                            LoginAndAuthenticateUser(context);
                          }
                        },
                        child: Text(
                          'Login'.toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SignInButton(
                  buttonType: ButtonType.google,
                  onPressed: () {
                    print('click');
                  }),
              SignInButton(
                  buttonType: ButtonType.facebook,
                  onPressed: () {
                    print('click');
                  }),
              FlatButton(
                splashColor: Colors.blue.shade500,
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, RegisterScreen.idScreen, (route) => false);
                },
                child: Text(
                  'Do not have an Account? Register Here',
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

  // ignore: non_constant_identifier_names
  void LoginAndAuthenticateUser(BuildContext context) async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return ProcessDialog(
            message: "Please wait",
          );
        });
    final User firebaseUser = (await _firebaseAuth
            .signInWithEmailAndPassword(
                email: emailTextEditingController.text,
                password: passwordTextEditingController.text)
            .catchError((errMsg) {
      Navigator.pop(context);
      displayToastMessage("Error" + errMsg.toString(), context);
    }))
        .user;
    if (firebaseUser != null) {
      usersRef.child(firebaseUser.uid).once().then((DataSnapshot snap) {
        if (snap.value != null) {
          Navigator.pushNamedAndRemoveUntil(
              context, mainScreen.idScreen, (route) => false);
          displayToastMessage("You are Logged-in now", context);
        } else {
          Navigator.pop(context);
          _firebaseAuth.signOut();
          displayToastMessage(
              "No record exists for this user. Please create new account",
              context);
        }
      });
    } else {
      Navigator.pop(context);
      displayToastMessage("Error Occured, can not", context);
    }
  }
}
