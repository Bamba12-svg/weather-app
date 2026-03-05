import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:application_meteo_flutter/coeur/constantes/couleurs_app.dart';

class ThemeApp {
  static ThemeData get clair => ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(
          seedColor: CouleursApp.bleuPluieClair,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: const Color(0xFFF0F4FF),
        cardTheme: CardThemeData(
          elevation: 8,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.white,
        ),
        textTheme: _texte(Colors.black87),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.white,
        ),
      );

  static ThemeData get sombre => ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: CouleursApp.bleuPluieFonce,
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: const Color(0xFF0D1B2A),
        cardTheme: CardThemeData(
          elevation: 8,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: const Color(0xFF1A2D42),
        ),
        textTheme: _texte(Colors.white),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.white,
        ),
      );

  static TextTheme _texte(Color couleur) => GoogleFonts.interTextTheme(
        TextTheme(
          displayLarge: TextStyle(
              color: couleur, fontWeight: FontWeight.bold, fontSize: 48),
          displayMedium: TextStyle(
              color: couleur, fontWeight: FontWeight.bold, fontSize: 36),
          headlineLarge: TextStyle(
              color: couleur, fontWeight: FontWeight.bold, fontSize: 28),
          headlineMedium: TextStyle(
              color: couleur, fontWeight: FontWeight.w600, fontSize: 22),
          titleLarge: TextStyle(
              color: couleur, fontWeight: FontWeight.w600, fontSize: 18),
          bodyLarge: TextStyle(color: couleur, fontSize: 16),
          bodyMedium: TextStyle(color: couleur.withValues(alpha: 0.8), fontSize: 14),
          bodySmall: TextStyle(color: couleur.withValues(alpha: 0.6), fontSize: 12),
        ),
      );
}