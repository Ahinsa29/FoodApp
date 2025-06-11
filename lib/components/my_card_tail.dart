// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:food/components/my_quantity_selector.dart';
import 'package:food/models/card_item.dart';
import 'package:food/models/restaurnt.dart';
import 'package:provider/provider.dart';

class MyCardTail extends StatelessWidget {
  final CardItem cardItem;
  const MyCardTail({super.key, required this.cardItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurnt>(
      builder:
          (context, restaurnt, child) => Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(8),
            ),
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // food image
                      ClipRect(
                        child: Image.asset(
                          cardItem.food.imagepath,
                          height: 100,
                          width: 100,
                        ),
                      ),
                      const SizedBox(width: 10),

                      //name and price
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //food name
                          Text(cardItem.food.name),

                          //food price
                          Text('R.' + cardItem.food.price.toString()),
                        ],
                      ),
                      const Spacer(),
                      MyQuantitySelector(
                        quantity: cardItem.quantity,
                        food: cardItem.food,
                        onDecrement: () {
                          restaurnt.removeFromCard(cardItem);
                        },
                        onIncrement: () {
                          restaurnt.addToCart(
                            cardItem.food,
                            cardItem.selectAddons,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: cardItem.selectAddons.isEmpty ? 0 : 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,

                    children:
                        cardItem.selectAddons
                            .map(
                              (addon) => Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: FilterChip(
                                  label: Row(
                                    children: [
                                      // addon name
                                      Text(addon.name),
                                      // addon price
                                      Text('R.' + addon.prize.toString()),
                                    ],
                                  ),
                                  onSelected: (value) {},
                                ),
                              ),
                            )
                            .toList(),
                  ),
                ),
              ],
            ),
          ),
    );
  }
}
