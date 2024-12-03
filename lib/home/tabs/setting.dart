import 'package:flutter/material.dart';
import 'package:islami_c12_maadi/home/tabs/languageButtonsheet.dart';
import 'package:islami_c12_maadi/home/tabs/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
              AppLocalizations.of(context)!.language,
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
              AppLocalizations.of(context)!.theme,
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
                  AppLocalizations.of(context)!.light,
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
