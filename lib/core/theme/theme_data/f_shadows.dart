// =====================================================
// f_shadows.dart
// =====================================================

import 'package:flutter/material.dart';

import 'package:movie_clean/core/theme/app_colors.dart';

abstract final class FShadows {
  FShadows._();

  /// =====================================================
  /// Default Elevation Shadow
  /// =====================================================

  static List<BoxShadow> get defaultElevationShadow {
    return [
      BoxShadow(
        color: AppColors.current.neutral.v100.withOpacity(0.20),

        blurRadius: 2,

        offset: const Offset(2, 2),
      ),

      BoxShadow(
        color: AppColors.current.neutral.v100.withOpacity(0.05),

        blurRadius: 2,

        offset: const Offset(-2, -2),
      ),
    ];
  }

  /// =====================================================
  /// Header Elevation Shadow
  /// =====================================================

  static List<BoxShadow> get headerElevation {
    return [
      BoxShadow(
        color: AppColors.current.neutral.v100.withOpacity(0.20),

        blurRadius: 2,

        offset: const Offset(2, 2),
      ),
    ];
  }
}
