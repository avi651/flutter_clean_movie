import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppScreenUtil {
  AppScreenUtil._();

  // =========================================
  // Figma Design Size
  // =========================================

  static const Size designSize = Size(375, 812);

  // =========================================
  // Width
  // =========================================

  static double w(num width) {
    return width.w;
  }

  // =========================================
  // Height
  // =========================================

  static double h(num height) {
    return height.h;
  }

  // =========================================
  // Radius
  // =========================================

  static double r(num radius) {
    return radius.r;
  }

  // =========================================
  // Font Size
  // =========================================

  static double sp(num fontSize) {
    return fontSize.sp;
  }

  // =========================================
  // Icon Size
  // =========================================

  static double icon(num size) {
    return size.sp;
  }

  // =========================================
  // Vertical Space
  // =========================================

  static SizedBox verticalSpace(num height) {
    return SizedBox(height: height.h);
  }

  // =========================================
  // Horizontal Space
  // =========================================

  static SizedBox horizontalSpace(num width) {
    return SizedBox(width: width.w);
  }

  // =========================================
  // Responsive Height
  // =========================================

  static double responsiveHeight(
    BuildContext context, {
    required num portrait,
    required num landscape,
  }) {
    final isLandscape =
        MediaQuery.orientationOf(context) == Orientation.landscape;

    return isLandscape ? landscape.h : portrait.h;
  }

  // =========================================
  // Responsive Width
  // =========================================

  static double responsiveWidth(
    BuildContext context, {
    required num portrait,
    required num landscape,
  }) {
    final isLandscape =
        MediaQuery.orientationOf(context) == Orientation.landscape;

    return isLandscape ? landscape.w : portrait.w;
  }

  // =========================================
  // Screen Width
  // =========================================

  static double screenWidth(BuildContext context) {
    return MediaQuery.sizeOf(context).width;
  }

  // =========================================
  // Screen Height
  // =========================================

  static double screenHeight(BuildContext context) {
    return MediaQuery.sizeOf(context).height;
  }

  // =========================================
  // Orientation
  // =========================================

  static bool isLandscape(BuildContext context) {
    return MediaQuery.orientationOf(context) == Orientation.landscape;
  }

  static bool isPortrait(BuildContext context) {
    return MediaQuery.orientationOf(context) == Orientation.portrait;
  }

  // =========================================
  // Device Type
  // =========================================

  static bool isTablet(BuildContext context) {
    return MediaQuery.sizeOf(context).shortestSide >= 600;
  }

  static bool isMobile(BuildContext context) {
    return MediaQuery.sizeOf(context).shortestSide < 600;
  }

  // =========================================
  // Safe Padding
  // =========================================

  static EdgeInsets paddingAll(num value) {
    return EdgeInsets.all(value.w);
  }

  static EdgeInsets paddingSymmetric({num horizontal = 0, num vertical = 0}) {
    return EdgeInsets.symmetric(horizontal: horizontal.w, vertical: vertical.h);
  }

  static EdgeInsets paddingOnly({
    num left = 0,
    num top = 0,
    num right = 0,
    num bottom = 0,
  }) {
    return EdgeInsets.only(
      left: left.w,
      top: top.h,
      right: right.w,
      bottom: bottom.h,
    );
  }

  // =========================================
  // Border Radius
  // =========================================

  static BorderRadius radiusAll(num radius) {
    return BorderRadius.circular(radius.r);
  }
}
