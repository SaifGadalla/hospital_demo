import '../../common.dart';

ThemeData _buildTheme(Brightness brightness, AppColors colors) {
  final isLight = brightness == Brightness.light;

  return ThemeData(
    brightness: brightness,
    colorScheme: ColorScheme.fromSeed(
      brightness: brightness,
      seedColor: colors.primary,
      primary: colors.primary,
      secondary: colors.secondary,
      surface: colors.surface,
      error: colors.error,
      onPrimary: colors.textInverse,
      onSecondary: colors.textInverse,
      onSurface: colors.textPrimary,
      onError: colors.textInverse,
    ),
    scaffoldBackgroundColor: colors.background,
    extensions: [colors],
    appBarTheme: AppBarTheme(
      backgroundColor: colors.surface,
      foregroundColor: colors.textPrimary,
      elevation: 0,
      centerTitle: false,
      iconTheme: IconThemeData(color: colors.textPrimary),
    ),
    dialogTheme: DialogThemeData(
      backgroundColor: colors.surface,
      elevation: 8,
      shadowColor: Colors.black.withValues(alpha: 0.1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      titleTextStyle: TextStyleManager.h3.copyWith(color: colors.textPrimary),
      contentTextStyle: TextStyleManager.bodyMedium.copyWith(
        color: colors.textSecondary,
      ),
    ),
    textTheme: TextTheme(
      displayLarge: TextStyleManager.h1.copyWith(color: colors.textPrimary),
      displayMedium: TextStyleManager.h2.copyWith(color: colors.textPrimary),
      displaySmall: TextStyleManager.h3.copyWith(color: colors.textPrimary),
      headlineMedium: TextStyleManager.h4.copyWith(color: colors.textPrimary),
      bodyLarge: TextStyleManager.bodyLarge.copyWith(color: colors.textPrimary),
      bodyMedium: TextStyleManager.bodyMedium.copyWith(
        color: colors.textPrimary,
      ),
      bodySmall: TextStyleManager.bodySmall.copyWith(
        color: colors.textSecondary,
      ),
      labelLarge: TextStyleManager.buttonText.copyWith(
        color: colors.textInverse,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: isLight ? colors.surface : colors.surfaceElevated,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: colors.border),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: colors.border),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: colors.primary, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: colors.error),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: colors.error, width: 2),
      ),
      labelStyle: TextStyleManager.bodyMedium.copyWith(
        color: colors.textSecondary,
      ),
      hintStyle: TextStyleManager.bodyMedium.copyWith(
        color: colors.textSecondary,
      ),
    ),
    searchBarTheme: SearchBarThemeData(
      backgroundColor: WidgetStateProperty.all(colors.surfaceElevated),
      elevation: WidgetStateProperty.all(0),
      shadowColor: WidgetStateProperty.all(Colors.transparent),
      side: WidgetStateProperty.all(BorderSide(color: colors.border)),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      textStyle: WidgetStateProperty.all(
        TextStyleManager.bodyMedium.copyWith(color: colors.textPrimary),
      ),
      hintStyle: WidgetStateProperty.all(
        TextStyleManager.bodyMedium.copyWith(color: colors.textSecondary),
      ),
    ),
    dropdownMenuTheme: DropdownMenuThemeData(
      menuStyle: MenuStyle(
        backgroundColor: WidgetStateProperty.all(colors.surface),
        side: WidgetStateProperty.all(BorderSide(color: colors.border)),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),
      textStyle: TextStyleManager.bodyMedium.copyWith(
        color: colors.textPrimary,
      ),
    ),
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: colors.primary,
        foregroundColor: colors.textInverse,
        textStyle: TextStyleManager.buttonText,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: colors.primary,
        textStyle: TextStyleManager.buttonText.copyWith(color: colors.primary),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: colors.textPrimary,
        side: BorderSide(color: colors.border),
        textStyle: TextStyleManager.buttonText.copyWith(
          color: colors.textPrimary,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      ),
    ),
    dividerTheme: DividerThemeData(
      color: colors.divider,
      thickness: 1,
      space: 1,
    ),
    cardTheme: CardThemeData(
      color: colors.surface,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: colors.border),
      ),
      margin: EdgeInsets.zero,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: colors.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
    ),
  );
}

ThemeData lightTheme = _buildTheme(Brightness.light, AppColors.light);
ThemeData darkTheme = _buildTheme(Brightness.dark, AppColors.dark);
