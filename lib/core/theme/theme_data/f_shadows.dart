import 'package:flutter/painting.dart';
import 'package:movie_clean/core/theme/app_colors.dart';

class FShadows {
  static final defaultElevationShadow = [
    BoxShadow(
      color: pureColors.neutral.v100.withValues(alpha: 0.2),
      blurRadius: 2,
      offset: const Offset(2, 2),
    ),
    BoxShadow(
      color: pureColors.neutral.v100.withValues(alpha: 0.05),
      blurRadius: 2,
      offset: const Offset(-2, -2),
    ),
  ];

  static final headerElevation = [
    BoxShadow(
      color: pureColors.neutral.v100.withValues(alpha: 0.2),
      blurRadius: 2,
      offset: const Offset(2, 2),
    ),
  ];
}
