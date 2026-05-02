// =====================================================
// color_extension.dart
// =====================================================

import 'package:flutter/material.dart';

import 'package:movie_clean/core/theme/app_colors.dart';

extension ColorExtension on Color {
  /// =====================================================
  /// Blend With Neutral
  /// =====================================================

  Color blendColorWithNeutral(double opacity) {
    return AppColors.isDarkTheme
        ? blendColorWithDark(opacity)
        : blendColorWithWhite(opacity);
  }

  /// =====================================================
  /// Blend With White
  /// =====================================================

  Color blendColorWithWhite(double opacity) {
    final normalizedOpacity = opacity.clamp(0.0, 1.0);

    final int newR = _blendChannel(
      source: red,
      target: 255,
      opacity: normalizedOpacity,
    );

    final int newG = _blendChannel(
      source: green,
      target: 255,
      opacity: normalizedOpacity,
    );

    final int newB = _blendChannel(
      source: blue,
      target: 255,
      opacity: normalizedOpacity,
    );

    return Color.fromRGBO(newR, newG, newB, 1);
  }

  /// =====================================================
  /// Blend With Dark
  /// =====================================================

  Color blendColorWithDark(double opacity) {
    final normalizedOpacity = opacity.clamp(0.0, 1.0);

    const darkBase = 33;

    final int newR = _blendChannel(
      source: red,
      target: darkBase,
      opacity: normalizedOpacity,
    );

    final int newG = _blendChannel(
      source: green,
      target: darkBase,
      opacity: normalizedOpacity,
    );

    final int newB = _blendChannel(
      source: blue,
      target: darkBase,
      opacity: normalizedOpacity,
    );

    return Color.fromRGBO(newR, newG, newB, 1);
  }

  /// =====================================================
  /// Blend Helper
  /// =====================================================

  int _blendChannel({
    required int source,
    required int target,
    required double opacity,
  }) {
    return (opacity * source + (1 - opacity) * target).round().clamp(0, 255);
  }
}
