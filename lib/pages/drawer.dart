import 'package:cafe/screen/History_screen.dart';
import 'package:cafe/screen/favourites_screen.dart';
import 'package:cafe/screen/favourates_screen.dart';
import 'package:cafe/screen/payment_methods.dart';
import 'package:flutter/material.dart';

import '../screen/complaints_screen.dart';
import '../screen/privacy_screen.dart';
import '../screen/settings.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //logo of the cafe
              DrawerHeader(
                  child: Icon(
                Icons.restaurant,
                color: Theme.of(context).colorScheme.inversePrimary,
                size: 80,
              )),
              //list of menue pages
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FavouratesScreen()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    leading: Icon(
                      Icons.favorite_border_outlined,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                    title: Text(
                      'Favourites',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PaymentMethods()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    leading: Icon(
                      Icons.payment_outlined,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                    title: Text(
                      'Payment Methods',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FavouritesScreen()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    leading: Icon(
                      Icons.shopping_bag_outlined,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                    title: Text('My Order',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                        )),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HistoryScreen()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    leading: Icon(
                      Icons.history_outlined,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                    title: Text('History',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                        )),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ComplaintsScreen()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    leading: Icon(
                      Icons.chat_rounded,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                    title: Text('Complaint',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                        )),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PrivacyPolicy()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    leading: Icon(
                      Icons.policy_outlined,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                    title: Text('Privacy Policy',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                        )),
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SettingsScreen()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    leading: Icon(
                      Icons.policy_outlined,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                    title: Text('Settings',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                        )),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 20),
            child: ListTile(
              leading: Icon(
                Icons.logout_outlined,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              title: Text('Logout',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
