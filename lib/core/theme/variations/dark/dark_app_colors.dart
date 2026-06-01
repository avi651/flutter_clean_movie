import 'package:flutter/material.dart';
import 'package:movie_clean/core/theme/interfaces/neutral_colors_variation_interface.dart';
import 'package:movie_clean/core/theme/interfaces/shimmer_colors_interface.dart';
import 'package:movie_clean/core/theme/variations/dark/dark_color_variations.dart';
import 'package:movie_clean/core/theme/variations/dark/shimmer_color_variations.dart';
import 'package:movie_clean/core/theme/variations/light/light_app_colors.dart';

class DarkAppColors extends LightAppColors {
  const DarkAppColors();

  @override
  Color get background => const Color(0xFF121212);

  @override
  NeutralColorsVariationInterface get neutral => DarkNeutralColorVariations();

  @override
  Color get card => const Color(0xFF1E1E1E);

  @override
  ShimmerColorsInterface get shimmer => DarkShimmerColorVariations();
}
