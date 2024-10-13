import 'package:coffee_app/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  //coffee for sale list
  final List<Coffee> _shop = [
    //black coffee
    Coffee(
      name: 'Long Black',
      price: "500",
      imagePath: "lib/images/coffee-cup.png",
    ),

    //latte
    Coffee(
      name: 'Latte',
      price: "500",
      imagePath: "lib/images/latte-art.png",
    ),

    //espresso
    Coffee(
      name: 'Espresso',
      price: "500",
      imagePath: "lib/images/coffee.png",
    ),

    //hot coffee
    Coffee(
      name: 'Hot Black',
      price: "500",
      imagePath: "lib/images/hot-coffee.png",
    ),
  ];

  //user cart
  List<Coffee> _userCart = [];

  //get coffe list
  List<Coffee> get coffeeShop => _shop;

  //get user cart
  List<Coffee> get userCart => _userCart;

  //add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  //remove item from the cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
