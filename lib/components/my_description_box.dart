import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            children: [
              Column(children: [Text("R.350"), Text("Delivery Fee")]),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [Text("within 3,4 Days"), Text("Delivery Time")],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
