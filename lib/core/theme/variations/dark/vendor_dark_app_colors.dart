import 'package:flutter/material.dart';
import 'package:movie_clean/core/theme/interfaces/app_colors_inteface.dart';
import 'package:movie_clean/core/theme/interfaces/colors_variation_interface.dart';
import 'package:movie_clean/core/theme/interfaces/neutral_colors_variation_interface.dart';
import 'package:movie_clean/core/theme/interfaces/shimmer_colors_interface.dart';
import 'package:movie_clean/core/theme/variations/dark/dark_color_variations.dart';
import 'package:movie_clean/core/theme/variations/light/danger_color_variations.dart';
import 'package:movie_clean/core/theme/variations/light/info_color_variations.dart';

class VendorDarkAppColors extends AppColorsInterface {
  const VendorDarkAppColors();

  @override
  Color get background => const Color(0xFF212121);

  @override
  Color get card => throw UnimplementedError();

  @override
  ColorVariationInterface get danger => LightDangerColorVariations();

  @override
  ColorVariationInterface get info => LightInfoColorVariations();

  @override
  NeutralColorsVariationInterface get neutral =>
      throw DarkNeutralColorVariations();

  @override
  ColorVariationInterface get primary => LightDangerColorVariations();

  @override
  ShimmerColorsInterface get shimmer => throw UnimplementedError();

  @override
  ColorVariationInterface get success => throw UnimplementedError();

  @override
  ColorVariationInterface get warning => throw UnimplementedError();
}
