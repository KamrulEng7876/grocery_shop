// import 'package:flutter/material.dart';
//
// class CartModel extends ChangeNotifier {
// //   list of item on sale
//
//   final List _shopItem = [
//     //   [  itemName, itemPrice, imagePath, color]
//
//     ["Apricot", "40.00", "assets/images/apricot.webp", Colors.lightGreen],
//     ["Avocado", "30.00", "assets/images/avocado1.jpg", Colors.pinkAccent],
//     ["Banana", "50.00", "assets/images/banana.png", Colors.teal],
//     ["Carrot", "40.00", "assets/images/carrot.png", Colors.lightGreenAccent],
//     ["Pitaya", "35.00", "assets/images/pitaya.jpeg", Colors.limeAccent],
//     ["Watermelon", "60.00", "assets/images/watermelon.webp", Colors.tealAccent],
//     ["Avocado", "40.00", "assets/images/avocado.jpg", Colors.lightGreen],
//   ];
//
//   // list of cart item
//   List _cartItem = [];
//
//   get shopItem => _shopItem;
//
//   get cartItem => _cartItem;
//
// //   add item to cart
//   void addItemToCart(int index) {
//     _cartItem.add(_shopItem[index]);
//     notifyListeners();
//   }
//
// //   remove item from cart
//   void removeItemFromCart(int index) {
//     _cartItem.removeAt(index);
//     notifyListeners();
//   }
//
// //   calculate total price
//   String calculateTotal() {
//     double totalPrice = 0;
//     for (int i = 0; i < _cartItem.length; i++) {
//       totalPrice += double.parse(_cartItem[i][1]);
//     }
//     return totalPrice.toStringAsFixed(2);
//   }
// }


//       Chat GPt


import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItem = [

    //   [  itemName, itemPrice, imagePath, color]


    ["Apricot", "40.00", "assets/images/apricot.webp", Colors.lightGreen],
    ["Avocado", "30.00", "assets/images/avocado1.jpg", Colors.pinkAccent],
    ["Banana", "50.00", "assets/images/banana.png", Colors.teal],
    ["Carrot", "40.00", "assets/images/carrot.png", Colors.lightGreenAccent],
    ["Pitaya", "35.00", "assets/images/pitaya.jpeg", Colors.limeAccent],
    ["Watermelon", "60.00", "assets/images/watermelon.webp", Colors.tealAccent],
    ["Avocado", "40.00", "assets/images/avocado.jpg", Colors.lightGreen],
  ];

  final List _cartItem = [];

  List get shopItem => _shopItem;
  List get cartItem => _cartItem;

  void addItemToCart(int index) {
    _cartItem.add(_shopItem[index]); // Add full item with color
    notifyListeners();
  }

  void removeItemFromCart(int index) {
    _cartItem.removeAt(index);
    notifyListeners();
  }

  String calculateTotal() {
    double total = 0;
    for (var item in _cartItem) {
      total += double.parse(item[1]); // Convert string price to double
    }
    return total.toStringAsFixed(2);
  }
}
