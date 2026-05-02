// =====================================================
// log_level.dart
// =====================================================

import 'package:ansicolor/ansicolor.dart';
import 'package:flutter/material.dart';

import 'package:movie_clean/core/theme/app_colors.dart';

/// =====================================================
/// Log Levels
/// =====================================================

enum LogLevel {
  error,
  critical,
  info,
  warning,
  debug,
  verbose;

  /// =====================================================
  /// UI Color
  /// =====================================================

  Color get color {
    switch (this) {
      case LogLevel.critical:
      case LogLevel.error:
        return AppColors.current.danger.v100;

      case LogLevel.warning:
        return AppColors.current.warning.v100;

      case LogLevel.info:
        return AppColors.current.info.v100;

      case LogLevel.debug:
      case LogLevel.verbose:
        return AppColors.current.neutral.v60;
    }
  }

  /// =====================================================
  /// Console Pen
  /// =====================================================

  AnsiPen get pen {
    return _defaultPens[this] ?? (AnsiPen()..white());
  }
}

/// =====================================================
/// Default Console Pens
/// =====================================================

final Map<LogLevel, AnsiPen> _defaultPens = {
  LogLevel.critical: AnsiPen()..red(),

  LogLevel.error: AnsiPen()..red(),

  LogLevel.warning: AnsiPen()..yellow(),

  LogLevel.info: AnsiPen()..blue(),

  LogLevel.debug: AnsiPen()..gray(),

  LogLevel.verbose: AnsiPen()..gray(),
};

/// =====================================================
/// Priority Order
/// =====================================================

const List<LogLevel> logLevelPriorityList = [
  LogLevel.critical,
  LogLevel.error,
  LogLevel.warning,
  LogLevel.info,
  LogLevel.debug,
  LogLevel.verbose,
];
