import 'package:cafe/componets/my_quantity_selector.dart';
import 'package:cafe/model/favourites_model.dart';
import 'package:cafe/model/celebrities_modules.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final FavouriteCelebritie favCelebrity;
  const MyCartTile({super.key, required this.favCelebrity});

  @override
  Widget build(BuildContext context) {
    return Consumer<Celebrities>(
        builder: (context, restuarant, child) => Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(8),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //food image
                        ClipRRect(
                          // the clipRRect has the border radous property
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            favCelebrity.celeb.imagePath,
                            height: 100,
                            width: 100,
                          ),
                        ),

                        //name and price
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //name
                              Text(favCelebrity.celeb.name),
                              const SizedBox(
                                width: 10,
                              ),
                              //price
                              Text(
                                '\$${favCelebrity.celeb.price}',
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              //increase and decrease quantity
                              QuantitySelector(
                                quantity: favCelebrity.quantity,
                                celeb: favCelebrity.celeb,
                                onIncrement: () {
                                  restuarant.addToCart(
                                      //Increament doesn't not display in the ui, need fin the error on this , keep not of this comment and remember to fix this bug.
                                      favCelebrity.celeb,
                                      favCelebrity.selectedAddons);
                                },
                                ondecrement: () {
                                  restuarant.removeFromCart(favCelebrity);
                                },
                              ),
                            ],
                          ),
                        ),
                        // const Spacer(),
                      ],
                    ),
                  ),

                  //add ons
                  SizedBox(
                    height: favCelebrity.selectedAddons.isEmpty ? 0 : 60,
                    child: ListView(
                      padding: const EdgeInsets.only(
                          left: 10, bottom: 10, right: 10),
                      scrollDirection: Axis.horizontal,
                      children: favCelebrity.selectedAddons
                          .map((AddOns) => Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: FilterChip(
                                  label: Row(children: [
                                    //add on name
                                    Text(AddOns.name),
                                    //add on price
                                    Text('  (\$${AddOns.price})')
                                  ]),
                                  shape: StadiumBorder(
                                      side: BorderSide(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary)),
                                  onSelected: (value) {},
                                  backgroundColor:
                                      Theme.of(context).colorScheme.background,
                                  labelStyle: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .inversePrimary,
                                      fontSize: 12),
                                ),
                              ))
                          .toList(),
                    ),
                  )
                ],
              ),
            ));
  }
}
