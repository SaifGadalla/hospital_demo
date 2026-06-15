import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  final Color primary;
  final Color primaryLight;
  final Color primaryDark;
  final Color secondary;
  final Color secondaryLight;
  final Color secondaryDark;
  final Color background;
  final Color surface;
  final Color surfaceElevated;
  final Color textPrimary;
  final Color textSecondary;
  final Color textInverse;
  final Color border;
  final Color divider;
  final Color success;
  final Color successBackground;
  final Color warning;
  final Color warningBackground;
  final Color error;
  final Color errorBackground;
  final Color info;
  final Color infoBackground;

  const AppColors({
    required this.primary,
    required this.primaryLight,
    required this.primaryDark,
    required this.secondary,
    required this.secondaryLight,
    required this.secondaryDark,
    required this.background,
    required this.surface,
    required this.surfaceElevated,
    required this.textPrimary,
    required this.textSecondary,
    required this.textInverse,
    required this.border,
    required this.divider,
    required this.success,
    required this.successBackground,
    required this.warning,
    required this.warningBackground,
    required this.error,
    required this.errorBackground,
    required this.info,
    required this.infoBackground,
  });

  @override
  AppColors copyWith({
    Color? primary,
    Color? primaryLight,
    Color? primaryDark,
    Color? secondary,
    Color? secondaryLight,
    Color? secondaryDark,
    Color? background,
    Color? surface,
    Color? surfaceElevated,
    Color? textPrimary,
    Color? textSecondary,
    Color? textInverse,
    Color? border,
    Color? divider,
    Color? success,
    Color? successBackground,
    Color? warning,
    Color? warningBackground,
    Color? error,
    Color? errorBackground,
    Color? info,
    Color? infoBackground,
  }) {
    return AppColors(
      primary: primary ?? this.primary,
      primaryLight: primaryLight ?? this.primaryLight,
      primaryDark: primaryDark ?? this.primaryDark,
      secondary: secondary ?? this.secondary,
      secondaryLight: secondaryLight ?? this.secondaryLight,
      secondaryDark: secondaryDark ?? this.secondaryDark,
      background: background ?? this.background,
      surface: surface ?? this.surface,
      surfaceElevated: surfaceElevated ?? this.surfaceElevated,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textInverse: textInverse ?? this.textInverse,
      border: border ?? this.border,
      divider: divider ?? this.divider,
      success: success ?? this.success,
      successBackground: successBackground ?? this.successBackground,
      warning: warning ?? this.warning,
      warningBackground: warningBackground ?? this.warningBackground,
      error: error ?? this.error,
      errorBackground: errorBackground ?? this.errorBackground,
      info: info ?? this.info,
      infoBackground: infoBackground ?? this.infoBackground,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this;
    return AppColors(
      primary: Color.lerp(primary, other.primary, t)!,
      primaryLight: Color.lerp(primaryLight, other.primaryLight, t)!,
      primaryDark: Color.lerp(primaryDark, other.primaryDark, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      secondaryLight: Color.lerp(secondaryLight, other.secondaryLight, t)!,
      secondaryDark: Color.lerp(secondaryDark, other.secondaryDark, t)!,
      background: Color.lerp(background, other.background, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      surfaceElevated: Color.lerp(surfaceElevated, other.surfaceElevated, t)!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      textInverse: Color.lerp(textInverse, other.textInverse, t)!,
      border: Color.lerp(border, other.border, t)!,
      divider: Color.lerp(divider, other.divider, t)!,
      success: Color.lerp(success, other.success, t)!,
      successBackground: Color.lerp(
        successBackground,
        other.successBackground,
        t,
      )!,
      warning: Color.lerp(warning, other.warning, t)!,
      warningBackground: Color.lerp(
        warningBackground,
        other.warningBackground,
        t,
      )!,
      error: Color.lerp(error, other.error, t)!,
      errorBackground: Color.lerp(errorBackground, other.errorBackground, t)!,
      info: Color.lerp(info, other.info, t)!,
      infoBackground: Color.lerp(infoBackground, other.infoBackground, t)!,
    );
  }

  // Pre-defined modern clinical light theme
  static const AppColors light = AppColors(
    primary: Color(0xFF0D9488), // Deep Teal
    primaryLight: Color(0xFF99F6E4),
    primaryDark: Color(0xFF115E59),
    secondary: Color(0xFF2563EB), // Trust Blue
    secondaryLight: Color(0xFF93C5FD),
    secondaryDark: Color(0xFF1D4ED8),
    background: Color(0xFFF8FAFC), // Slate 50
    surface: Color(0xFFFFFFFF),
    surfaceElevated: Color(0xFFF1F5F9), // Slate 100
    textPrimary: Color(0xFF0F172A), // Slate 900
    textSecondary: Color(0xFF475569), // Slate 600
    textInverse: Color(0xFFFFFFFF),
    border: Color(0xFFE2E8F0), // Slate 200
    divider: Color(0xFFF1F5F9),
    success: Color(0xFF059669), // Emerald 600
    successBackground: Color(0xFFD1FAE5),
    warning: Color(0xFFD97706), // Amber 600 (Accessible contrast)
    warningBackground: Color(0xFFFEF3C7),
    error: Color(0xFFDC2626), // Red 600 (Urgent/STAT)
    errorBackground: Color(0xFFFEE2E2),
    info: Color(0xFF0284C7), // Sky 600 (Routine)
    infoBackground: Color(0xFFE0F2FE),
  );

  // Pre-defined modern clinical dark theme
  static const AppColors dark = AppColors(
    primary: Color(0xFF2DD4BF), // Teal 400
    primaryLight: Color(0xFF5EEAD4),
    primaryDark: Color(0xFF0D9488),
    secondary: Color(0xFF60A5FA), // Blue 400
    secondaryLight: Color(0xFF93C5FD),
    secondaryDark: Color(0xFF2563EB),
    background: Color(0xFF0F172A), // Slate 900
    surface: Color(0xFF1E293B), // Slate 800
    surfaceElevated: Color(0xFF334155), // Slate 700
    textPrimary: Color(0xFFF8FAFC), // Slate 50
    textSecondary: Color(0xFF94A3B8), // Slate 400
    textInverse: Color(0xFF0F172A),
    border: Color(0xFF334155),
    divider: Color(0xFF1E293B),
    success: Color(0xFF34D399),
    successBackground: Color(0xFF064E3B),
    warning: Color(0xFFFBBF24),
    warningBackground: Color(0xFF78350F),
    error: Color(0xFFF87171),
    errorBackground: Color(0xFF7F1D1D),
    info: Color(0xFF38BDF8),
    infoBackground: Color(0xFF0C4A6E),
  );

  Color getStatusColor(String? status) {
    if (status == null) return textSecondary;
    final s = status.toLowerCase();
    if (s == 'completed' || s == 'approved' || s == 'discharged' || s == 'closed') {
      return success;
    }
    if (s == 'pending' ||
        s == 'in_progress' ||
        s == 'inprogress' ||
        s == 'admitted' ||
        s == 'intreatment' ||
        s == 'waiting') {
      return warning;
    }
    if (s == 'cancelled' || s == 'stat') return error;
    if (s == 'routine') return info;
    return textSecondary;
  }
}

extension AppColorsContextExtension on BuildContext {
  AppColors get colors =>
      Theme.of(this).extension<AppColors>() ?? AppColors.light;
}
