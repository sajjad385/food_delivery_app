import 'package:flutter/material.dart';
import 'package:fooddelivery/src/pages/favorite_page.dart';
import 'package:fooddelivery/src/pages/home_page.dart';
import 'package:fooddelivery/src/pages/order_page.dart';
import 'package:fooddelivery/src/pages/profile_page.dart';
import 'package:fooddelivery/src/scoped_model/food_model.dart';
class MainScreen extends StatefulWidget {
  final FoodModel foodModel;

  const MainScreen({Key key, this.foodModel}) : super(key: key);
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentTabIndex= 0;
  List<Widget> pages;
  Widget currentPage;

  HomePage homePage;
  OrderPage orderPage;
  FavoritePage favoritePage;
  ProfilePage profilePage;
  @override
  void initState(){
    //call the fetch method on food
    widget.foodModel.fetchFoods();
    super.initState();
    homePage=HomePage(widget.foodModel);
    orderPage =OrderPage();
    favoritePage= FavoritePage();
    profilePage = ProfilePage();
    pages =[homePage,orderPage,favoritePage,profilePage];
    currentPage= homePage;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          setState(() {
            currentTabIndex =index;
            currentPage=pages[index];
          });
        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Orders')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favorite')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile')
          ),BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            title: Text('More')
          ),
        ],
      ),
      body: currentPage,

    );
  }
}
