import 'dart:convert';
import 'package:fooddelivery/src/models/food_model.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;

class FoodModel extends Model {
  List<Food> _foods = [];

  List<Food> get foods{
    return List.from(_foods);
  }

  void addFood(Food food){
    _foods.add(food);
  }
  void fetchFoods(){
    //http://192.168.31.60/flutter_food_app/api/foods/get_food.php
    //http://192.168.31.60/foodDeliveryApp/public/api/foods
    http.get('http://192.168.31.60/foodDeliveryApp/public/api/foods').then((http.Response response){
//      print("Fetch Data : ${response.body}");
      final List fetchData = json.decode(response.body);
      final List<Food> fetchedFoodItems = [];
      print(fetchData);
      fetchData.forEach((data){
        Food food = Food (
          id: data['id'].toString(),
          category: data['category_id'].toString(),
          imagePath: data['image_path'],
          name: data['title'],
          price:double.parse( data['price'].toString()),
          discount: double.parse(data['discount'].toString()),
          ratings: double.parse(data['ratings'].toString()),
        );
        fetchedFoodItems.add(food);
        });
      
      _foods= fetchedFoodItems;
    });
    print(_foods);
  }
}