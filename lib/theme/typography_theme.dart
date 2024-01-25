import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors_theme.dart';

class TypographyTheme {
  static TextStyle headingBig({
    Color color = ColorsTheme.black,
    FontWeight fontWeight = FontWeight.w700,
  }) {
    return GoogleFonts.manrope(textStyle: TextStyle(fontWeight: fontWeight, fontSize: 28, color: color));
  }

  static TextStyle heading1({
    Color color = ColorsTheme.black,
    FontWeight fontWeight = FontWeight.w600,
  }) {
    return GoogleFonts.manrope(textStyle: TextStyle(fontWeight: fontWeight, fontSize: 20, color: color));
  }

  static TextStyle heading2({
    Color color = ColorsTheme.black,
    FontWeight fontWeight = FontWeight.w600,
  }) {
    return GoogleFonts.manrope(textStyle: TextStyle(fontWeight: fontWeight, fontSize: 18, color: color));
  }

  static TextStyle heading3({
    Color color = ColorsTheme.black,
    FontWeight fontWeight = FontWeight.w600,
  }) {
    return GoogleFonts.manrope(textStyle: TextStyle(fontWeight: fontWeight, fontSize: 16, color: color));
  }

  static TextStyle heading4({
    Color color = ColorsTheme.black,
    FontWeight fontWeight = FontWeight.w600,
  }) {
    return GoogleFonts.manrope(textStyle: TextStyle(fontWeight: fontWeight, fontSize: 14, color: color));
  }

  static TextStyle heading5({
    Color color = ColorsTheme.black,
    FontWeight fontWeight = FontWeight.w600,
  }) {
    return GoogleFonts.manrope(textStyle: TextStyle(fontWeight: fontWeight, fontSize: 13, color: color));
  }

  static TextStyle text1({
    Color color = ColorsTheme.black,
    FontWeight fontWeight = FontWeight.w400,
  }) {
    return GoogleFonts.manrope(textStyle: TextStyle(fontWeight: fontWeight, fontSize: 14, color: color));
  }

  static TextStyle text2({
    Color color = ColorsTheme.black,
    FontWeight fontWeight = FontWeight.w400,
  }) {
    return GoogleFonts.manrope(textStyle: TextStyle(fontWeight: fontWeight, fontSize: 12, color: color));
  }
}
