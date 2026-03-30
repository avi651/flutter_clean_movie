import 'package:flutter/material.dart';
import 'package:movie_clean/core/colors/interfaces/shimmer_colors_interface.dart';

class DarkShimmerColorVariations extends ShimmerColorsInterface {
  @override
  Color get base => const Color(0x99141423);

  @override
  Color get highlight => const Color(0x99555564);
}
