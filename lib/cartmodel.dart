import 'package:flutter/material.dart';

class Cartmodel extends ChangeNotifier {
  List<Map<String, dynamic>> items = [
    {
      "name": "Avocado",
      "Imagepath": "images/avocado.png",
      "price": 4.00,
      "color": Colors.green
    },
    {
      "name": "Banana",
      "Imagepath": "images/banana.png",
      "price": 2.50,
      "color": Colors.yellow
    },
    {
      "name": "Water",
      "Imagepath": "images/water.png",
      "price": 1.00,
      "color": Colors.blue
    },
    {
      "name": "Checking",
      "Imagepath": "images/chicken.png",
      "price": 12.88,
      "color": Colors.red
    }
  ];

  List<Map<String, dynamic>> cartmodel = [];

  void addtocart(int index) {
    cartmodel.add(items[index]);
    print(cartmodel);
  }

  void deledcart(int index) {
    cartmodel.removeAt(index);
    notifyListeners();
  }

  List getitems() => items;
  List getcartlist() => cartmodel;
}
