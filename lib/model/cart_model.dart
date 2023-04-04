import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = const [
    // [ itemName, itemPrice, imagePath, color ]
    ["Banana Cake", "55.00", "assets/box1.jpeg", Colors.brown],
    ["Butter cake", "55.00", "assets/box2.jpg", Colors.brown],
    ["Red Velvet Brownies", "89.00", "assets/box5.jpg", Colors.brown],
    ["Brownies Almond", "94.00", "assets/box6.jpeg", Colors.brown],
    ["Coffee Cake Pudding", "99.00", "assets/box3.jpeg", Colors.brown],
    ["Puding Cake Tiramisu", "99.00", "assets/box4.jpeg", Colors.brown],
    ["Chocolate Croissant", "75.50", "assets/crois2.jpeg", Colors.brown],
    ["Plain Croissant", "99.00", "assets/crois1.png", Colors.brown],
  ];

  // list of cart items
  List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]); // the [1] is array no. 1 ==> it is a price of item
    }
    return totalPrice.toStringAsFixed(2);
  }
}
