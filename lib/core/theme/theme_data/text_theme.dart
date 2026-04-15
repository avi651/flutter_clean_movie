import 'package:flutter/material.dart';
import 'package:movie_clean/core/theme/app_colors.dart';

final pureTextTheme = _LightTextTheme();
final _lightTextTheme = _LightTextTheme();
final _darkTextTheme = _DarkTextTheme();

ITextTheme get textTheme {
  if (isDarkTheme) {
    return _darkTextTheme;
  } else {
    return _lightTextTheme;
  }
}

abstract class ITextTheme {
  TextStyle get h1;
  TextStyle get h2;
  TextStyle get h3;
  TextStyle get h4;
  TextStyle get bodyWhite;
  TextStyle get body;
  TextStyle get bodyItalic;
  TextStyle get bodyBoldItalic;
  TextStyle get bodyBold;
  TextStyle get small;
  TextStyle get smallBold;
  TextStyle get mini;
}

class _LightTextTheme implements ITextTheme {
  static const String _frontFamily = 'Roboto';
  static final TextStyle _baseTextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontFamily: _frontFamily,
    fontFamilyFallback: const [_frontFamily],
    color: lightAppColors.neutral.v100,
  );

  // Headlines
  @override
  TextStyle get h1 => _baseTextStyle.copyWith(
    fontSize: 30,
    height: 1.1,
    fontWeight: FontWeight.w700,
    letterSpacing: -1,
  );

  @override
  TextStyle get h2 => _baseTextStyle.copyWith(
    fontSize: 24,
    height: 1.2,
    fontWeight: FontWeight.w700,
    letterSpacing: -1,
  );

  @override
  TextStyle get h3 => _baseTextStyle.copyWith(
    fontSize: 20,
    height: 1.2,
    fontWeight: FontWeight.w700,
  );

  @override
  TextStyle get h4 => _baseTextStyle.copyWith(
    fontSize: 18,
    height: 1.2,
    fontWeight: FontWeight.w700,
  );

  // BODY
  @override
  TextStyle get bodyWhite => _baseTextStyle.copyWith(
    color: pureColors.neutral.v0,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    height: 1.2,
  );

  @override
  TextStyle get body => _baseTextStyle.copyWith(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    height: 1.2,
  );

  @override
  TextStyle get bodyItalic => _baseTextStyle.copyWith(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    height: 1.2,
    fontStyle: FontStyle.italic,
  );

  @override
  TextStyle get bodyBoldItalic => _baseTextStyle.copyWith(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    height: 1.2,
    fontStyle: FontStyle.italic,
  );

  @override
  TextStyle get bodyBold => _baseTextStyle.copyWith(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    height: 1.2,
  );

  //Small && Mini

  @override
  TextStyle get small => _baseTextStyle.copyWith(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    height: 1.2,
  );

  @override
  TextStyle get smallBold => _baseTextStyle.copyWith(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    height: 1.2,
  );

  @override
  TextStyle get mini => _baseTextStyle.copyWith(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    height: 1.2,
  );
}

class _DarkTextTheme implements ITextTheme {
  static const String _frontFamily = 'Roboto';
  static final TextStyle _baseTextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontFamily: _frontFamily,
    fontFamilyFallback: const [_frontFamily],
    color: darkAppColors.neutral.v100,
  );

  // Headlines
  @override
  TextStyle get h1 => _baseTextStyle.copyWith(
    fontSize: 30,
    height: 1.1,
    fontWeight: FontWeight.w700,
    letterSpacing: -1,
  );

  @override
  TextStyle get h2 => _baseTextStyle.copyWith(
    fontSize: 24,
    height: 1.2,
    fontWeight: FontWeight.w700,
    letterSpacing: -1,
  );

  @override
  TextStyle get h3 => _baseTextStyle.copyWith(
    fontSize: 20,
    height: 1.2,
    fontWeight: FontWeight.w700,
  );

  @override
  TextStyle get h4 => _baseTextStyle.copyWith(
    fontSize: 18,
    height: 1.2,
    fontWeight: FontWeight.w700,
  );

  // BODY
  @override
  TextStyle get bodyWhite => _baseTextStyle.copyWith(
    color: pureColors.neutral.v0,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    height: 1.2,
  );

  @override
  TextStyle get body => _baseTextStyle.copyWith(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    height: 1.2,
  );

  @override
  TextStyle get bodyItalic => _baseTextStyle.copyWith(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    height: 1.2,
    fontStyle: FontStyle.italic,
  );

  @override
  TextStyle get bodyBoldItalic => _baseTextStyle.copyWith(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    height: 1.2,
    fontStyle: FontStyle.italic,
  );

  @override
  TextStyle get bodyBold => _baseTextStyle.copyWith(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    height: 1.2,
  );

  //Small && Mini

  @override
  TextStyle get small => _baseTextStyle.copyWith(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    height: 1.2,
  );

  @override
  TextStyle get smallBold => _baseTextStyle.copyWith(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    height: 1.2,
  );

  @override
  TextStyle get mini => _baseTextStyle.copyWith(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    height: 1.2,
  );
}
