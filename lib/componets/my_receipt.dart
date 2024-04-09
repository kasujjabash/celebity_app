import 'package:cafe/model/celebrities_modules.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text('Thank you for your order!'),
            const SizedBox(
              height: 25,
            ),
            Container(
              decoration: BoxDecoration(
                border:
                    Border.all(color: Theme.of(context).colorScheme.secondary),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Consumer<Celebrities>(
                  builder: (context, restuarant, child) =>
                      Text(restuarant.displayCartRecept()),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('Estimated delivery time is in: 4:10'),
          ],
        ),
      ),
    );
  }
}
