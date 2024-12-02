import 'package:flutter/material.dart';

class Unselcteditem extends StatelessWidget {
  String title;
  Unselcteditem(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Text(
        title,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onSecondary,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
