// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:food/components/my_button.dart';
import 'package:food/models/food.dart';
import 'package:food/models/restaurnt.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};

  FoodPage({super.key, required this.food}) {
    //initialize selected addons to be false
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  // method to add to card

  void addToCart(Food food, Map<Addon, bool> selectedaddons) {
    //food pagr back to menu
    Navigator.pop(context);
    //format the selected addons
    List<Addon> currentlyselectAddons = [];
    for (Addon addon in widget.food.availableAddons) {
      if (widget.food.availableAddons == [addon]) true;
      {
        currentlyselectAddons.add(addon);
      }
    }
    //add to cart
    context.read<Restaurnt>().addToCart(food, currentlyselectAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  //food image
                  Image.asset(widget.food.imagepath),
                  //food name
                  Text(
                    widget.food.name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  //food price
                  Text(
                    widget.food.price.toString(),
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(31, 26, 25, 25),
                    ),
                  ),
                  const SizedBox(height: 10),
                  //food description
                  Text(widget.food.description),

                  const SizedBox(height: 10),

                  Divider(color: Colors.grey),

                  const SizedBox(height: 10),

                  Text(
                    "Add-ons",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  //addons
                  Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: widget.food.availableAddons.length,
                      itemBuilder: (context, index) {
                        Addon addon = widget.food.availableAddons[index];
                        //return check box ui
                        return CheckboxListTile(
                          title: Text(addon.name),
                          subtitle: Text(
                            widget.food.price.toString(),
                            style: TextStyle(
                              color: const Color.fromARGB(77, 127, 2, 2),
                            ),
                          ),
                          value: widget.selectedAddons[addon],
                          onChanged: (bool? value) {
                            setState(() {
                              widget.selectedAddons[addon] = value!;
                            });
                          },
                        );
                      },
                    ),
                  ),
                  MyButton(
                    onTap: () => addToCart(widget.food, widget.selectedAddons),
                    text: "Add to Card",
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
        SafeArea(
          child: Container(
            decoration: BoxDecoration(color: Colors.white),
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back_ios_rounded),
            ),
          ),
        ),
      ],
    );
  }
}
