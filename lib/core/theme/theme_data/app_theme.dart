// =====================================================
// app_theme.dart
// =====================================================

import 'package:flutter/material.dart';

import 'package:movie_clean/core/resources/app_sizes.dart';
import 'package:movie_clean/core/theme/app_colors.dart';
import 'package:movie_clean/core/theme/extensions/material_state_property_extension.dart';
import 'package:movie_clean/core/theme/theme_data/button_theme.dart';

abstract final class AppTheme {
  static ThemeData build({required Brightness brightness}) {
    final colors = brightness == Brightness.dark
        ? darkAppColors
        : lightAppColors;

    final baseTextTheme = brightness == Brightness.dark
        ? Typography.material2021().white
        : Typography.material2021().black;

    return ThemeData(
      useMaterial3: true,

      brightness: brightness,

      scaffoldBackgroundColor: colors.background,

      // =====================================================
      // Color Scheme
      // =====================================================
      colorScheme: ColorScheme(
        brightness: brightness,

        primary: colors.primary.v100,
        onPrimary: colors.neutral.v0,

        secondary: colors.primary.v80,
        onSecondary: colors.neutral.v0,

        error: colors.danger.v100,
        onError: colors.neutral.v0,

        surface: colors.background,

        // IMPORTANT
        onSurface: colors.neutral.v100,
      ),

      // =====================================================
      // AppBar
      // =====================================================
      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: true,

        backgroundColor: colors.primary.v100,

        foregroundColor: colors.neutral.v20,

        surfaceTintColor: Colors.transparent,

        titleTextStyle: TextStyle(
          fontSize: AppSizes.sp18,
          fontWeight: FontWeight.w700,
          color: colors.neutral.v20,
        ),

        iconTheme: IconThemeData(
          color: colors.neutral.v100,
          size: AppSizes.sp24,
        ),
      ),

      // =====================================================
      // Icon Theme
      // =====================================================
      iconTheme: IconThemeData(color: colors.neutral.v100, size: AppSizes.sp24),

      // =====================================================
      // Progress Indicator
      // =====================================================
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: colors.primary.v100,
        circularTrackColor: colors.neutral.v20,
        linearTrackColor: colors.neutral.v20,
      ),

      // =====================================================
      // TabBar
      // =====================================================
      tabBarTheme: TabBarThemeData(
        splashFactory: InkRipple.splashFactory,

        indicatorColor: colors.primary.v100,

        dividerColor: Colors.transparent,

        overlayColor: colors.primary.v100.withValues(alpha: 0.15).msAll(),

        labelColor: colors.primary.v100,

        unselectedLabelColor: colors.neutral.v60,
      ),

      // =====================================================
      // Search Bar
      // =====================================================
      searchBarTheme: SearchBarThemeData(
        constraints: BoxConstraints(maxHeight: AppSizes.p64),

        padding: WidgetStatePropertyAll(
          EdgeInsets.symmetric(horizontal: AppSizes.p12, vertical: AppSizes.p8),
        ),

        backgroundColor: WidgetStatePropertyAll(colors.neutral.v10),

        surfaceTintColor: WidgetStatePropertyAll(Colors.transparent),

        elevation: const WidgetStatePropertyAll(0),
      ),

      // =====================================================
      // Bottom Navigation
      // =====================================================
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colors.background,

        selectedItemColor: colors.primary.v100,

        unselectedItemColor: colors.neutral.v60,

        type: BottomNavigationBarType.fixed,
      ),

      // =====================================================
      // Input Decoration
      // =====================================================
      inputDecorationTheme: InputDecorationTheme(
        filled: true,

        fillColor: colors.neutral.v10,

        suffixIconColor: colors.neutral.v100,

        hintStyle: TextStyle(
          color: colors.neutral.v60,
          fontSize: AppSizes.sp14,
        ),

        contentPadding: EdgeInsets.symmetric(
          vertical: AppSizes.p12,
          horizontal: AppSizes.p16,
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.r8),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.r8),

          borderSide: BorderSide(color: colors.neutral.v40, width: 1),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.r8),

          borderSide: BorderSide(color: colors.primary.v100, width: 1.5),
        ),
      ),

      // =====================================================
      // Dialog
      // =====================================================
      dialogTheme: DialogThemeData(
        backgroundColor: colors.neutral.v10,

        surfaceTintColor: Colors.transparent,
      ),

      // =====================================================
      // Buttons
      // =====================================================
      elevatedButtonTheme: buildElevateButtonTheme(colors: colors),

      outlinedButtonTheme: buildOutlineButtonTheme(colors: colors),

      textButtonTheme: buildTextButtonTheme(colors: colors),

      // =====================================================
      // Divider
      // =====================================================
      dividerTheme: DividerThemeData(color: colors.neutral.v20, thickness: 1),

      // =====================================================
      // Card
      // =====================================================
      cardTheme: CardThemeData(
        elevation: 0,
        color: colors.neutral.v10,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.r12),
        ),
      ),

      // =====================================================
      // Text Theme
      // =====================================================
      textTheme: baseTextTheme.apply(
        bodyColor: colors.neutral.v100,
        displayColor: colors.neutral.v100,
      ),
    );
  }
}
