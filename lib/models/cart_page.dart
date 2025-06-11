import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/components/my_button.dart';
import 'package:food/components/my_card_tail.dart';
import 'package:food/models/card_item.dart';
import 'package:food/models/restaurnt.dart';
import 'package:food/pages/payment_page.dart';

import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurnt>(
      builder: (context, resturent, child) {
        final usercart = resturent.cart;
        //scaffolf ui
        return Scaffold(
          appBar: AppBar(
            title: Text("Cart"),
            backgroundColor: CupertinoColors.secondarySystemFill,
            actions: [
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder:
                        (context) => AlertDialog(
                          title: Text("Are you sure want to clear the cart"),
                          actions: [
                            // cancel button
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text("Cancel"),
                            ),

                            // yes button
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                resturent.clearCart();
                              },
                              child: const Text("Yes"),
                            ),
                          ],
                        ),
                  );
                },
                icon: const Icon(Icons.delete),
              ),
            ],
          ),
          body: Column(
            children: [
              // list of cart
              Expanded(
                child: Column(
                  children: [
                    usercart.isEmpty
                        ? const Expanded(
                          child: Center(child: Text("Cart is Empty.........")),
                        )
                        : Expanded(
                          child: ListView.builder(
                            itemCount: usercart.length,
                            itemBuilder: (context, index) {
                              //get individual card item
                              final cardItem = usercart[index];
                              //return cart tile ui
                              return MyCardTail(cardItem: cardItem);
                            },
                          ),
                        ),
                  ],
                ),
              ),
              // button to pay
              MyButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PaymentPage()),
                  );
                },
                text: "Go to Checkout",
              ),
              const SizedBox(height: 25),
            ],
          ),
        );
      },
    );
  }
}
