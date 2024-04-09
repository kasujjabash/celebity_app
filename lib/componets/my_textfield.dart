import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: TextField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(30)),
            prefixIcon: Icon(
              Icons.search,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            hintText: 'Search',
            hintStyle: TextStyle(
                fontSize: 15,
                color: Theme.of(context).colorScheme.inversePrimary),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
