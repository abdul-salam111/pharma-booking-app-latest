import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class AppThemes {
  // Light Theme
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF6750A4),
      brightness: Brightness.light,
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: 0,
      backgroundColor: AppColors.appLightThemeBackground,
      titleTextStyle: GoogleFonts.montserrat(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
      iconTheme: const IconThemeData(color: Colors.black),
    ),
    textTheme: _textTheme(Colors.black),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 2,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    ),
  );

  // Dark Theme
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF6750A4),
      brightness: Brightness.dark,
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: 0,
      backgroundColor: AppColors.appDarkThemeBackground,
      titleTextStyle: GoogleFonts.montserrat(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
      iconTheme: const IconThemeData(color: Colors.white),
    ),
    textTheme: _textTheme(Colors.white),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 2,
        backgroundColor: const Color(0xFF6750A4),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    ),
  );

  static TextTheme _textTheme(Color color) => TextTheme(
    displayLarge: GoogleFonts.roboto(color: color),
    displayMedium: GoogleFonts.roboto(color: color),
    displaySmall: GoogleFonts.roboto(color: color),
    headlineLarge: GoogleFonts.roboto(color: color),
    headlineMedium: GoogleFonts.roboto(color: color),
    headlineSmall: GoogleFonts.roboto(color: color),
    titleLarge: GoogleFonts.roboto(color: color),
    titleMedium: GoogleFonts.roboto(color: color),
    titleSmall: GoogleFonts.roboto(color: color),
    bodyLarge: GoogleFonts.roboto(color: color),
    bodyMedium: GoogleFonts.roboto(color: color),
    bodySmall: GoogleFonts.roboto(color: color),
    labelLarge: GoogleFonts.roboto(color: color),
    labelMedium: GoogleFonts.roboto(color: color),
    labelSmall: GoogleFonts.roboto(color: color),
  );
}
