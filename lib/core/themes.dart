// burada temalandırma + renkler + ... yazacağız
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

// import 'constants.dart';

// theme_provider.dart
class ThemeProvider with ChangeNotifier {
  bool _isDark = false;
  bool get isDark => _isDark;

  void toggleTheme() {
    _isDark = !_isDark;
    notifyListeners();
  }
}

const colors = {
  "primary":  Color.fromARGB(255, 237,232,208),
  "onPrimary": Color.fromARGB(255, 22, 49, 124),
  "secondary": Color.fromARGB(255, 22, 49, 124),
  "onSecondary": Color.fromARGB(228, 255, 217, 0),
  "surface": Color.fromARGB(255, 255, 255, 255),
  "onSurface": Color.fromARGB(255, 82, 76, 100),
  "success": Colors.green,
  "error": Colors.red,
  "onError": Colors.white,
};

const darkColors = {
  "primary": Color.fromARGB(255, 32, 43, 54),
  "onPrimary": Color.fromARGB(255, 237,232,208),
  "secondary": Color.fromARGB(255, 22, 49, 124),
  "onSecondary": Color.fromARGB(228, 255, 217, 0),
  "surface": Color.fromARGB(255, 23, 33, 43),
  "onSurface": Color.fromARGB(255, 245, 245, 245),
  "success": Colors.green,
  "error": Colors.red,
  "onError": Colors.white,
};

final lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: colors["primary"]!,
    onPrimary: colors["onPrimary"]!,
    secondary: colors["secondary"]!,
    onSecondary: colors["onSecondary"]!,
    error: colors["error"]!,
    onError: colors["onError"]!,
    surface: colors["surface"]!,
    onSurface: colors["onSurface"]!,
  ),
  textTheme: TextTheme(
    bodySmall: GoogleFonts.roboto(
        // fontSize: 32,
        ),
    bodyMedium: GoogleFonts.roboto(),
    bodyLarge: GoogleFonts.roboto(),
    labelSmall: GoogleFonts.roboto(),
    labelMedium: GoogleFonts.roboto(),
    labelLarge: GoogleFonts.roboto(),
    titleSmall: GoogleFonts.roboto(),
    titleMedium: GoogleFonts.roboto(),
    titleLarge: GoogleFonts.roboto(),
    headlineSmall: GoogleFonts.aBeeZee(),
    headlineMedium: GoogleFonts.aBeeZee(),
    headlineLarge: GoogleFonts.aBeeZee(),
    displaySmall: GoogleFonts.abrilFatface(),
    displayMedium: GoogleFonts.abrilFatface(),
    displayLarge: GoogleFonts.abrilFatface(),
  ),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    brightness: Brightness.dark,
    primary: darkColors["primary"]!,
    onPrimary: darkColors["onPrimary"]!,
    secondary: darkColors["secondary"]!,
    onSecondary: darkColors["onSecondary"]!,
    error: darkColors["error"]!,
    onError: darkColors["onError"]!,
    surface: darkColors["surface"]!,
    onSurface: darkColors["onSurface"]!,
  ),
  textTheme: TextTheme(
    bodySmall: GoogleFonts.roboto(
        // fontSize: 30,
        ),
    bodyMedium: GoogleFonts.roboto(),
    bodyLarge: GoogleFonts.roboto(),
    labelSmall: GoogleFonts.roboto(),
    labelMedium: GoogleFonts.roboto(),
    labelLarge: GoogleFonts.roboto(),
    titleSmall: GoogleFonts.roboto(),
    titleMedium: GoogleFonts.roboto(),
    titleLarge: GoogleFonts.roboto(),
    headlineSmall: GoogleFonts.aBeeZee(),
    headlineMedium: GoogleFonts.aBeeZee(),
    headlineLarge: GoogleFonts.aBeeZee(),
    displaySmall: GoogleFonts.abrilFatface(),
    displayMedium: GoogleFonts.abrilFatface(),
    displayLarge: GoogleFonts.abrilFatface(),
  ),
);
const arkaplanRenkim = Color.fromARGB(255, 237,232,208);
const ikincilRenkim = Color.fromARGB(255, 22, 49, 124);
const baslikRenkim = Color.fromARGB(228, 255, 217, 0);