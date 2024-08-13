import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ThemeData getTheme() {
  return ThemeData(
//
//
//

    popupMenuTheme: PopupMenuThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    cupertinoOverrideTheme: CupertinoThemeData(
        brightness: Brightness.dark, barBackgroundColor: Colors.white),
    inputDecorationTheme:
        const InputDecorationTheme(contentPadding: EdgeInsets.all(20)),
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        actionsIconTheme: IconThemeData(
          color: Colors.white,
        )),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        color: Color(0XFFC7EEFF),
        fontSize: 17,
        fontFamily: 'Mulish',
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: TextStyle(
        color: Color(0XFF4B545C),
        fontSize: 14,
        fontFamily: 'Mulish',
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        color: Color(0XFF8998A8),
        fontSize: 10,
        fontFamily: 'Mulish',
        fontWeight: FontWeight.w400,
      ),
      displaySmall: TextStyle(
        color: Color(0XFFFCFEFF),
        fontSize: 36,
        fontFamily: 'Mulish',
        fontWeight: FontWeight.w900,
      ),
      headlineLarge: TextStyle(
        color: Color(0XFFFFFFFF),
        fontSize: 32,
        fontFamily: 'Mulish',
        fontWeight: FontWeight.w900,
      ),
      titleMedium: TextStyle(
        color: Color(0XFFFCFEFF),
        fontSize: 18,
        fontFamily: 'Mulish',
        fontWeight: FontWeight.w700,
      ),
      titleSmall: TextStyle(
        color: Color(0XFFFCFEFF),
        fontSize: 14,
        fontFamily: 'Mulish',
        fontWeight: FontWeight.w600,
      ),
    ),
    scaffoldBackgroundColor: const Color(0xff000000),
  );
}
