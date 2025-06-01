import 'package:flutter/material.dart';

class AppTheme {
  Color lightPrimaryColor = Color(0xff006A4E);
  Color surfaceTint = Color(0xff3f6900);
  Color secondaryColor = Color(0xffffffff);

  static ThemeData lightTheme = ThemeData(
    primaryColor: ThemeData.light().scaffoldBackgroundColor,
    colorScheme: ColorScheme.light().copyWith(
      primary: _appTheme.lightPrimaryColor,
      surfaceTint: Color(0xff3f6900),
      secondary: _appTheme.secondaryColor,
      onPrimary: Color(0xffffffff),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xff006A4E),
        foregroundColor: Color(0xffffffff),
      ),
    ),
    scaffoldBackgroundColor: Color(0xfff4f4f9),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xff006A4E),
      titleTextStyle: TextStyle(
        color: Color(0xffffffff),
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: Color(0xff006A4E)),
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        color: Color(0xFF1E1E2C),
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(foregroundColor: Color(0xFFF4F4F9)),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: ThemeData.dark().scaffoldBackgroundColor,
    colorScheme: ColorScheme.dark().copyWith(
      primary: _appTheme.lightPrimaryColor,
      surfaceTint: Color(0xff006A4E),
      secondary: _appTheme.secondaryColor,
      onPrimary: Color(0xffffffff),
    ),
    scaffoldBackgroundColor: Color(0xff006A4E),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xFF1E1E2C),
      titleTextStyle: TextStyle(
        color: Color(0xFFF4F4F9),
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF1E1E2C),
        foregroundColor: Color(0xFFF4F4F9),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: Color(0xffffffff)),
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        color: Color(0xffffffff),
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(foregroundColor: Color(0xFFF4F4F9)),
    ),
  );
}

AppTheme _appTheme = AppTheme();
