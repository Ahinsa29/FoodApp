import 'dart:core';

import 'package:flutter/material.dart';
import 'package:food/components/my_current_location.dart';
import 'package:food/components/my_description_box.dart';
import 'package:food/components/my_drawer.dart';
import 'package:food/components/my_food_tile.dart';
import 'package:food/components/my_silver_app_bar.dart';
import 'package:food/components/my_tab_bar.dart';
import 'package:food/models/food.dart';
import 'package:food/models/restaurnt.dart';
import 'package:food/pages/food_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: FoodCategory.values.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  // return list of foods in given category
  List<Widget> getFoofThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final food = categoryMenu[index];
          return FoodTile(
            food: food,
            onTap:
                () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FoodPage(food: food)),
                ),
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder:
            (context, innerBoxScrolled) => [
              MySilverAppBar(
                title: SingleChildScrollView(
                  child: MyTabBar(tabController: tabController),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Divider(
                      indent: 15,
                      endIndent: 15,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    // my current location
                    MyCurrentLocation(),

                    //description box
                    MyDescriptionBox(),
                  ],
                ),
              ),
            ],
        body: Consumer<Restaurnt>(
          builder:
              (context, resturant, child) => TabBarView(
                controller: tabController,
                children: getFoofThisCategory(resturant.menu),
              ),
        ),
      ),
    );
  }
}
