import 'package:ansicolor/ansicolor.dart';
import 'package:flutter/material.dart';
import 'package:movie_clean/core/theme/app_colors.dart';

enum LogLevel {
  error,
  critical,
  info,
  warning,
  debug,
  verbose;

  const LogLevel();

  Color get color => switch (this) {
    LogLevel.critical || LogLevel.error => pureColors.danger.v100,
    LogLevel.warning => pureColors.warning.v100,
    _ => pureColors.info.v100,
  };

  AnsiPen get pen => _defaultColors[this] ?? (AnsiPen()..gray());
}

final _defaultColors = {
  LogLevel.critical: AnsiPen()..red(),
  LogLevel.warning: AnsiPen()..yellow(),
  LogLevel.verbose: AnsiPen()..gray(),
  LogLevel.info: AnsiPen()..blue(),
  LogLevel.debug: AnsiPen()..gray(),
  LogLevel.error: AnsiPen()..red(),
};

final logLevelPriorityList = [
  LogLevel.critical,
  LogLevel.warning,
  LogLevel.verbose,
  LogLevel.info,
  LogLevel.debug,
  LogLevel.error,
];
