import 'package:flutter/material.dart';
import 'package:movie_clean/core/theme/app_colors.dart';

extension ColorExtension on Color {
  Color blendColorWithNeutral(double opacity) {
    if (isDarkTheme) {
      return blendColorWithDark(opacity);
    }
    return blendColorWithWhite(opacity);
  }

  Color blendColorWithWhite(double opacity) {
    opacity = opacity.clamp(0.0, 1.0);

    final int r = (this.r * 255.0).round().clamp(0, 255);
    final int g = (this.g * 255.0).round().clamp(0, 255);
    final int b = (this.b * 255.0).round().clamp(0, 255);

    final int newR = (opacity * r + (1 - opacity) * 255).round().clamp(0, 255);
    final int newG = (opacity * g + (1 - opacity) * 255).round().clamp(0, 255);
    final int newB = (opacity * b + (1 - opacity) * 255).round().clamp(0, 255);

    return Color.fromRGBO(newR, newG, newB, 1.0);
  }

  Color blendColorWithDark(double opacity) {
    opacity = opacity.clamp(0.0, 1.0);

    final int r = (this.r * 255.0).round().clamp(0, 255);
    final int g = (this.g * 255.0).round().clamp(0, 255);
    final int b = (this.b * 255.0).round().clamp(0, 255);

    final int newR = (33 + ((r - 33) * opacity).round()).clamp(0, 255);
    final int newG = (33 + ((g - 33) * opacity).round()).clamp(0, 255);
    final int newB = (33 + ((b - 33) * opacity).round()).clamp(0, 255);

    return Color.fromRGBO(newR, newG, newB, 1.0);
  }
}
