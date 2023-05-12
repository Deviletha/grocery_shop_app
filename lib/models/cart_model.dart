import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Avocado", "4.0", "assets/avacado.jpeg", Colors.green],
    ["Apple", "2.0", "assets/apple.jpeg", Colors.green],
    ["Banana", "1.0", "assets/banana.jpeg", Colors.green],
    ["Grapes", "3.0", "assets/grapes.jpeg", Colors.green],
    ["Carrot", "1.2", "assets/carrot.jpeg", Colors.green],
    ["Cauliflower", "2.0", "assets/cflowr.jpg", Colors.green],
    ["Green Chilli", "1.0", "assets/chilli.jpeg", Colors.green],
    ["Garlic", "1.2", "assets/garlic.jpg", Colors.green],
    ["Ginger", "1.0", "assets/gonger.jpeg", Colors.green],
    ["Onion", "2.0", "assets/onion.jpeg", Colors.green],
    ["Potato", "2.0", "assets/potato.jpeg", Colors.green],
    ["Tomato", "1.5", "assets/tomato.jpg", Colors.green],
    ["Chicken", "5.0", "assets/chicken.jpeg", Colors.green],
    ["Water", "1.0", "assets/bottle.jpg", Colors.green],
  ];

  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  void addItemToCart(int index){
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItemFromCart(int index){
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotal(){
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++ ) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
