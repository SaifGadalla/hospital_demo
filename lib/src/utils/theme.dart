import '../../common.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSeed(
    seedColor: ColorManager.primary,
    primary: ColorManager.primary,
    secondary: ColorManager.secondary,
    surface: ColorManager.surface,
    error: ColorManager.error,
  ),
  scaffoldBackgroundColor: ColorManager.background,
  appBarTheme: AppBarTheme(
    backgroundColor: ColorManager.primary,
    foregroundColor: ColorManager.textInverse,
    elevation: 0,
  ),
  textTheme: TextTheme(
    displayLarge: TextStyleManager.h1,
    displayMedium: TextStyleManager.h2,
    displaySmall: TextStyleManager.h3,
    headlineMedium: TextStyleManager.h4,
    bodyLarge: TextStyleManager.bodyLarge,
    bodyMedium: TextStyleManager.bodyMedium,
    bodySmall: TextStyleManager.bodySmall,
    labelLarge: TextStyleManager.buttonText,
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: ColorManager.surface,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: ColorManager.border),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: ColorManager.border),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: ColorManager.primary, width: 2),
    ),
  ),
  searchBarTheme: SearchBarThemeData(
    backgroundColor: WidgetStateProperty.all(ColorManager.surfaceElevated),
    elevation: WidgetStateProperty.all(0),
    shadowColor: WidgetStateProperty.all(Colors.transparent),
    side: WidgetStateProperty.all(const BorderSide(color: ColorManager.border)),
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  ),
  dropdownMenuTheme: DropdownMenuThemeData(
    menuStyle: MenuStyle(
      backgroundColor: WidgetStateProperty.all(ColorManager.surface),
      side: WidgetStateProperty.all(const BorderSide(color: ColorManager.border)),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
  ),
  buttonTheme: ButtonThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: ColorManager.primary,
      foregroundColor: ColorManager.textInverse,
      textStyle: TextStyleManager.buttonText,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 0,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: ColorManager.primary,
      textStyle: TextStyleManager.buttonText.copyWith(color: ColorManager.primary),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: ColorManager.primary,
      side: const BorderSide(color: ColorManager.border),
      textStyle: TextStyleManager.buttonText.copyWith(color: ColorManager.primary),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  ),
  dividerTheme: const DividerThemeData(
    color: ColorManager.divider,
    thickness: 1,
    space: 1,
  ),
);
