import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp((LoginPage()));
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MyLoginPage(),
    );
  }
}

class MyLoginPage extends StatefulWidget {
  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  TextStyle loginStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 20,
  );
  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      style: loginStyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: 'Please type your email here',
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
    );
    final passwordField = TextField(
      style: loginStyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: 'Please type your password here',
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
    );
    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.blue,
      child: MaterialButton(
          minWidth: 40,
          padding: EdgeInsets.all(10.0),
          onPressed: () {},
          child: Text("Login",
              textAlign: TextAlign.center,
              style: loginStyle.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ))),
    );
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assests/images/splash.png"),
                  fit: BoxFit.fill)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 155.0,
                    child: (Image.asset('assests/images/preety.jpg')),
                  ),
                  SizedBox(
                    height: 45.0,
                  ),
                  emailField,
                  SizedBox(height: 30.0),
                  passwordField,
                  SizedBox(height: 30.0),
                  loginButton,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/* stateless ma sabai kura afai maintain huncha stateless ma
 kei maintain hudaina jastai button . button ma click nai garney ho
  typ bahek kei garna pardaina */
