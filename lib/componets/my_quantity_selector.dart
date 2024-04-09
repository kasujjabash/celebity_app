import 'package:flutter/material.dart';

import '../model/star_module.dart';

class QuantitySelector extends StatelessWidget {
  final int quantity;
  final Star celeb;
  final VoidCallback onIncrement;
  final VoidCallback ondecrement;

  const QuantitySelector(
      {super.key,
      required this.quantity,
      required this.celeb,
      required this.onIncrement,
      required this.ondecrement});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            borderRadius: BorderRadius.circular(35)),
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            //ondecremeant
            GestureDetector(
              onTap: ondecrement,
              child: Icon(
                Icons.remove,
                size: 20,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            //quantity count
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: SizedBox(
                  width: 15, child: Center( child: Text(quantity.toString()))),
            ),
            //increment button
            GestureDetector(
              onTap: onIncrement,
              child: Icon(
                Icons.add,
                size: 20,
                color: Theme.of(context).colorScheme.primary,
              ),
            )
          ],
        ));
  }
}
