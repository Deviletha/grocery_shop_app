import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Avocado", "4.0", "assets/avacado.jpeg", Colors.green],
    ["Apple", "2.0", "assets/apple.jpeg", Colors.red],
    ["Banana", "1.0", "assets/banana.jpeg", Colors.yellow],
    ["Grapes", "3.0", "assets/grapes.jpeg", Colors.deepPurple],
    ["Carrot", "1.2", "assets/carrot.jpeg", Colors.deepOrangeAccent],
    ["Cauliflower", "2.0", "assets/cflowr.jpg", Colors.green],
    ["Green Chilli", "1.0", "assets/chilli.jpeg", Colors.green],
    ["Garlic", "1.2", "assets/garlic.jpg", Colors.grey],
    ["Ginger", "1.0", "assets/gonger.jpeg", Colors.brown],
    ["Onion", "2.0", "assets/onion.jpeg", Colors.brown],
    ["Potato", "2.0", "assets/potato.jpeg", Colors.brown],
    ["Tomato", "1.5", "assets/tomato.jpg", Colors.red],
    ["Chicken", "5.0", "assets/chicken.jpeg", Colors.brown],
    ["Water", "1.0", "assets/bottle.jpg", Colors.blue],
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
