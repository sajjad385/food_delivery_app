import 'package:flutter/material.dart';
import 'package:fooddelivery/src/screens/main_screen.dart';
import 'home_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food Delivery App",
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: MainScreen(),
    );
  }
}
