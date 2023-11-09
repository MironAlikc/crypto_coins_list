import 'package:flutter/material.dart';

final darkTheme = ThemeData(
    textTheme: TextTheme(
      bodyMedium: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      ),
      labelSmall: TextStyle(
        color: Colors.white.withOpacity(0.6),
        fontWeight: FontWeight.w700,
        fontSize: 14,
      ),
    ),
    scaffoldBackgroundColor: const Color.fromARGB(255, 31, 31, 31),
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
    dividerColor: Colors.white24,
    listTileTheme: const ListTileThemeData(
      iconColor: Colors.white,
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Color.fromARGB(255, 31, 31, 31),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    )
    // useMaterial3: true,
    );
