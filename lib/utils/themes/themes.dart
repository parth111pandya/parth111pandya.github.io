import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../colors.dart';
import '../const.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColors.lightScaffoldBackgroundColor,
  cardColor: AppColors.lightThemeCardColor,
  colorScheme: const ColorScheme.light(
    primary: Color(0xFF3D3D3D),
    secondary: Color(0xFFF9A11F),
  ),
  textTheme: const TextTheme(
    bodySmall: TextStyle(
      color: Colors.black,
      fontFamily: FONT_STYLE_QUICK_MEDIUM,
      fontSize: 15,
    ),
    bodyMedium: TextStyle(
      color: Colors.black,
      fontFamily: FONT_STYLE_QUICK_MEDIUM,
      fontSize: 18,
    ),
    headlineLarge: TextStyle(
      color: Colors.black,
      fontFamily: FONT_STYLE_QUICK_MEDIUM,
      fontSize: 25,
    ),
    displayMedium: TextStyle(
      color: AppColors.lightThemeYellowColor,
      fontFamily: FONT_STYLE_QUICK_MEDIUM,
      fontSize: 15,
    ),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.lightBackgroundColorAppBarTheme,
  ),
  chipTheme: const ChipThemeData(
    backgroundColor: AppColors.lightBackgroundColorChipTheme,
    side: BorderSide(
      color: Colors.blue,
    ),
    padding: EdgeInsets.zero,
    labelStyle: TextStyle(
      color: Colors.blue,
      fontFamily: FONT_STYLE_QUICK_MEDIUM,
      fontSize: 20,
    ),
    labelPadding: EdgeInsets.symmetric(
      horizontal: 15,
      vertical: 0,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(
          40,
        ),
      ),
    ),
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.darkScaffoldBackgroundColor,
  cardColor: AppColors.darkThemeCardColor,
  textTheme: const TextTheme(
    bodySmall: TextStyle(
      color: Colors.white,
      fontFamily: FONT_STYLE_QUICK_MEDIUM,
      fontSize: 15,
    ),
    bodyMedium: TextStyle(
      color: Colors.white,
      fontFamily: FONT_STYLE_QUICK_MEDIUM,
      fontSize: 18,
    ),
    headlineLarge: TextStyle(
      color: Colors.white,
      fontFamily: FONT_STYLE_QUICK_MEDIUM,
      fontSize: 25,
    ),
    displayMedium: TextStyle(
      color: AppColors.darkThemeYellowColor,
      fontFamily: FONT_STYLE_QUICK_MEDIUM,
      fontSize: 15,
    ),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.darkBackgroundColorAppBarTheme,
  ),
  chipTheme: const ChipThemeData(
    backgroundColor: AppColors.darkBackgroundColorChipTheme,
    padding: EdgeInsets.zero,
    labelStyle: TextStyle(
      color: Colors.white,
      fontFamily: FONT_STYLE_QUICK_MEDIUM,
      fontSize: 20,
    ),
    labelPadding: EdgeInsets.symmetric(
      horizontal: 15,
      vertical: 0,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(
          40,
        ),
      ),
    ),
  ),
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFFE0E0E0),
    secondary: Color(0xFFFFC906),
  ),
);
