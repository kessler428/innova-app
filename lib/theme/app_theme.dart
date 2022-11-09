import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Colors.blue;

  static final ThemeData lightTheme =  ThemeData.light().copyWith(

    // Color primario
    primaryColor: Colors.indigo,

    // Appbar theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
      centerTitle: true,
    ),

    // Text button theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom( primary: primary)
    ),

    // Floating Action Buttons
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 0
    ),

    // Elevated Button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        shape: const StadiumBorder(),
        elevation: 0
      )
    )

  );

}