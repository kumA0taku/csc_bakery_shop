import 'package:flutter/material.dart';

class BakeItem extends ChangeNotifier {
  final int id;
  final String name;
  final String price;
  final String imageUrl;
  final bool isFavorite;
  final String subMenu;

  BakeItem({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.isFavorite,
    required this.subMenu,
  });




final List<BakeItem> _listCakes = [
  BakeItem(
    id: 1,
    name: 'Banana BakeItem',
    price: '55.00',
    imageUrl: 'assets/box1.jpeg',
    isFavorite: false,
    subMenu: 'cake_box',
  ),
  BakeItem(
    id: 2,
    name: 'Butter cake',
    price: '55.00',
    imageUrl: 'assets/box2.jpg',
    isFavorite: false,
    subMenu: 'cake_box',
  ),
  BakeItem(
    id: 5,
    name: 'Red Velvet Brownies',
    price: '89.00',
    imageUrl: 'assets/box5.jpg',
    isFavorite: false,
    subMenu: 'cake_box',
  ),
  BakeItem(
    id: 6,
    name: 'Brownies Almond',
    price: '94.00',
    imageUrl: 'assets/box6.jpeg',
    isFavorite: false,
    subMenu: 'cake_box',
  ),
  BakeItem(
    id: 3,
    name: 'Coffee BakeItem Pudding',
    price: '99.00',
    imageUrl: 'assets/box3.jpeg',
    isFavorite: false,
    subMenu: 'cake_box',
  ),
  BakeItem(
    id: 4,
    name: 'Puding BakeItem Tiramisu',
    price: '99.00',
    imageUrl: 'assets/box4.jpeg',
    isFavorite: false,
    subMenu: 'cake_box',
  ),
  BakeItem(
    id: 7,
    name: 'Chocolate Croissant',
    price: '75.50',
    imageUrl: 'assets/crois2.jpeg',
    isFavorite: false,
    subMenu: 'cro_issant',
  ),
  BakeItem(
    id: 8,
    name: 'Plain Croissant',
    price: '69.50',
    imageUrl: 'assets/crois1.png',
    isFavorite: false,
    subMenu: 'cro_issant',
  ),
];

  // list of cart items
  List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _listCakes;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_listCakes[index]);
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
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }

}



