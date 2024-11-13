import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppColors {
  // Primary Brand Color
  static const MaterialColor primarySwatch = Colors.deepOrange;

  // Custom Color Scheme
  static const ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFFFF5722), // Deep Orange 500
    onPrimary: Colors.white,
    primaryContainer: Color(0xFFFFCCBC), // Deep Orange 100
    onPrimaryContainer: Color(0xFF3E2723), // Brown 900

    secondary: Color(0xFF66BB6A), // Green 400
    onSecondary: Colors.white,
    secondaryContainer: Color(0xFFC8E6C9), // Green 100
    onSecondaryContainer: Color(0xFF1B5E20), // Green 900

    tertiary: Color(0xFFFFB300), // Amber 600
    onTertiary: Colors.black,
    tertiaryContainer: Color(0xFFFFECB3), // Amber 100
    onTertiaryContainer: Color(0xFF4E342E), // Brown 800

    error: Color(0xFFD32F2F),
    onError: Colors.white,
    errorContainer: Color(0xFFFFCDD2),
    onErrorContainer: Color(0xFF621B16),

    background: Colors.white,
    onBackground: Colors.black,
    surface: Colors.white,
    onSurface: Colors.black,

    surfaceVariant: Color(0xFFF5F5F5),
    onSurfaceVariant: Color(0xFF616161),
    outline: Color(0xFFBDBDBD),
  );

  // Status Colors
  static const Color activeStatus = Color(0xFF66BB6A); // Green 400
  static const Color pendingStatus = Color(0xFFFFA726); // Orange 400
  static const Color cancelledStatus = Color(0xFFEF5350); // Red 400
  static const Color expiredStatus = Color(0xFF9E9E9E); // Grey 500

  // Semantic Colors
  static const Color successGreen = Color(0xFF4CAF50);
  static const Color warningAmber = Color(0xFFFFA000);
  static const Color errorRed = Color(0xFFE53935);
  static const Color infoBlue = Color(0xFF2196F3);
}

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: AppColors.lightColorScheme,
    textTheme: AppTypography.textTheme,

    chipTheme: ChipThemeData(
      backgroundColor: AppColors.lightColorScheme.surfaceVariant,
      labelStyle: AppTypography.chipLabel.copyWith(
        color: AppColors.lightColorScheme.onSurfaceVariant,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
    ),

    // Button Text Styles
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: AppTypography.textTheme.labelLarge,
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: AppTypography.textTheme.labelLarge,
      ),
    ),

    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        textStyle: AppTypography.textTheme.labelLarge,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
    // Card Theme
    cardTheme: CardTheme(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),

    // App Bar Theme
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.lightColorScheme.surface,
      foregroundColor: AppColors.lightColorScheme.onSurface,
      elevation: 0,
    ),

    // Tab Bar Theme
    tabBarTheme: TabBarTheme(
      labelColor: AppColors.lightColorScheme.primary,
      unselectedLabelColor: AppColors.lightColorScheme.onSurfaceVariant,
      indicatorColor: AppColors.lightColorScheme.primary,
    ),
  );
}

class AppTypography {
  // Base Font Family
  static const String fontFamily = 'Poppins'; // or your preferred font

  static TextTheme textTheme = TextTheme(
    // Display Large - Used for largest headlines
    displayLarge: TextStyle(
      fontSize: 57.sp,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.25,
      height: 1.12,
      fontFamily: fontFamily,
    ),

    // Display Medium - Very large headlines
    displayMedium: TextStyle(
      fontSize: 45.sp,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.15,
      fontFamily: fontFamily,
    ),

    // Display Small - Large headlines
    displaySmall: TextStyle(
      fontSize: 36.sp,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.22,
      fontFamily: fontFamily,
    ),

    // Headline Large - Used for hero text
    headlineLarge: TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      height: 1.25,
      fontFamily: fontFamily,
    ),

    // Headline Medium - Used for section headings
    headlineMedium: TextStyle(
      fontSize: 28.sp,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
      height: 1.28,
      fontFamily: fontFamily,
    ),

    // Headline Small - Used for subsection headings
    headlineSmall: TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
      height: 1.33,
      fontFamily: fontFamily,
    ),

    // Title Large - Used for large buttons and tabs
    titleLarge: TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
      height: 1.27,
      fontFamily: fontFamily,
    ),

    // Title Medium - Used for medium-emphasis text
    titleMedium: TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.15,
      height: 1.5,
      fontFamily: fontFamily,
    ),

    // Title Small - Used for smaller titles
    titleSmall: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      height: 1.42,
      fontFamily: fontFamily,
    ),

    // Label Large - Used for large buttons
    labelLarge: TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      height: 1.42,
      fontFamily: fontFamily,
    ),

    // Label Medium - Used for medium-sized buttons
    labelMedium: TextStyle(
      fontSize: 11.sp,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      height: 1.33,
      fontFamily: fontFamily,
    ),

    // Label Small - Used for small labels and chips
    labelSmall: TextStyle(
      fontSize: 10.sp,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      height: 1.45,
      fontFamily: fontFamily,
    ),

    // Body Large - Used for primary body text
    bodyLarge: TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      height: 1.5,
      fontFamily: fontFamily,
    ),

    // Body Medium - Used for secondary body text
    bodyMedium: TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      height: 1.42,
      fontFamily: fontFamily,
    ),

    // Body Small - Used for supporting text
    bodySmall: TextStyle(
      fontSize: 10.sp,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      height: 1.33,
      fontFamily: fontFamily,
    ),
  );

  // Custom Text Styles for specific use cases
  static TextStyle get subscriptionPrice => TextStyle(
        fontSize: 28.sp,
        fontWeight: FontWeight.w600,
        letterSpacing: 0,
        height: 1.25,
        fontFamily: fontFamily,
      );

  static TextStyle get vendorName => TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.15,
        height: 1.4,
        fontFamily: fontFamily,
      );

  static TextStyle get menuItemPrice => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        height: 1.5,
        fontFamily: fontFamily,
      );

  static TextStyle get ratingText => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        height: 1.42,
        fontFamily: fontFamily,
      );

  static TextStyle get chipLabel => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
        height: 1.33,
        fontFamily: fontFamily,
      );
}
