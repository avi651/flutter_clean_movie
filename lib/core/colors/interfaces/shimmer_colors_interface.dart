import 'dart:ui';

import 'package:movie_clean/core/colors/exceptions/default_color_exception.dart';

abstract class ShimmerColorsInterface {
  Color get base => throw DefaultColorException();
  Color get highlight => throw DefaultColorException();
}
