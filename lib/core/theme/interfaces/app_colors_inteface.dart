import 'package:flutter/material.dart';
import 'package:movie_clean/core/theme/interfaces/colors_variation_interface.dart';
import 'package:movie_clean/core/theme/interfaces/neutral_colors_variation_interface.dart';
import 'package:movie_clean/core/theme/interfaces/shimmer_colors_interface.dart';

abstract class AppColorsInterface {
  const AppColorsInterface();

  Color get background;

  Color get card;

  ShimmerColorsInterface get shimmer;

  ColorVariationInterface get primary;

  NeutralColorsVariationInterface get neutral;

  ColorVariationInterface get success;

  ColorVariationInterface get info;

  ColorVariationInterface get warning;

  ColorVariationInterface get danger;
}
