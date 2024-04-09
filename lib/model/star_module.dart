//Food items
class Star {
  final String name; //examples :  cheese burger
  final double price; // $5.66
  final String imagePath; // lib/images/burger
  final String description; // a burger full of cheese
  final FoodCategory category; // Burger
  List<AddOns> availableAddOns; //[extra cheese, sauce, extra party, chips,]

  Star(
      {required this.name,
      required this.price,
      required this.imagePath,
      required this.description,
      required this.category,
      required this.availableAddOns});
}

// categories
enum FoodCategory { burgers, salads, sides, dessert, drinks }

//food addons
class AddOns {
  String name;
  double price;

  AddOns({required this.name, required this.price});
}
