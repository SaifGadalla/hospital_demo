import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_manager.dart';

class TextStyleManager {
  static TextStyle get baseStyle => GoogleFonts.inter(
        color: ColorManager.textPrimary,
      );

  // Headings
  static TextStyle get h1 => baseStyle.copyWith(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        letterSpacing: -0.5,
      );

  static TextStyle get h2 => baseStyle.copyWith(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        letterSpacing: -0.5,
      );

  static TextStyle get h3 => baseStyle.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get h4 => baseStyle.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.w600,
      );

  // Body text
  static TextStyle get bodyLarge => baseStyle.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.normal,
      );

  static TextStyle get bodyMedium => baseStyle.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.normal,
      );

  static TextStyle get bodySmall => baseStyle.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.normal,
      );

  // Labels & Captions
  static TextStyle get label => baseStyle.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: ColorManager.textSecondary,
      );

  static TextStyle get caption => baseStyle.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: ColorManager.textSecondary,
      );

  // Button text
  static TextStyle get buttonText => baseStyle.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: ColorManager.textInverse,
      );
}
