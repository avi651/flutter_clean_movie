// =====================================================
// app_colors.dart
// =====================================================

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:movie_clean/core/theme/bloc/theme_bloc.dart';
import 'package:movie_clean/core/theme/interfaces/app_colors_inteface.dart';

import 'package:movie_clean/core/theme/variations/dark/dark_app_colors.dart';
import 'package:movie_clean/core/theme/variations/light/light_app_colors.dart';
import 'package:movie_clean/core/theme/variations/light/vendor_app_colors.part.dart';

/// =====================================================
/// Theme Instances
/// =====================================================

const AppColorsInterface darkAppColors = DarkAppColors();

const AppColorsInterface lightAppColors = LightAppColors();

const VendorAppColors vendorLightAppColors = VendorAppColors();

/// =====================================================
/// App Colors Helper
/// =====================================================

abstract final class AppColors {
  AppColors._();

  /// =====================================================
  /// Current Theme Mode
  /// =====================================================

  static ThemeMode get currentThemeMode {
    try {
      return Modular.get<ThemeBloc>().state.selectedThemeMode;
    } catch (_) {
      return ThemeMode.system;
    }
  }

  /// =====================================================
  /// Is Dark Theme
  /// =====================================================

  static bool get isDarkTheme {
    final themeMode = currentThemeMode;

    // Manual Dark
    if (themeMode == ThemeMode.dark) {
      return true;
    }

    // Manual Light
    if (themeMode == ThemeMode.light) {
      return false;
    }

    // System Theme
    final brightness =
        SchedulerBinding.instance.platformDispatcher.platformBrightness;

    return brightness == Brightness.dark;
  }

  /// =====================================================
  /// Current Active Colors
  /// =====================================================

  static AppColorsInterface get current {
    return isDarkTheme ? darkAppColors : lightAppColors;
  }
}
