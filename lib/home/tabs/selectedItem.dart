import 'package:flutter/material.dart';

class Selecteditem extends StatelessWidget {
  String title;
  Selecteditem(this.title, {super.key, TextStyle? style});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
          Icon(Icons.check, color: Theme.of(context).colorScheme.tertiary),
        ],
      ),
    );
  }
}
