import 'package:flutter/material.dart';
import 'package:nike_app/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: "Zion 2 PF",
        price: "127",
        imagePath: "assets/zion1.png",
        description:
            "Zion 2 has more Air cushioning than its predecessor, so you'll get into the clouds easier and land softer."),

    Shoe(
        name: "Air Jordan I High G",
        price: "112",
        imagePath: "assets/aj1HighG.png",
        description:
            "Feel unbeatable, from the tee box to the final putt. Inspired by one of the most iconic sneakers of all time"),
    Shoe(
        name: "Air Jordan Legacy 312",
        price: "379",
        imagePath: "assets/aj31.png",
        description:
            "The Air Jordan Legacy 312 Low celebrates Michael Jordan's legacy with this shout-out to Chicago's 312 area code."),
    Shoe(
        name: "Air Jordan 1 Mid",
        price: "100",
        imagePath: "assets/ajHolyday.png",
        description:
            "Rich grain leather with bright details make this pair shine like festive lights."),
    Shoe(
        name: "Max Aura 4",
        price: "349",
        imagePath: "assets/marAura1.png",
        description: "The lightweight cushioning, Take flight on the court with timeless style and cloud-like heel support."),
    Shoe(
        name: "Air Jordan XXXVI",
        price: "899",
        imagePath: "assets/aj36.png",
        description: "the Air Jordan XXXVI SE 'Black Samurai' celebrates the purpose and pride that comes with repping your country's colours."),
     Shoe(
        name: "Air Jordan I High G",
        price: "112",
        imagePath: "assets/zoomFreak1.png",
        description:
            "Feel unbeatable, from the tee box to the final putt. Inspired by one of the most iconic sneakers of all time"),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  removeFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
