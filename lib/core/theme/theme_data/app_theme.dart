import 'package:flutter/material.dart';

import 'package:movie_clean/core/resources/app_sizes.dart';
import 'package:movie_clean/core/theme/app_colors.dart';
import 'package:movie_clean/core/theme/extensions/material_state_property_extension.dart';
import 'package:movie_clean/core/theme/theme_data/button_theme.dart';

abstract class AppTheme {
  static ThemeData build({required Brightness brightness}) {
    final colors = switch (brightness) {
      Brightness.dark => darkAppColors,
      _ => lightAppColors,
    };

    return ThemeData(
      useMaterial3: true,

      // =====================================================
      // Scaffold
      // =====================================================
      scaffoldBackgroundColor: colors.background,

      // =====================================================
      // Color Scheme
      // =====================================================
      colorScheme: ColorScheme.fromSeed(
        seedColor: colors.primary.v100,

        primary: colors.primary.v100,

        secondary: colors.primary.v100,

        tertiary: colors.primary.v100,

        primaryContainer: colors.primary.v100,

        onPrimaryContainer: colors.neutral.v0,

        surface: colors.neutral.v0,

        onSurface: colors.neutral.v100,

        surfaceContainerHigh: colors.neutral.v20,

        error: colors.danger.v100,
      ),

      // =====================================================
      // AppBar Theme
      // =====================================================
      appBarTheme: AppBarTheme(
        elevation: 0,

        centerTitle: true,

        backgroundColor: colors.primary.v100,

        foregroundColor: lightAppColors.neutral.v0,

        surfaceTintColor: colors.primary.v100,

        titleTextStyle: TextStyle(
          fontSize: AppSizes.sp18,

          fontWeight: FontWeight.bold,

          color: lightAppColors.neutral.v0,
        ),

        iconTheme: IconThemeData(
          color: lightAppColors.neutral.v0,

          size: AppSizes.sp24,
        ),
      ),

      // =====================================================
      // Progress Indicator Theme
      // =====================================================
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: colors.primary.v100,

        circularTrackColor: colors.background,

        linearTrackColor: colors.background,
      ),

      // =====================================================
      // TabBar Theme
      // =====================================================
      tabBarTheme: TabBarThemeData(
        splashFactory: InkRipple.splashFactory,

        indicatorColor: colors.primary.v100,

        dividerColor: Colors.transparent,

        overlayColor: colors.primary.v100.withValues(alpha: .15).msAll(),

        labelColor: colors.primary.v100,

        unselectedLabelColor: colors.neutral.v60,

        labelStyle: TextStyle(
          fontSize: AppSizes.sp14,

          fontWeight: FontWeight.w600,
        ),

        unselectedLabelStyle: TextStyle(
          fontSize: AppSizes.sp14,

          fontWeight: FontWeight.w500,
        ),
      ),

      // =====================================================
      // SearchBar Theme
      // =====================================================
      searchBarTheme: SearchBarThemeData(
        constraints: BoxConstraints(maxHeight: AppSizes.p64),

        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.p12,
          vertical: AppSizes.p8,
        ).msAll(),

        backgroundColor: colors.neutral.v0.msAll(),

        surfaceTintColor: colors.neutral.v0.msAll(),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.r8),
        ).msAll(),

        elevation: 0.0.msAll(),
      ),

      // =====================================================
      // Drawer Theme
      // =====================================================
      drawerTheme: DrawerThemeData(
        backgroundColor: colors.background,

        surfaceTintColor: Colors.transparent,
      ),

      // =====================================================
      // Popup Menu Theme
      // =====================================================
      popupMenuTheme: PopupMenuThemeData(
        color: colors.neutral.v0,

        surfaceTintColor: colors.neutral.v0,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.r12),
        ),
      ),

      // =====================================================
      // Bottom Navigation Theme
      // =====================================================
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colors.background,

        selectedItemColor: colors.primary.v100,

        unselectedItemColor: colors.neutral.v60,

        selectedLabelStyle: TextStyle(
          fontSize: AppSizes.sp12,

          fontWeight: FontWeight.w600,
        ),

        unselectedLabelStyle: TextStyle(
          fontSize: AppSizes.sp12,

          fontWeight: FontWeight.w500,
        ),

        type: BottomNavigationBarType.fixed,

        elevation: AppSizes.r8,
      ),

      // =====================================================
      // Input Decoration Theme
      // =====================================================
      inputDecorationTheme: InputDecorationTheme(
        filled: true,

        fillColor: colors.neutral.v10,

        suffixIconColor: colors.neutral.v100,

        hintStyle: TextStyle(
          color: colors.neutral.v80,

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

          borderSide: BorderSide(color: colors.neutral.v60, width: AppSizes.r1),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.r8),

          borderSide: BorderSide(
            color: colors.primary.v100,

            width: AppSizes.r12,
          ),
        ),

        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.r8),

          borderSide: BorderSide(color: colors.danger.v100, width: AppSizes.r1),
        ),

        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.r8),

          borderSide: BorderSide(color: colors.neutral.v40, width: AppSizes.r1),
        ),
      ),

      // =====================================================
      // Dialog Theme
      // =====================================================
      dialogTheme: DialogThemeData(
        backgroundColor: colors.neutral.v10,

        surfaceTintColor: Colors.transparent,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.r16),
        ),
      ),

      // =====================================================
      // Buttons
      // =====================================================
      elevatedButtonTheme: buildElevateButtonTheme(colors: colors),

      outlinedButtonTheme: buildOutlineButtonTheme(colors: colors),

      textButtonTheme: buildTextButtonTheme(colors: colors),

      // =====================================================
      // Divider Theme
      // =====================================================
      dividerTheme: DividerThemeData(
        color: colors.neutral.v20,

        thickness: AppSizes.r1,

        space: AppSizes.h40,
      ),

      // =====================================================
      // Card Theme
      // =====================================================
      cardTheme: CardThemeData(
        elevation: 0,

        color: colors.neutral.v0,

        surfaceTintColor: Colors.transparent,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.r12),
        ),
      ),

      // =====================================================
      // Text Theme
      // =====================================================
      textTheme: Typography.material2021().black
          .apply(
            bodyColor: colors.neutral.v100,

            displayColor: colors.neutral.v100,
          )
          .copyWith(
            bodyLarge: TextStyle(
              fontSize: AppSizes.sp16,

              fontWeight: FontWeight.w500,
            ),

            bodyMedium: TextStyle(
              fontSize: AppSizes.sp14,

              fontWeight: FontWeight.w400,
            ),

            titleLarge: TextStyle(
              fontSize: AppSizes.sp20,

              fontWeight: FontWeight.bold,
            ),

            titleMedium: TextStyle(
              fontSize: AppSizes.sp18,

              fontWeight: FontWeight.w600,
            ),

            labelLarge: TextStyle(
              fontSize: AppSizes.sp14,

              fontWeight: FontWeight.w600,
            ),
          ),
    );
  }
}
