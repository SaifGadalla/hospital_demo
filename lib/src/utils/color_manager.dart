import 'package:flutter/material.dart';

class ColorManager {
  // Core theme colors
  static const Color primary = Color(0xFF4F46E5); // Indigo 600
  static const Color primaryLight = Color(0xFF818CF8); // Indigo 400
  static const Color primaryDark = Color(0xFF3730A3); // Indigo 800

  // Secondary/Accent colors
  static const Color secondary = Color(0xFF10B981); // Emerald 500
  static const Color secondaryLight = Color(0xFF34D399); // Emerald 400
  static const Color secondaryDark = Color(0xFF047857); // Emerald 700

  // Backgrounds & Surfaces
  static const Color background = Color(0xFFF9FAFB); // Gray 50
  static const Color surface = Color(0xFFFFFFFF); // White
  static const Color surfaceElevated = Color(0xFFF3F4F6); // Gray 100

  // Text colors
  static const Color textPrimary = Color(0xFF111827); // Gray 900
  static const Color textSecondary = Color(0xFF6B7280); // Gray 500
  static const Color textInverse = Color(0xFFFFFFFF); // White

  // Borders & Dividers
  static const Color border = Color(0xFFE5E7EB); // Gray 200
  static const Color divider = Color(0xFFF3F4F6); // Gray 100

  // Status/Feedback colors
  static const Color success = Color(0xFF10B981); // Emerald 500
  static const Color successBackground = Color(0xFFD1FAE5); // Emerald 100
  static const Color warning = Color(0xFFF59E0B); // Amber 500
  static const Color warningBackground = Color(0xFFFEF3C7); // Amber 100
  static const Color error = Color(0xFFEF4444); // Red 500
  static const Color errorBackground = Color(0xFFFEE2E2); // Red 100
  static const Color info = Color(0xFF3B82F6); // Blue 500
  static const Color infoBackground = Color(0xFFDBEAFE); // Blue 100

  // Status mapping
  static Color getStatusColor(String? status) {
    if (status == null) return textSecondary;
    final s = status.toLowerCase();
    if (s == 'completed' || s == 'approved' || s == 'discharged') return success;
    if (s == 'pending' || s == 'in_progress' || s == 'inprogress' || s == 'admitted') return warning;
    if (s == 'cancelled' || s == 'stat') return error;
    if (s == 'routine') return info;
    return textSecondary;
  }
}
