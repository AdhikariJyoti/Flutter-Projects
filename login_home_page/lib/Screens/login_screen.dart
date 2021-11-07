import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_home_page/Screens/home_screen.dart';

TextStyle myStyle = TextStyle(fontSize: 25);

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String username;
  late String password;
  @override
  Widget build(BuildContext context) {
    final usernameField = TextField(
      onChanged: (val){
        setState(() {
          username=val;
        });
      },
      style: myStyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10.0),
          hintText: "Username",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
          )),
    );

    final passwordField = TextField(
        onChanged: (val) {
          setState(() {
            password = val;
          });
        },
      obscureText: true,
      style: myStyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10.0),
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
          )),
    );
    final myLoginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(20.0),
      color: Colors.blue,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20.0),
        onPressed: () {

          if(username=="zyan" && password=="zyan1234"){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen(username)));
          }else{
            print("Login is failed");
          }
        },
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    );
    return Scaffold(

      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.supervised_user_circle,
                      size: 100,
                    ),
                    SizedBox(
                      height: 150,
                    ),
                    usernameField,
                    SizedBox(
                      height: 15,
                    ),
                    passwordField,
                    SizedBox(
                      height: 20,
                    ),
                    myLoginButton,
                    SizedBox(height: 30,),
                    Text(
                      '#FlutterWithZyan',
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),


                  ],
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}
