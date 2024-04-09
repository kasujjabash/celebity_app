import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Your location'),
        content: const TextField(
          decoration: InputDecoration(hintText: 'Search Address..'),
        ),
        actions: [
          // search button
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Search'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver Now",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                //location
                Text(
                  'Lugujja Kosovo',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold),
                ),
                //dropdown
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Theme.of(context).colorScheme.inversePrimary,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
