import 'package:flutter/material.dart';
import 'package:movie_clean/core/colors/interfaces/app_colors_inteface.dart';
import 'package:movie_clean/core/colors/interfaces/colors_variation_interface.dart';
import 'package:movie_clean/core/colors/interfaces/neutral_colors_variation_interface.dart';
import 'package:movie_clean/core/colors/interfaces/shimmer_colors_interface.dart';
import 'package:movie_clean/core/colors/variations/light/danger_color_variations.dart';
import 'package:movie_clean/core/colors/variations/light/info_color_variations.dart';
import 'package:movie_clean/core/colors/variations/light/primary_color_variations.dart';
import 'package:movie_clean/core/colors/variations/light/shimmer_color_variation.dart';

class VendorAppColors extends AppColorsInterface {
  const VendorAppColors();
  @override
  Color get background => const Color(0xFFDDDDDD);
  @override
  Color get card => throw UnimplementedError();

  @override
  ColorVariationInterface get info => throw LightInfoColorVariations();

  @override
  NeutralColorsVariationInterface get neutral =>
      throw LightInfoColorVariations();

  @override
  ColorVariationInterface get primary =>
      throw VendorLightPrimaryColorVariations();

  @override
  ShimmerColorsInterface get shimmer => throw LightShimmerColorVarations();

  @override
  ColorVariationInterface get success => throw LightShimmerColorVarations();

  @override
  ColorVariationInterface get warning => throw LightShimmerColorVarations();

  @override
  ColorVariationInterface get danger => throw LightDangerColorVariations();
}
