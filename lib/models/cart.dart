import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';

class Cart extends ChangeNotifier{
  // List of Shoes for Sale
  List<Shoe> shoeList = [
    Shoe(
      name: "Japan S",
      imagePath: "lib/images/sneakerimage1.jpg",
      description: "Classic Style",
      price: "₹7,999",
    ),
    Shoe(
      name: "Gel Lyte",
      imagePath: "lib/images/sneakerimage2.jpg",
      description: "Retro Look",
      price: "₹8,499",
    ),
    Shoe(
      name: "Gel Kayano",
      imagePath: "lib/images/sneakerimage3.jpg",
      description: "Max Comfort",
      price: "₹12,999",
    ),
    Shoe(
      name: "Novablast",
      imagePath: "lib/images/sneakerimage4.jpg",
      description: "Lightweight Run",
      price: "₹10,999",
    ),
  ];

  // Shoes in the Cart
  List<Shoe> userCart = [];

  // Get shoe list
  List<Shoe> getShoeList() {
    return shoeList;
  }

  // Get items in the cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // Add Item to Cart
  void addItemCart(Shoe shoe) {
    shoeList.add(shoe);
    notifyListeners();
  }

  // Remove item from the cart
  void removeItemCart(Shoe shoe) {
    shoeList.remove(shoe);
    notifyListeners();
  }
}
