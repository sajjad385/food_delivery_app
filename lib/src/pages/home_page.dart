import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/src/data/food_data.dart';
import 'package:fooddelivery/src/scoped_model/food_model.dart';
import 'package:fooddelivery/src/widgets/bought_foods.dart';
import 'package:fooddelivery/src/widgets/food_category.dart';
import 'package:fooddelivery/src/widgets/search_field.dart';
import '../models/food_model.dart';
import '../widgets/home_to_info.dart';


class HomePage extends StatefulWidget {
  final FoodModel foodModel;

  const HomePage( this.foodModel);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//  List<Food> _foods= foods;

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
          Column(
            children:widget.foodModel.foods.map(_buildFoodItems).toList(),
          ),
        ],
      ),
    );
  }
  Widget _buildFoodItems(Food food){
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: BoughtFoods(
        id: food.id,
        name: food.name,
        imagePath: "images/"+food.imagePath,
        price: food.price,
        ratings: food.ratings,
        category: food.category,
        discount: food.discount,
      ),
    );
  }
}

