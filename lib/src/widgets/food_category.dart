import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/src/data/category_data.dart';
import 'package:fooddelivery/src/models/categroy_model.dart';
import 'package:fooddelivery/src/widgets/food_card.dart';


class FoodCategory extends StatelessWidget {

  final List<Category> _categories=categories;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context, int index){
          return FoodCard(
              _categories[index].imagePath,
              _categories[index].categoryName,
              _categories[index].numberOfItems,
          );
        },

      ),
    );
  }
}
