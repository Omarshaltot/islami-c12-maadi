import 'package:flutter/material.dart';

class Appstyle {
  static bool isDark = true;
  static Color lightprimaryColor = const Color(0xffB7935F);
  static Color darkprimaryColor = const Color(0xff141A2E);
  static Color darksecondaryColor = const Color(0xffFACC1D);
  static ThemeData darkTheme = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: darkprimaryColor,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
          fontSize: 25, color: Colors.white, fontWeight: FontWeight.w600),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    dividerTheme: DividerThemeData(
      color: darksecondaryColor,
      thickness: 3,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: darkprimaryColor,
      unselectedIconTheme: const IconThemeData(color: Colors.white, size: 30),
      selectedIconTheme:
          const IconThemeData(color: Color(0xffFACC1D), size: 30),
      selectedItemColor: const Color(0xffFACC1D),
      unselectedItemColor: Colors.white,
    ),
    colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.deepPurple,
        primary: darkprimaryColor,
        secondary: darksecondaryColor.withOpacity(0.57),
        onPrimary: Colors.black,
        onSecondary: Colors.white,
        tertiary: darksecondaryColor),
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 30,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
    cardTheme: CardTheme(
      margin: const EdgeInsets.all(16),
      color: darkprimaryColor.withOpacity(0.8),
      surfaceTintColor: darkprimaryColor.withOpacity(0.8),
      elevation: 30,
    ),
    useMaterial3: true,
  );
//_______________________________________________________________________________________
//light theme
//_______________________________________________________________________________________
  static ThemeData lightTheme = ThemeData(
    bottomAppBarTheme: BottomAppBarTheme(
      color: Colors.white,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
          fontSize: 25, color: Colors.black, fontWeight: FontWeight.w600),
      titleMedium: TextStyle(
          fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    dividerTheme: DividerThemeData(
      color: lightprimaryColor,
      thickness: 3,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: lightprimaryColor,
      unselectedIconTheme: const IconThemeData(color: Colors.white, size: 30),
      selectedIconTheme: const IconThemeData(color: Colors.black, size: 30),
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
    ),
    colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.deepPurple,
        primary: lightprimaryColor,
        secondary: lightprimaryColor.withOpacity(0.57),
        onPrimary: Colors.white,
        onSecondary: Colors.black,
        tertiary: lightprimaryColor),
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 30,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
    cardTheme: CardTheme(
      margin: const EdgeInsets.all(16),
      color: Colors.white.withOpacity(0.8),
      surfaceTintColor: Colors.white.withOpacity(0.8),
      elevation: 30,
    ),
    useMaterial3: true,
  );
}
