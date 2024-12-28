import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //list of items
  final List _shopItems = [
    ["Avocado", "4.00", "lib/assets/avocardo.png", Colors.green],
    ["Banana", "2.50", "lib/assets/banana.jpg", Colors.yellow],
    ["apple", "12.80", "lib/assets/apple.jpg", Colors.red],
    ["Water", "1.00", "lib/assets/water.jpg", Colors.blue],
  ];

  // list of cart itmes
  List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  //add item
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  //remove item cart
  void removeItemCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //calculate price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
