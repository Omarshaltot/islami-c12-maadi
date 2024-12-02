import 'package:flutter/material.dart';
import 'package:islami_c12_maadi/home/tabs/selectedItem.dart';
import 'package:islami_c12_maadi/home/tabs/unselcteditem.dart';

class Languagebuttonsheet extends StatelessWidget {
  const Languagebuttonsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Unselcteditem("العربية"),
          ),
          Container(
            child: Selecteditem("English"),
          ),
        ],
      ),
    );
  }
}
