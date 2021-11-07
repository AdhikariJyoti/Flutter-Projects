import 'package:big_ecommerce_project/screens/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter E-commerce App",
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.white
      ),
      home: HomePage(),
    );
  }
}


