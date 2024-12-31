import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../gen/colors.gen.dart';

class Themes {
  ThemeData selectLightTheme() {
    final Map<int, Color> color = {
      50: ColorName.primaryColor.withValues(alpha: .1),
      100: ColorName.primaryColor.withValues(alpha: .2),
      200: ColorName.primaryColor.withValues(alpha: .3),
      300: ColorName.primaryColor.withValues(alpha: .4),
      400: ColorName.primaryColor.withValues(alpha: .5),
      500: ColorName.primaryColor.withValues(alpha: .6),
      600: ColorName.primaryColor.withValues(alpha: .7),
      700: ColorName.primaryColor.withValues(alpha: .8),
      800: ColorName.primaryColor.withValues(alpha: .9),
      900: ColorName.primaryColor.withValues(alpha: 1),
    };

    return ThemeData(
      useMaterial3: false,
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.all(ColorName.primaryColor),
      ),
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 3,
      ),
      fontFamily: 'Solway',
      splashColor: ColorName.primaryColor,
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      primaryColor: ColorName.primaryColor,
      appBarTheme: selectAppBarTheme(),
      primarySwatch: MaterialColor(ColorName.primaryColor.value, color),
      textTheme: selectTextTheme(),
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.white,
        shape: RoundedRectangleBorder(),
      ),
      elevatedButtonTheme: elevatedButtonTheme(),
      outlinedButtonTheme: outLinedButtonTheme(),
      dividerTheme: DividerThemeData(
        color: Colors.grey.withAlpha(500),
      ),
      dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      listTileTheme: const ListTileThemeData(
        tileColor: Colors.white,
      ),
    );
  }

  TextTheme selectTextTheme() {
    return const TextTheme(
      displayLarge: TextStyle(
        fontSize: 32,
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
      displayMedium: TextStyle(
        fontSize: 30,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
      displaySmall: TextStyle(
        fontSize: 24,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
      headlineMedium: TextStyle(
        fontSize: 18,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
      bodyLarge: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
      titleMedium: TextStyle(
        fontSize: 12,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
      titleSmall: TextStyle(
        color: Colors.black,
        fontSize: 10,
        fontWeight: FontWeight.w400,
      ),
      labelLarge: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  AppBarTheme selectAppBarTheme() {
    return const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      backgroundColor: Colors.white,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: ColorName.primaryColor,
        fontFamily: "Solway",
      ),
    );
  }

  ElevatedButtonThemeData elevatedButtonTheme() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
        disabledForegroundColor: Colors.white,
        disabledBackgroundColor: const Color(0xffFBBAB6),
        backgroundColor: ColorName.primaryColor,
        padding: const EdgeInsets.symmetric(vertical: 15),
      ),
    );
  }

  OutlinedButtonThemeData outLinedButtonTheme() {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15),
        textStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          fontFamily: 'Solway',
        ),
      ),
    );
  }

  InputDecorationTheme inputDecorationTheme() {
    return InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6.0),
        borderSide: const BorderSide(color: ColorName.primaryColor),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6.0),
      ),
      focusColor: ColorName.primaryColor,
      hintStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      labelStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      fillColor: Colors.white,
      filled: true,
    );
  }
}
