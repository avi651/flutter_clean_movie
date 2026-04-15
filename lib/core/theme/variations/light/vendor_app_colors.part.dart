import 'package:flutter/material.dart';
import 'package:movie_clean/core/theme/interfaces/app_colors_inteface.dart';
import 'package:movie_clean/core/theme/interfaces/colors_variation_interface.dart';
import 'package:movie_clean/core/theme/interfaces/neutral_colors_variation_interface.dart';
import 'package:movie_clean/core/theme/interfaces/shimmer_colors_interface.dart';
import 'package:movie_clean/core/theme/variations/light/danger_color_variations.dart';
import 'package:movie_clean/core/theme/variations/light/info_color_variations.dart';
import 'package:movie_clean/core/theme/variations/light/neutral_color_variations.dart';
import 'package:movie_clean/core/theme/variations/light/primary_color_variations.dart';
import 'package:movie_clean/core/theme/variations/light/shimmer_color_variation.dart';
import 'package:movie_clean/core/theme/variations/light/warning_color_variations.dart';

class VendorAppColors extends AppColorsInterface {
  const VendorAppColors();
  @override
  Color get background => const Color(0xFFDDDDDD);
  @override
  Color get card => throw UnimplementedError();

  @override
  ColorVariationInterface get info => LightInfoColorVariations();

  @override
  NeutralColorsVariationInterface get neutral => LightNeutralColorVariations();

  @override
  ColorVariationInterface get primary => VendorLightPrimaryColorVariations();

  @override
  ShimmerColorsInterface get shimmer => LightShimmerColorVarations();

  @override
  ColorVariationInterface get success => LightWarningColorVariations();

  @override
  ColorVariationInterface get warning => LightWarningColorVariations();

  @override
  ColorVariationInterface get danger => LightDangerColorVariations();
}
