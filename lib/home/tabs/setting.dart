import 'package:flutter/material.dart';
import 'package:islami_c12_maadi/home/tabs/languageButtonsheet.dart';
import 'package:islami_c12_maadi/home/tabs/theme.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //language
          Container(
            padding: const EdgeInsets.all(10),
            child: Text(
              "language",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) => const Languagebuttonsheet());
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  width: 2.0,
                  color: Colors.black,
                ),
              ),
              child: Center(
                child: Text(
                  "English",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontSize: 20),
                ),
              ),
            ),
          ),
          //theme
          Container(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Theme",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context, builder: (context) => const theme());
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 2, color: Colors.black),
              ),
              child: Center(
                child: Text(
                  "Light",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
