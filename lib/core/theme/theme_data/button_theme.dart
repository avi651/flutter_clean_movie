import 'package:flutter/material.dart';
import 'package:movie_clean/core/theme/app_colors.dart';
import 'package:movie_clean/core/theme/extensions/material_state_property_extension.dart';
import 'package:movie_clean/core/theme/interfaces/app_colors_inteface.dart';

TextButtonThemeData buildTextButtonTheme({required AppColorsInterface colors}) {
  return TextButtonThemeData(
    style: ButtonStyle(
      elevation: (0.0).msAll(),
      foregroundColor: colors.primary.v100.materialPropertyBuilder(
        disabled: colors.neutral.v40,
      ),
      animationDuration: kThemeAnimationDuration,
      overlayColor: colors.primary.v100.withValues(alpha: .1).msAll(),
      shape: RoundedRectangleBorder().msAll(),
    ),
  );
}

ElevatedButtonThemeData buildElevateButtonTheme({
  required AppColorsInterface colors,
}) {
  return ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: (0.0).msAll(),
      backgroundColor: colors.primary.v100.materialPropertyBuilder(
        disabled: colors.neutral.v30,
      ),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16).msAll(),
      foregroundColor: pureColors.neutral.v0.msAll(),
      animationDuration: kThemeAnimationDuration,
      overlayColor: colors.primary.v100.withValues(alpha: .1).msAll(),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ).msAll(),
    ),
  );
}

OutlinedButtonThemeData buildOutlineButtonTheme({
  required AppColorsInterface colors,
}) {
  return OutlinedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: colors.background.materialPropertyBuilder(
        disabled: colors.neutral.v40,
      ),
      side: BorderSide(color: colors.primary.v100, width: 1).msAll(),
      foregroundColor: pureColors.primary.v100.msAll(),
      animationDuration: Duration.zero,
      overlayColor: colors.primary.v100.withValues(alpha: .1).msAll(),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ).msAll(),
    ),
  );
}
