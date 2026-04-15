import 'package:flutter/material.dart';
import 'package:movie_clean/core/theme/app_colors.dart';
import 'package:movie_clean/core/theme/extensions/material_state_property_extension.dart';
import 'package:movie_clean/core/theme/theme_data/button_theme.dart';

abstract class AppTheme {
  static ThemeData build({required Brightness brightness}) {
    // ignore: no_leading_underscores_for_local_identifiers
    final _colors = switch (brightness) {
      Brightness.dark => darkAppColors,
      _ => lightAppColors,
    };

    return ThemeData(
      scaffoldBackgroundColor: _colors.background,
      colorScheme: ColorScheme.fromSeed(
        seedColor: _colors.primary.v100,
        secondary: _colors.primary.v100,
        tertiary: _colors.primary.v100,
        primaryContainer: _colors.primary.v100,
        onPrimaryContainer: _colors.neutral.v0,
        surface: _colors.neutral.v0,
        onSurface: _colors.neutral.v100,
        surfaceContainerHigh: _colors.neutral.v20,
        error: _colors.danger.v100,
      ),
      tabBarTheme: TabBarThemeData(
        splashFactory: InkRipple.splashFactory,
        overlayColor: _colors.primary.v100.withValues(alpha: .15).msAll(),
        indicatorColor: _colors.primary.v100,
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        circularTrackColor: _colors.background,
        linearTrackColor: _colors.background,
        color: _colors.primary.v100,
      ),
      switchTheme: SwitchThemeData(
        thumbColor: _colors.primary.v100.msAll(),
        trackColor: _colors.neutral.v20.msAll(),
      ),
      radioTheme: RadioThemeData(fillColor: _colors.primary.v100.msAll()),
      searchBarTheme: SearchBarThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ).msAll(),
        constraints: BoxConstraints(maxHeight: 64),
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4).msAll(),
        surfaceTintColor: _colors.neutral.v0.msAll(),
        backgroundColor: _colors.neutral.v0.msAll(),
      ),
      drawerTheme: DrawerThemeData(backgroundColor: _colors.background),
      popupMenuTheme: PopupMenuThemeData(
        surfaceTintColor: _colors.neutral.v0,
        color: _colors.neutral.v0,
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: _colors.primary.v100,
        foregroundColor: lightAppColors.neutral.v0,
        surfaceTintColor: _colors.primary.v100,
        titleTextStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: lightAppColors.neutral.v0,
        ),
      ),
      textTheme:
          TextTheme(
            displayLarge: TextStyle(color: _colors.neutral.v100),
            displayMedium: TextStyle(color: _colors.neutral.v100),
            displaySmall: TextStyle(color: _colors.neutral.v100),
            headlineLarge: TextStyle(color: _colors.neutral.v100),
            headlineMedium: TextStyle(color: _colors.neutral.v100),
            headlineSmall: TextStyle(color: _colors.neutral.v100),
            titleLarge: TextStyle(color: _colors.neutral.v100),
            titleMedium: TextStyle(color: _colors.neutral.v100),
            titleSmall: TextStyle(color: _colors.neutral.v100),
            bodyLarge: TextStyle(color: _colors.neutral.v100),
            bodyMedium: TextStyle(color: _colors.neutral.v100),
            bodySmall: TextStyle(color: _colors.neutral.v100),
            labelLarge: TextStyle(color: _colors.neutral.v100),
            labelMedium: TextStyle(color: _colors.neutral.v100),
            labelSmall: TextStyle(color: _colors.neutral.v100),
          ).apply(
            bodyColor: _colors.neutral.v100,
            displayColor: _colors.neutral.v100,
          ),
      dialogTheme: DialogThemeData(
        backgroundColor: _colors.neutral.v10,
        surfaceTintColor: Colors.transparent,
      ),

      elevatedButtonTheme: buildElevateButtonTheme(colors: _colors),
      outlinedButtonTheme: buildOutlineButtonTheme(colors: _colors),
      textButtonTheme: buildTextButtonTheme(colors: _colors),

      inputDecorationTheme: InputDecorationTheme(
        fillColor: _colors.neutral.v10,
        suffixIconColor: _colors.neutral.v100,
        hintStyle: TextStyle(color: _colors.neutral.v80),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(color: _colors.neutral.v60),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(color: _colors.neutral.v100),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(color: _colors.danger.v100),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(color: _colors.neutral.v60),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      ),
    );
  }
}
