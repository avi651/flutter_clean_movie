import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_clean/core/theme/bloc/theme_bloc.dart';
import 'package:movie_clean/core/theme/variations/dark/dark_app_colors.dart';
import 'package:movie_clean/core/theme/variations/light/light_app_colors.dart';
import 'package:movie_clean/core/theme/variations/light/vendor_app_colors.part.dart';

const darkAppColors = DarkAppColors();
const lightAppColors = LightAppColors();
const vendorLightAppColors = VendorAppColors();
const pureColors = lightAppColors;

bool get isDarkTheme {
  final themeState = Modular.tryGet<ThemeBloc>()?.state;
  return themeState?.selectedThemeMode == ThemeMode.dark;
}
