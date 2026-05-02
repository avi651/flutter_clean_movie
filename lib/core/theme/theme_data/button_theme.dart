// =====================================================
// button_theme.dart
// =====================================================

import 'package:flutter/material.dart';

import 'package:movie_clean/core/resources/app_sizes.dart';
import 'package:movie_clean/core/theme/interfaces/app_colors_inteface.dart';

/// =====================================================
/// Text Button Theme
/// =====================================================

TextButtonThemeData buildTextButtonTheme({required AppColorsInterface colors}) {
  return TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
        if (states.contains(WidgetState.disabled)) {
          return colors.neutral.v40;
        }

        return colors.primary.v100;
      }),

      overlayColor: WidgetStatePropertyAll<Color?>(
        colors.primary.v100.withOpacity(.1),
      ),

      textStyle: WidgetStatePropertyAll<TextStyle?>(
        const TextStyle(fontWeight: FontWeight.w600),
      ),
    ),
  );
}

/// =====================================================
/// Elevated Button Theme
/// =====================================================

ElevatedButtonThemeData buildElevateButtonTheme({
  required AppColorsInterface colors,
}) {
  return ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
        if (states.contains(WidgetState.disabled)) {
          return colors.neutral.v30;
        }

        return colors.primary.v100;
      }),

      foregroundColor: WidgetStatePropertyAll<Color?>(colors.neutral.v0),

      minimumSize: WidgetStatePropertyAll<Size>(
        Size(double.infinity, AppSizes.h48),
      ),

      elevation: const WidgetStatePropertyAll<double>(0),

      shape: WidgetStatePropertyAll<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.r12),
        ),
      ),
    ),
  );
}

/// =====================================================
/// Outline Button Theme
/// =====================================================

OutlinedButtonThemeData buildOutlineButtonTheme({
  required AppColorsInterface colors,
}) {
  return OutlinedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
        if (states.contains(WidgetState.disabled)) {
          return colors.neutral.v20;
        }

        return colors.background;
      }),

      foregroundColor: WidgetStatePropertyAll<Color?>(colors.primary.v100),

      side: WidgetStateProperty.resolveWith<BorderSide?>((states) {
        if (states.contains(WidgetState.disabled)) {
          return BorderSide(color: colors.neutral.v40, width: 1);
        }

        return BorderSide(color: colors.primary.v100, width: 1);
      }),

      minimumSize: WidgetStatePropertyAll<Size>(
        Size(double.infinity, AppSizes.h48),
      ),

      shape: WidgetStatePropertyAll<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.r12),
        ),
      ),
    ),
  );
}
