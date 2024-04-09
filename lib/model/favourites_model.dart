import 'package:cafe/model/star_module.dart';

class FavouriteCelebritie {
  Star celeb;
  List<AddOns> selectedAddons;
  int quantity;

  FavouriteCelebritie(
      {required this.celeb, required this.selectedAddons, this.quantity = 1});

  double get totalPrice {
    double addonsPrice =
        selectedAddons.fold(0, (sum, addon) => sum + addon.price);
    return (celeb.price + addonsPrice) * quantity;
  }
}
