import 'package:flutter/material.dart';
import 'package:food/models/restaurnt.dart';
import 'package:provider/provider.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 25, bottom: 50, top: 50),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Thank you for your order"),
            const SizedBox(height: 25),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent),
                borderRadius: BorderRadius.circular(25),
              ),
              padding: const EdgeInsets.all(25),
              child: Consumer<Restaurnt>(
                builder:
                    (context, restaurnt, child) =>
                        Text(restaurnt.displayCardReceipt()),
              ),
            ),
            const SizedBox(height: 25),
            Text("Estimated delivery time is: 4 :10 PM"),
          ],
        ),
      ),
    );
  }
}
