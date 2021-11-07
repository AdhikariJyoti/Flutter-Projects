import  'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



void main()
{
  runApp((RegisterPage()));

}
class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home : MyRegisterPage(),
    );
  }

}
class MyRegisterPage extends StatefulWidget {
  @override
  _MyRegisterPageState createState() => _MyRegisterPageState();
}
class _MyRegisterPageState extends State <MyRegisterPage> {

  TextStyle registerStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize:  20,
  );
  @override
  Widget build (BuildContext context){
    final usernameField = TextField(
      style: registerStyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 25.0),
          hintText: 'enter your username',
          border:OutlineInputBorder(
              borderRadius :BorderRadius.circular(8.0)
          )
      ),
    );

    final emailField = TextField(
      style: registerStyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 25.0),
          hintText: 'Enter your email here',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0)
          )

      ),
    );
    final passwordField = TextField(
      style: registerStyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 25.0),
          hintText: 'Enter your password here',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          )
      ),
    );
    final password1Field = TextField(
      style: registerStyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 25.0),
          hintText: 'Please confirm your password',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          )
      ),

    );
    final registerButton = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.blue,
        child : MaterialButton(
          minWidth: 40,
          padding :EdgeInsets.all(10.0),
          onPressed: () {},
          child: Text(
            "Register",
            textAlign: TextAlign.center,
            style: registerStyle.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
    );
    return Scaffold(
      body: Center(
        child : Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assests/images/splash.png"),
                  fit:BoxFit.fill
              )),
          child: BackdropFilter(
            filter: ImageFilter.blur(
                sigmaX: 8,
                sigmaY: 8
            ),

            child :Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 45.0,
                  ),
                  usernameField,
                  SizedBox(
                    height: 30.0,
                  ),
                  emailField,
                  SizedBox(
                    height: 35.0,
                  ),
                  passwordField,
                  SizedBox(
                    height: 35.0,
                  ),
                  password1Field,
                  SizedBox(
                    height: 30.0,
                  ),
                  registerButton,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}