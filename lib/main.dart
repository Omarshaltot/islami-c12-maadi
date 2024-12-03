import 'package:flutter/material.dart';
import 'package:islami_c12_maadi/generated/l10n.dart';
import 'package:islami_c12_maadi/home/tabs/settingprovider.dart';
import 'package:islami_c12_maadi/quran_details/quran_details_screen.dart';
import 'package:islami_c12_maadi/style/AppStyle.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'home/home_screen.dart';

void main() {
  // hello world
  runApp(const MyApp());

  void main() {
    runApp(
      ChangeNotifierProvider(
        create: (context) => settingProvider(),
        child: const MyApp(),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('ar'), // arabic
      ],
      locale: const Locale('en'),
      title: 'Flutter Demo',
      theme: Appstyle.lightTheme,
      darkTheme: Appstyle.darkTheme,
      themeMode: ThemeMode.light,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => const HomeScreen(),
        QuranDetailsScreen.routeName: (_) => const QuranDetailsScreen()
      },
    );
  }
}
