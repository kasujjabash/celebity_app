import 'package:cafe/componets/my_button.dart';
import 'package:cafe/model/star_module.dart';
import 'package:cafe/model/celebrities_modules.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StarPage extends StatefulWidget {
  final Star celeb;
  // map for selected add ons
  final Map<AddOns, bool> selectedAddon = {};
  StarPage({super.key, required this.celeb}) {
    //initialise the selected add-on to be false
    for (AddOns addons in celeb.availableAddOns) {
      selectedAddon[addons] = false;
    }
  }

  @override
  State<StarPage> createState() => _StarPageState();
}

class _StarPageState extends State<StarPage> {
  //methode to add to cart
  void addToCart(Star food, Map<AddOns, bool> selectedAddons) {
    //cross the current page to go back to the menue
    Navigator.pop(context);
    //format the selected addon
    List<AddOns> currentlySelectedAddons = [];
    for (AddOns addOns in widget.celeb.availableAddOns) {
      if (widget.selectedAddon[addOns] == true) {
        currentlySelectedAddons.add(addOns);
      }
    }
    //add to cart
    context.read<Celebrities>().addToCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      //scaffold ui
      children: [
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                //food image
                Image.asset(widget.celeb.imagePath),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //food name
                      Text(
                        widget.celeb.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      //food price
                      Text(
                        '\$${widget.celeb.price}',
                        style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //food description
                      Text(
                        widget.celeb.description,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.primary),
                      ),

                      const SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // ADD ONS TITLE

                      Text(
                        'Add-ons',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      // ADD ONS TITLE
                      const SizedBox(
                        height: 10,
                      ),
                      //addons
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                color:
                                    Theme.of(context).colorScheme.secondary)),
                        child: ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.zero,
                            itemCount: widget.celeb.availableAddOns.length,
                            itemBuilder: (context, index) {
                              //get individual addons
                              AddOns addOns =
                                  widget.celeb.availableAddOns[index];
                              return CheckboxListTile(
                                  title: Text(
                                    '\$${addOns.name}',
                                  ),
                                  subtitle: Text(
                                    '\$${addOns.price}',
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary),
                                  ),
                                  value: widget.selectedAddon[addOns],
                                  onChanged: (bool? value) {
                                    setState(() {
                                      widget.selectedAddon[addOns] = value!;
                                    });
                                  });
                            }),
                      ),
                      //button -> cart
                      MyButton(
                          onTap: () =>
                              addToCart(widget.celeb, widget.selectedAddon),
                          text: 'Add to cart'),
                      const SizedBox(
                        height: 5,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        // back button
        SafeArea(
            child: Opacity(
          opacity: 0.6,
          child: Container(
            margin: const EdgeInsets.only(left: 25),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                shape: BoxShape.circle),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios_sharp),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ))
      ],
    );
  }
}
