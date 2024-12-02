import 'package:flutter/material.dart';
import 'package:islami_c12_maadi/home/tabs/selectedItem.dart';
import 'package:islami_c12_maadi/home/tabs/unselcteditem.dart';

class theme extends StatelessWidget {
  const theme({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Selecteditem("Light",
                  style: Theme.of(context).textTheme.titleLarge),
            ),
            Container(
              child: Unselcteditem("Dark"),
            ),
          ],
        ),
      ),
    );
  }
}
