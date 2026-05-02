// =====================================================
// text_theme.dart
// =====================================================

import 'package:flutter/material.dart';

import 'package:movie_clean/core/resources/app_sizes.dart';
import 'package:movie_clean/core/theme/app_colors.dart';
import 'package:movie_clean/core/theme/interfaces/app_colors_inteface.dart';

/// =====================================================
/// Global Instance
/// =====================================================

final ITextTheme textTheme = AppTextTheme();

/// =====================================================
/// Interface
/// =====================================================

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

/// =====================================================
/// App Text Theme
/// =====================================================

class AppTextTheme implements ITextTheme {
  AppTextTheme();

  static const String _fontFamily = 'Roboto';

  /// Current Theme Colors
  AppColorsInterface get colors => AppColors.current;

  /// =====================================================
  /// Base Text Style
  /// =====================================================

  TextStyle get _baseTextStyle {
    return TextStyle(
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w400,
      color: colors.neutral.v100,
      height: 1.2,
    );
  }

  /// =====================================================
  /// Headlines
  /// =====================================================

  @override
  TextStyle get h1 {
    return _baseTextStyle.copyWith(
      fontSize: AppSizes.sp32,
      height: 1.1,
      fontWeight: FontWeight.w700,
      letterSpacing: -1,
    );
  }

  @override
  TextStyle get h2 {
    return _baseTextStyle.copyWith(
      fontSize: AppSizes.sp24,
      height: 1.2,
      fontWeight: FontWeight.w700,
      letterSpacing: -1,
    );
  }

  @override
  TextStyle get h3 {
    return _baseTextStyle.copyWith(
      fontSize: AppSizes.sp20,
      height: 1.2,
      fontWeight: FontWeight.w700,
    );
  }

  @override
  TextStyle get h4 {
    return _baseTextStyle.copyWith(
      fontSize: AppSizes.sp18,
      height: 1.2,
      fontWeight: FontWeight.w700,
    );
  }

  /// =====================================================
  /// Body
  /// =====================================================

  @override
  TextStyle get body {
    return _baseTextStyle.copyWith(fontSize: AppSizes.sp16);
  }

  @override
  TextStyle get bodyWhite {
    return body.copyWith(color: colors.neutral.v0);
  }

  @override
  TextStyle get bodyItalic {
    return body.copyWith(fontStyle: FontStyle.italic);
  }

  @override
  TextStyle get bodyBoldItalic {
    return body.copyWith(
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.italic,
    );
  }

  @override
  TextStyle get bodyBold {
    return body.copyWith(fontWeight: FontWeight.w700);
  }

  /// =====================================================
  /// Small
  /// =====================================================

  @override
  TextStyle get small {
    return _baseTextStyle.copyWith(fontSize: AppSizes.sp14);
  }

  @override
  TextStyle get smallBold {
    return small.copyWith(fontWeight: FontWeight.w600);
  }

  /// =====================================================
  /// Mini
  /// =====================================================

  @override
  TextStyle get mini {
    return _baseTextStyle.copyWith(fontSize: AppSizes.sp12);
  }
}
