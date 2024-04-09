import 'package:cafe/componets/cart_tile.dart';
import 'package:cafe/componets/my_button.dart';
import 'package:cafe/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cafe/model/celebrities_modules.dart';

import '../pages/payment_page.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<Celebrities?>(builder: (context, restaurant, child) {
      //{   // Check if restaurant is null
      if (restaurant == null) {
        // Handle the case when restaurant or its cart is null
        return Scaffold(
          appBar: AppBar(
            title: const Text("Favourite"),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          body: const Center(
            child: Text(
              'favourite',
            ),
          ),
        );
      }
// This code here is not running , its useless but can be remove because i find trable calling the cart fron the getter, this code solves the issue, }
      // Cart
      final userCart = restaurant.cart;

      // Scaffold UI
      return Scaffold(
        appBar: AppBar(
          title: const Text("Favourite"),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: [
            //clear the cart
            IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: const Text(
                                'Are you sure you want remove all you favourite'),
                            actions: [
                              //cancel button
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('Cancel')),
                              //yes button
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    restaurant.clearCart();
                                  },
                                  child: const Text('Yes'))
                            ],
                          ));
                },
                icon: const Icon(Icons.delete))
          ],
        ),
        body: Column(
          children: [
            //list of cart items
            Expanded(
              child: Column(
                children: [
                  userCart.isEmpty
                      ? Expanded(
                          child: Center(
                              child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HomeScreen())),
                                child: const Text("Add you fav celebrity"))
                          ],
                        )))
                      : Expanded(
                          child: ListView.builder(
                              itemCount: userCart.length,
                              itemBuilder: (context, index) {
                                //indivdual cart item
                                final cartItem = userCart[index];
                                //return are cart tile UI
                                return MyCartTile(favCelebrity: cartItem);
                              }),
                        ),
                ],
              ),
            ),
            //button to pay
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: MyButton(
                  text: 'Order celebrity',
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PaymentPage()))),
            )
          ],
        ),
      );
    });
  }
}
