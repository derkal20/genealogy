import 'package:flutter/material.dart';

class AppColors {
  static const white = Color(0xFFFFFFFF);
  static const green = Color(0xFF70855F);
  static const darkRed = Color(0xFFCC5237);
  static const text = Color(0xFF464647);
  static const black = Color(0xFF000000);
  static const orange = Color(0xFFE4A11B);
  static const paleBrown = Color(0xFFFBC355);
  static const darkBrown = Color(0xFF9E6F29);
  static const gray = Color(0xFFA4A2A2);
  static const orangeGreen = LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.topLeft,
      colors: [AppColors.orange, Color(0xFFA2CC81), Color(0xFFA2CC81)]);
  static const orangeOpacity = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [AppColors.orange, AppColors.orange, Color(0x00A1CC81)]);
  static const brownOpacity = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        darkBrown,
        Color.fromARGB(150, 228, 161, 27),
        Color.fromARGB(99, 228, 161, 27),
        Color.fromARGB(33, 228, 161, 27),
        Color(0x00A1CC81)
      ]);
}
