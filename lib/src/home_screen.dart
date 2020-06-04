import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/src/widgets/bought_foods.dart';
import 'package:fooddelivery/src/widgets/food_category.dart';
import 'package:fooddelivery/src/widgets/search_field.dart';

import 'widgets/home_to_info.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final textStyle=  TextStyle(fontSize: 32.0,fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 40.0,left: 20.0,right: 20.0),
        children: <Widget>[
          HomeTopInfo(),
          FoodCategory(),
          SizedBox(height: 20.0),
          SearchField(),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Frequently Bought Foods',style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),),
              GestureDetector(
                onTap: (){ },
                child: Text('View All',style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.orangeAccent
                ),),
              )
            ],
          ),
          SizedBox(height: 20.0),
          Container(
            child: BoughtFoods(),
          ),
        ],
      ),
    );
  }
}

