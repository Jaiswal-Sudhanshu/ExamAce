import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color charcoal = Color(0xFF1F1F1F);
  static const Color darkBrown = Color(0xFF3B2F2F);
  static const Color amber = Color(0xFFE3B341);
  static const Color softYellow = Color(0xFFFFE9A7);
  static const Color slate = Color(0xFF2A2A2A);
  static const Color card = Color(0xFF262222);
  static const Color border = Color(0xFF413737);
  static const Color accent = Color(0xFFB8793D);
}

class AppTheme {
  static final _baseTextTheme = GoogleFonts.interTextTheme();

  // ================================
  // DARK THEME
  // ================================
  static final ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,

    scaffoldBackgroundColor: AppColors.charcoal,

    colorScheme: const ColorScheme.dark(
      primary: AppColors.amber,
      secondary: AppColors.accent,
      surface: AppColors.card,
      background: AppColors.charcoal,
    ),

    cardTheme: const CardThemeData(
  elevation: 2,
  color: Colors.white,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(18)),
  ),
),


    dividerColor: AppColors.border,

    // ================= Typography
    textTheme: _baseTextTheme.copyWith(
      displayLarge: const TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.6,
        color: Colors.white,
      ),
      displayMedium: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.4,
        color: Colors.white,
      ),
      titleLarge: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      titleMedium: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      bodyLarge: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.6,
        color: Colors.white70,
      ),
      bodyMedium: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.6,
        color: Colors.white60,
      ),
      labelLarge: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.5,
        color: Colors.white,
      ),
    ),

    // ================= AppBar
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.charcoal,
      elevation: 0,
      centerTitle: false,
      iconTheme: IconThemeData(color: AppColors.softYellow),
      titleTextStyle: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),

    // ================= Buttons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.amber,
        foregroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        textStyle: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),

    // ================= Navigation
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.slate,
      selectedItemColor: AppColors.amber,
      unselectedItemColor: Colors.white54,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.amber,
      foregroundColor: Colors.black,
    ),

    // ================= Chips
    chipTheme: const ChipThemeData(
      backgroundColor: AppColors.slate,
      selectedColor: AppColors.amber,
      labelStyle: TextStyle(
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      shape: StadiumBorder(),
    ),

    // ================= Inputs
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: AppColors.slate,
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(14)),
        borderSide: BorderSide(color: AppColors.border),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(14)),
        borderSide: BorderSide(color: AppColors.border),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(14)),
        borderSide: BorderSide(color: AppColors.amber, width: 1.5),
      ),
      hintStyle: TextStyle(color: Colors.white54),
    ),
  );

  // ================================
  // LIGHT THEME
  // ================================
  static final ThemeData light = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,

    scaffoldBackgroundColor: Colors.grey.shade100,

    colorScheme: ColorScheme.light(
      primary: AppColors.amber,
      secondary: AppColors.accent,
      surface: Colors.white,
      background: Colors.grey.shade100,
    ),

    cardTheme: const CardThemeData(
  elevation: 2,
  color: Colors.white,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(18)),
  ),
),


    dividerColor: Colors.grey.shade300,

    textTheme: _baseTextTheme.copyWith(
      displayLarge: const TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.6,
        color: Colors.black,
      ),
      displayMedium: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.4,
        color: Colors.black,
      ),
      titleLarge: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      ),
      titleMedium: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      ),
      bodyLarge: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.6,
        color: Colors.black87,
      ),
      bodyMedium: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.6,
        color: Colors.black54,
      ),
      labelLarge: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.5,
        color: Colors.black87,
      ),
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: false,
      iconTheme: IconThemeData(color: AppColors.darkBrown),
      titleTextStyle: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.amber,
        foregroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        textStyle: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.darkBrown,
      unselectedItemColor: Colors.grey.shade600,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.amber,
      foregroundColor: Colors.black,
    ),

    chipTheme: ChipThemeData(
      backgroundColor: Colors.grey.shade200,
      selectedColor: AppColors.amber,
      labelStyle: const TextStyle(
        fontWeight: FontWeight.w500,
        color: Colors.black87,
      ),
      shape: const StadiumBorder(),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey.shade200,
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      border: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(14)),
        borderSide: BorderSide(color: Colors.grey.shade300),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(14)),
        borderSide: BorderSide(color: Colors.grey.shade300),
      ),
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(14)),
        borderSide: BorderSide(color: AppColors.darkBrown, width: 1.5),
      ),
      hintStyle: const TextStyle(color: Colors.black45),
    ),
  );
}
