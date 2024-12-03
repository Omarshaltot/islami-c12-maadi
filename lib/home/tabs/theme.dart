import 'package:flutter/material.dart';
import 'package:islami_c12_maadi/home/tabs/selectedItem.dart';
import 'package:islami_c12_maadi/home/tabs/unselcteditem.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
              child: Selecteditem(AppLocalizations.of(context)!.light),
            ),
            Container(
              child: Unselcteditem(AppLocalizations.of(context)!.dark),
            ),
          ],
        ),
      ),
    );
  }
}
