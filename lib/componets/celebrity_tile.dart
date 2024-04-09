import 'package:cafe/model/star_module.dart';
import 'package:flutter/material.dart';

class CelebrityTile extends StatelessWidget {
  final Star celeb;
  final void Function()? onTap;

  const CelebrityTile({
    super.key,
    required this.celeb,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      celeb.name,
                    ),
                    Text(
                      '\$${celeb.price}',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    // sized box
                    const SizedBox(
                      height: 10,
                    ),
                    Text(celeb.description,
                        style: TextStyle(
                            color:
                                Theme.of(context).colorScheme.inversePrimary))
                  ],
                )),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    celeb.imagePath,
                    height: 120,
                  ),
                )
              ],
            ),
          ),
        ),
        //divider
        Divider(
          color: Theme.of(context).colorScheme.tertiary,
          endIndent: 25,
          indent: 25,
        )
      ],
    );
  }
}
