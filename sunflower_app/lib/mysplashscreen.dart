import 'package:flutter/material.dart';

import 'package:splashscreen/splashscreen.dart';
import 'package:sunflower_app/homepage.dart';
class MySplashScreen extends StatefulWidget {


  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 5,
        navigateAfterSeconds: new HomePage(),
        title: new Text('ZYAN APP'),
        image: new Image.asset('img/zyan.jpg'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),

        photoSize: 100.0,
        loaderColor: Colors.red,
        loadingText: Text("Loading")
    );
  }
}
