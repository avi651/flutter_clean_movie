import 'package:flutter/material.dart';

extension ColorExtension on Color {
  Color blendColorWithWhite(double opacity) {
    // Clamp opacity to [0 , 1]

    opacity = opacity.clamp(0.0, 1.0);

    final int r = (this.r * 255.0).round().clamp(0, 255);
    final int g = (this.g * 255.0).round().clamp(0, 255);
    final int b = (this.b * 255.0).round().clamp(0, 255);

    final int newR = (opacity * r + (1 - opacity) * 255).round().clamp(0, 255);
    final int newG = (opacity * g + (1 - opacity) * 255).round().clamp(0, 255);
    final int newB = (opacity * b + (1 - opacity) * 255).round().clamp(0, 255);

    return Color.fromRGBO(newR, newG, newB, 1.0);
  }
}
