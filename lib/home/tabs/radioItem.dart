import 'package:flutter/material.dart';

class radioItem extends StatelessWidget {
  const radioItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        "Radio Name",
        style: TextStyle(
          color: Theme.of(context).colorScheme.tertiary,
          fontSize: 24,
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(
              Icons.play_arrow,
              color: Theme.of(context).colorScheme.tertiary,
              size: 56,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.stop,
              color: Theme.of(context).colorScheme.tertiary,
              size: 56,
            ),
            onPressed: () {},
          ),
        ],
      ),
    ]);
  }
}
