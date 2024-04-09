import 'package:cafe/model/favourites_model.dart';
import 'package:cafe/model/star_module.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Celebrities extends ChangeNotifier {
  //list of food menu
  final List<Star> _collection = [
    // burgers
    Star(
        name: "Classic cheese burger",
        price: 2.56,
        imagePath: 'lib/images/burger.jpg',
        description:
            "Ajuicy beef patty with mmelted cheddar, lettuce, tomato and a hint of onion and pickle",
        category: FoodCategory.burgers,
        availableAddOns: [
          AddOns(name: 'Extra cheese and chips', price: 2.5),
          AddOns(name: 'Avacado', price: 0.95),
          AddOns(name: 'Bacon', price: 1.99),
        ]),
    Star(
        name: "Classic cheese burger",
        price: 2.56,
        imagePath: 'lib/images/burger.jpg',
        description:
            "Ajuicy beef patty with mmelted cheddar, lettuce, tomato and a hint of onion and pickle",
        category: FoodCategory.burgers,
        availableAddOns: [
          AddOns(name: 'Extra cheese and chips', price: 2.5),
          AddOns(name: 'Avacado', price: 0.95),
          AddOns(name: 'Bacon', price: 1.99),
        ]),

    Star(
        name: "Classic cheese burger",
        price: 2.56,
        imagePath: 'lib/images/burger.jpg',
        description:
            "Ajuicy beef patty with mmelted cheddar, lettuce, tomato and a hint of onion and pickle",
        category: FoodCategory.burgers,
        availableAddOns: [
          AddOns(name: 'Extra cheese and chips', price: 2.5),
          AddOns(name: 'Avacado', price: 0.95),
          AddOns(name: 'Bacon', price: 1.99),
        ]),

    Star(
        name: "Classic cheese burger",
        price: 2.56,
        imagePath: 'lib/images/burger.jpg',
        description:
            "Ajuicy beef patty with mmelted cheddar, lettuce, tomato and a hint of onion and pickle",
        category: FoodCategory.burgers,
        availableAddOns: [
          AddOns(name: 'Extra cheese and chips', price: 2.5),
          AddOns(name: 'Avacado', price: 0.95),
          AddOns(name: 'Bacon', price: 1.99),
        ]),

    Star(
        name: "Classic cheese burger",
        price: 2.56,
        imagePath: 'lib/images/burger.jpg',
        description:
            "Ajuicy beef patty with mmelted cheddar, lettuce, tomato and a hint of onion and pickle",
        category: FoodCategory.burgers,
        availableAddOns: [
          AddOns(name: 'Extra cheese and chips', price: 2.5),
          AddOns(name: 'Avacado', price: 0.95),
          AddOns(name: 'Bacon', price: 1.99),
        ]),
    //saladis
    Star(
        name: "Greek Salads",
        price: 2.56,
        imagePath: 'lib/images/mexican_wrap.jpg',
        description:
            "Ajuicy beef patty with mmelted cheddar, lettuce, tomato and a hint of onion and pickle",
        category: FoodCategory.salads,
        availableAddOns: [
          AddOns(name: 'Extra cheese and chips', price: 2.5),
          AddOns(name: 'Avacado', price: 0.95),
          AddOns(name: 'Bacon', price: 1.99),
        ]),
    Star(
        name: "Greek Salads",
        price: 2.56,
        imagePath: 'lib/images/mexican_wrap.jpg',
        description:
            "Ajuicy beef patty with mmelted cheddar, lettuce, tomato and a hint of onion and pickle",
        category: FoodCategory.salads,
        availableAddOns: [
          AddOns(name: 'Extra cheese and chips', price: 2.5),
          AddOns(name: 'Avacado', price: 0.95),
          AddOns(name: 'Bacon', price: 1.99),
        ]),
    Star(
        name: "Greek Salads",
        price: 2.56,
        imagePath: 'lib/images/mexican_wrap.jpg',
        description:
            "Ajuicy beef patty with mmelted cheddar, lettuce, tomato and a hint of onion and pickle",
        category: FoodCategory.salads,
        availableAddOns: [
          AddOns(name: 'Extra cheese and chips', price: 2.5),
          AddOns(name: 'Avacado', price: 0.95),
          AddOns(name: 'Bacon', price: 1.99),
        ]),
    Star(
        name: "Greek Salads",
        price: 2.56,
        imagePath: 'lib/images/mexican_wrap.jpg',
        description:
            "Ajuicy beef patty with mmelted cheddar, lettuce, tomato and a hint of onion and pickle",
        category: FoodCategory.salads,
        availableAddOns: [
          AddOns(name: 'Extra cheese and chips', price: 2.5),
          AddOns(name: 'Avacado', price: 0.95),
          AddOns(name: 'Bacon', price: 1.99),
        ]),
    Star(
        name: "Greek Salads",
        price: 2.56,
        imagePath: 'lib/images/mexican_wrap.jpg',
        description:
            "Ajuicy beef patty with mmelted cheddar, lettuce, tomato and a hint of onion and pickle",
        category: FoodCategory.salads,
        availableAddOns: [
          AddOns(name: 'Extra cheese and chips', price: 2.5),
          AddOns(name: 'Avacado', price: 0.95),
          AddOns(name: 'Bacon', price: 1.99),
        ]),
    Star(
        name: "Greek Salads",
        price: 2.56,
        imagePath: 'lib/images/mexican_wrap.jpg',
        description:
            "Ajuicy beef patty with mmelted cheddar, lettuce, tomato and a hint of onion and pickle",
        category: FoodCategory.salads,
        availableAddOns: [
          AddOns(name: 'Extra cheese and chips', price: 2.5),
          AddOns(name: 'Avacado', price: 0.95),
          AddOns(name: 'Bacon', price: 1.99),
        ]),
    //Sides
    Star(
        name: "Cabage rings",
        price: 2.56,
        imagePath: 'lib/images/vari.jpg',
        description:
            "Ajuicy beef patty with mmelted cheddar, lettuce, tomato and a hint of onion and pickle",
        category: FoodCategory.sides,
        availableAddOns: [
          AddOns(name: 'Extra cheese and chips', price: 2.5),
          AddOns(name: 'Avacado', price: 0.95),
          AddOns(name: 'Bacon', price: 1.99),
        ]),
    Star(
        name: "Cabage rings",
        price: 2.56,
        imagePath: 'lib/images/vari.jpg',
        description:
            "Ajuicy beef patty with mmelted cheddar, lettuce, tomato and a hint of onion and pickle",
        category: FoodCategory.sides,
        availableAddOns: [
          AddOns(name: 'Extra cheese and chips', price: 2.5),
          AddOns(name: 'Avacado', price: 0.95),
          AddOns(name: 'Bacon', price: 1.99),
        ]),
    Star(
        name: "Cabage rings",
        price: 2.56,
        imagePath: 'lib/images/vari.jpg',
        description:
            "Ajuicy beef patty with mmelted cheddar, lettuce, tomato and a hint of onion and pickle",
        category: FoodCategory.sides,
        availableAddOns: [
          AddOns(name: 'Extra cheese and chips', price: 2.5),
          AddOns(name: 'Avacado', price: 0.95),
          AddOns(name: 'Bacon', price: 1.99),
        ]),
    Star(
        name: "Cabage rings",
        price: 2.56,
        imagePath: 'lib/images/vari.jpg',
        description:
            "Ajuicy beef patty with mmelted cheddar, lettuce, tomato and a hint of onion and pickle",
        category: FoodCategory.sides,
        availableAddOns: [
          AddOns(name: 'Extra cheese and chips', price: 2.5),
          AddOns(name: 'Avacado', price: 0.95),
          AddOns(name: 'Bacon', price: 1.99),
        ]),
    Star(
        name: "Cabage rings",
        price: 2.56,
        imagePath: 'lib/images/vari.jpg',
        description:
            "Ajuicy beef patty with mmelted cheddar, lettuce, tomato and a hint of onion and pickle",
        category: FoodCategory.sides,
        availableAddOns: [
          AddOns(name: 'Extra cheese and chips', price: 2.5),
          AddOns(name: 'Avacado', price: 0.95),
          AddOns(name: 'Bacon', price: 1.99),
        ]),
    // desert
    Star(
        name: "Apple pie",
        price: 2.56,
        imagePath: 'lib/images/vari.jpg',
        description:
            "Ajuicy beef patty with mmelted cheddar, lettuce, tomato and a hint of onion and pickle",
        category: FoodCategory.dessert,
        availableAddOns: [
          AddOns(name: 'Extra cheese and chips', price: 2.5),
          AddOns(name: 'Avacado', price: 0.95),
          AddOns(name: 'Bacon', price: 1.99),
        ]),
    Star(
        name: "Apple pie",
        price: 2.56,
        imagePath: 'lib/images/vari.jpg',
        description:
            "Ajuicy beef patty with mmelted cheddar, lettuce, tomato and a hint of onion and pickle",
        category: FoodCategory.dessert,
        availableAddOns: [
          AddOns(name: 'Extra cheese and chips', price: 2.5),
          AddOns(name: 'Avacado', price: 0.95),
          AddOns(name: 'Bacon', price: 1.99),
        ]),
    Star(
        name: "Apple pie",
        price: 2.56,
        imagePath: 'lib/images/vari.jpg',
        description:
            "Ajuicy beef patty with mmelted cheddar, lettuce, tomato and a hint of onion and pickle",
        category: FoodCategory.dessert,
        availableAddOns: [
          AddOns(name: 'Extra cheese and chips', price: 2.5),
          AddOns(name: 'Avacado', price: 0.95),
          AddOns(name: 'Bacon', price: 1.99),
        ]),
    Star(
        name: "Apple pie",
        price: 2.56,
        imagePath: 'lib/images/vari.jpg',
        description:
            "Ajuicy beef patty with mmelted cheddar, lettuce, tomato and a hint of onion and pickle",
        category: FoodCategory.dessert,
        availableAddOns: [
          AddOns(name: 'Extra cheese and chips', price: 2.5),
          AddOns(name: 'Avacado', price: 0.95),
          AddOns(name: 'Bacon', price: 1.99),
        ]),
    Star(
        name: "Apple pie",
        price: 2.56,
        imagePath: 'lib/images/vari.jpg',
        description:
            "Ajuicy beef patty with mmelted cheddar, lettuce, tomato and a hint of onion and pickle",
        category: FoodCategory.dessert,
        availableAddOns: [
          AddOns(name: 'Extra cheese and chips', price: 2.5),
          AddOns(name: 'Avacado', price: 0.95),
          AddOns(name: 'Bacon', price: 1.99),
        ]),
    //dirnks
    Star(
        name: "Minute Maid",
        price: 2.56,
        imagePath: 'lib/images/vari.jpg',
        description:
            "Ajuicy beef patty with mmelted cheddar, lettuce, tomato and a hint of onion and pickle",
        category: FoodCategory.drinks,
        availableAddOns: [
          AddOns(name: 'Extra cheese and chips', price: 2.5),
          AddOns(name: 'Avacado', price: 0.95),
          AddOns(name: 'Bacon', price: 1.99),
        ]),
    Star(
        name: "Minute Maid",
        price: 2.56,
        imagePath: 'lib/images/vari.jpg',
        description:
            "Ajuicy beef patty with mmelted cheddar, lettuce, tomato and a hint of onion and pickle",
        category: FoodCategory.drinks,
        availableAddOns: [
          AddOns(name: 'Extra cheese and chips', price: 2.5),
          AddOns(name: 'Avacado', price: 0.95),
          AddOns(name: 'Bacon', price: 1.99),
        ]),
    Star(
        name: "Minute Maid",
        price: 2.56,
        imagePath: 'lib/images/vari.jpg',
        description:
            "Ajuicy beef patty with mmelted cheddar, lettuce, tomato and a hint of onion and pickle",
        category: FoodCategory.drinks,
        availableAddOns: [
          AddOns(name: 'Extra cheese and chips', price: 2.5),
          AddOns(name: 'Avacado', price: 0.95),
          AddOns(name: 'Bacon', price: 1.99),
        ]),
    Star(
        name: "Minute Maid",
        price: 2.56,
        imagePath: 'lib/images/vari.jpg',
        description:
            "Ajuicy beef patty with mmelted cheddar, lettuce, tomato and a hint of onion and pickle",
        category: FoodCategory.drinks,
        availableAddOns: [
          AddOns(name: 'Extra cheese and chips', price: 2.5),
          AddOns(name: 'Avacado', price: 0.95),
          AddOns(name: 'Bacon', price: 1.99),
        ]),
    Star(
        name: "Minute Maid",
        price: 2.56,
        imagePath: 'lib/images/vari.jpg',
        description:
            "Ajuicy beef patty with mmelted cheddar, lettuce, tomato and a hint of onion and pickle",
        category: FoodCategory.drinks,
        availableAddOns: [
          AddOns(name: 'Extra cheese and chips', price: 2.5),
          AddOns(name: 'Avacado', price: 0.95),
          AddOns(name: 'Bacon', price: 1.00),
        ]),
  ];

  /*
  G E T T E R S
   */
  List<Star> get menue => _collection;
  //getter for the cart
  List<FavouriteCelebritie> get cart => _cart;
  /*
    O P E R A T I O N S

   */
  // user cart
  final List<FavouriteCelebritie> _cart = [];
  // add to cart
  void addToCart(Star celeb, List<AddOns> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    FavouriteCelebritie? cartItem = _cart.firstWhereOrNull((item) {
      //Check if the food item are the same
      bool isSameFood = item.celeb == celeb;
      //check if the list of selected addons are the same
      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });
    //if item already exist, increase the quantity
    if (cartItem != null) {
      cartItem.quantity++;
      //otherwise add anew cartiItem
    } else {
      _cart.add(FavouriteCelebritie(
        celeb: celeb,
        selectedAddons: selectedAddons,
      ));
      notifyListeners(); //Notify listners to update the UI
    }
  }

  // remove from cart
  void removeFromCart(FavouriteCelebritie cartItems) {
    int cartIndex = _cart.indexOf(cartItems);
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // total price of the cart items
  double getTotalPrice() {
    double total = 0.0;

    for (FavouriteCelebritie cartItems in _cart) {
      double itemTotal = cartItems.celeb.price;

      for (AddOns addOns in cartItems.selectedAddons) {
        itemTotal += addOns.price;
      }
      total += itemTotal * cartItems.quantity;
    }
    return total;
  }

  //total number of items of the items in the cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (FavouriteCelebritie cartItems in _cart) {
      totalItemCount += cartItems.quantity;
    }
    return totalItemCount;
  }

  // clear the cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  /*
H E L P E R M E T H O D S  
 */

//generate a recept
  String displayCartRecept() {
    final receipt = StringBuffer();
    receipt.writeln("Here's you reciept");
    receipt.writeln();
    //formate the date to include upto seconds only
    String formatedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(formatedDate);
    receipt.writeln('-----------------');
    for (final cartItems in _cart) {
      receipt.writeln(
          "${cartItems.quantity} x ${cartItems.celeb.name} - ${_formatPrice(cartItems.celeb.price)}");
      if (cartItems.selectedAddons.isEmpty) {
        receipt
            .writeln("   Add-ons: ${_formatAddons(cartItems.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln('--------------');
    receipt.writeln();
    receipt.writeln("Total Item: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

// formate double value in money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}"; //fixed the dollar sign, add corrected the price to 2 decimals
  }

//formate list of addons into a string summary
  String _formatAddons(List<AddOns> addons) {
    //used iterable and it solves the error
    return addons
        .map((addons) => "${addons.name} (${_formatPrice(addons.price)})")
        .join(", ");
  }
}
