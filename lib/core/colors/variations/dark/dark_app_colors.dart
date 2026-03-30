import 'package:flutter/material.dart';
import 'package:movie_clean/core/colors/interfaces/shimmer_colors_interface.dart';
import 'package:movie_clean/core/colors/variations/dark/shimmer_color_variations.dart';
import 'package:movie_clean/core/colors/variations/light/light_app_colors.dart';

class DarkAppColors extends LightAppColors {
  const DarkAppColors();

  @override
  Color get background => const Color(0xFF121212);

  @override
  Color get card => throw UnimplementedError();

  @override
  ShimmerColorsInterface get shimmer => DarkShimmerColorVariations();
}
