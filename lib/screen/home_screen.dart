import 'package:cafe/componets/celebrity_tile.dart';
import 'package:cafe/componets/my_current_location.dart';
import 'package:cafe/componets/my_discription_box.dart';
import 'package:cafe/componets/my_sliver_appbar.dart';
import 'package:cafe/componets/my_tab_bar.dart';
import 'package:cafe/model/star_module.dart';
import 'package:cafe/model/celebrities_modules.dart';
import 'package:cafe/pages/drawer.dart';
import 'package:cafe/pages/star_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
//tabController
  late TabController _tabController;

  @override
  void initState() {
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

// sort out and return a list of food items that belong to a specific category
  List<Star> _filterMenueByCategory(
      FoodCategory category, List<Star> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

// return list of foods in  agiven category
  List<Widget> getFoodInThisCategory(List<Star> fullMenu) {
    return FoodCategory.values.map((category) {
      //get category menue
      List<Star> categoryMenu = _filterMenueByCategory(category, fullMenu);
      return ListView.builder(
          itemCount: categoryMenu.length,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            //get individual food
            final celeb = categoryMenu[index];
            //return the food tile UI
            return CelebrityTile(
                celeb: celeb,
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => StarPage(celeb: celeb))));
          });
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const MyDrawer(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            MySliverAppbar(
              title: MyTabBar(
                tabController: _tabController,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  //my current location
                  const MyCurrentLocation(),
                  //description box
                  const MyDescriptionBox()
                ],
              ),
            )
          ],
          body: Consumer<Celebrities>(
              builder: (context, restaurant, child) => TabBarView(
                    controller: _tabController,
                    children: getFoodInThisCategory(restaurant.menue),
                  )),
        ));
  }
}
