import 'package:flutter/foundation.dart';
import 'package:food/models/food.dart';

class CardItem {
  Food food;
  List<Addon> selectAddons;
  int quantity;

  CardItem({required this.food, required this.selectAddons, this.quantity = 1});

  double get totalPrice {
    double addonsPrice = selectAddons.fold(
      0,
      (sum, addon) => sum + addon.prize,
    );
    return (food.price + addonsPrice) * quantity;
  }
}
