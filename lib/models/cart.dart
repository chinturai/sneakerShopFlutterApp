import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';

class Cart extends ChangeNotifier{
  // List of Shoes for Sale
  List<Shoe> shoeList = [
    Shoe(
      name: "Japan S",
      imagePath: "lib/images/sneakerimage1.jpg",
      description: "Classic comfort for everyday wear",
      price: "₹7,999",
    ),
    Shoe(
      name: "Gel Lyte",
      imagePath: "lib/images/sneakerimage2.jpg",
      description: "Retro design with modern comfort",
      price: "₹8,499",
    ),
    Shoe(
      name: "Gel Kayano",
      imagePath: "lib/images/sneakerimage3.jpg",
      description: "Premium cushioning for long runs",
      price: "₹12,999",
    ),
    Shoe(
      name: "Novablast",
      imagePath: "lib/images/sneakerimage4.jpg",
      description: "Lightweight performance for daily training",
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
    userCart.add(shoe);
    notifyListeners();
  }

// Remove item from the cart
  void removeItemCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
