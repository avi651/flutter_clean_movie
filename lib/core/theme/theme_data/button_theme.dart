import 'package:flutter/material.dart';

import 'package:movie_clean/core/resources/app_sizes.dart';
import 'package:movie_clean/core/theme/app_colors.dart';
import 'package:movie_clean/core/theme/extensions/material_state_property_extension.dart';
import 'package:movie_clean/core/theme/interfaces/app_colors_inteface.dart';

TextButtonThemeData buildTextButtonTheme({required AppColorsInterface colors}) {
  return TextButtonThemeData(
    style: ButtonStyle(
      elevation: 0.0.msAll(),

      animationDuration: kThemeAnimationDuration,

      foregroundColor: colors.primary.v100.materialPropertyBuilder(
        disabled: colors.neutral.v40,
      ),

      overlayColor: colors.primary.v100.withValues(alpha: .1).msAll(),

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.r10),
      ).msAll(),

      padding: EdgeInsets.symmetric(
        vertical: AppSizes.p12,
        horizontal: AppSizes.p16,
      ).msAll(),
    ),
  );
}

ElevatedButtonThemeData buildElevateButtonTheme({
  required AppColorsInterface colors,
}) {
  return ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: 0.0.msAll(),

      animationDuration: kThemeAnimationDuration,

      backgroundColor: colors.primary.v100.materialPropertyBuilder(
        disabled: colors.neutral.v30,
      ),

      foregroundColor: pureColors.neutral.v0.msAll(),

      overlayColor: colors.primary.v100.withValues(alpha: .1).msAll(),

      padding: EdgeInsets.symmetric(
        vertical: AppSizes.p12,
        horizontal: AppSizes.p16,
      ).msAll(),

      minimumSize: Size(double.infinity, AppSizes.h48).msAll(),

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.r10),
      ).msAll(),
    ),
  );
}

OutlinedButtonThemeData buildOutlineButtonTheme({
  required AppColorsInterface colors,
}) {
  return OutlinedButtonThemeData(
    style: ButtonStyle(
      animationDuration: Duration.zero,

      backgroundColor: colors.background.materialPropertyBuilder(
        disabled: colors.neutral.v40,
      ),

      foregroundColor: pureColors.primary.v100.msAll(),

      overlayColor: colors.primary.v100.withValues(alpha: .1).msAll(),

      side: BorderSide(color: colors.primary.v100, width: AppSizes.r1).msAll(),

      padding: EdgeInsets.symmetric(
        vertical: AppSizes.p12,
        horizontal: AppSizes.p16,
      ).msAll(),

      minimumSize: Size(double.infinity, AppSizes.h48).msAll(),

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.r10),
      ).msAll(),
    ),
  );
}
