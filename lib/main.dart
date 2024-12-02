import 'package:flutter/material.dart';
import 'package:islami_c12_maadi/quran_details/quran_details_screen.dart';
import 'package:islami_c12_maadi/style/AppStyle.dart';

import 'home/home_screen.dart';

void main() {
  // hello world
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Appstyle.lightTheme,
      darkTheme: Appstyle.darkTheme,
      themeMode: ThemeMode.dark,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => const HomeScreen(),
        QuranDetailsScreen.routeName: (_) => const QuranDetailsScreen()
      },
    );
  }
}
