import 'package:flutter/material.dart';
import 'package:fooddelivery/src/models/food_model.dart';
import 'package:fooddelivery/src/scoped_model/food_model.dart';
import 'package:fooddelivery/src/screens/main_screen.dart';
import 'package:scoped_model/scoped_model.dart';
import 'home_screen.dart';

class MyApp extends StatelessWidget {

  final FoodModel foodModel = FoodModel();
  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      title: "Food Delivery App",
//      theme: ThemeData(
//        primaryColor: Colors.blueAccent,
//      ),
//      home: MainScreen(),
//    );
//  }
  Widget build(BuildContext context) {
    return ScopedModel<FoodModel>(
      model:foodModel,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Food Delivery App",
        theme: ThemeData(
          primaryColor: Colors.blueAccent,
        ),
        home: MainScreen(foodModel: foodModel),
      ),
    );
  }
}
