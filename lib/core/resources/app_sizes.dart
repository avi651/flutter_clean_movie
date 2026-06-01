import 'package:flutter/material.dart';

final class AppSizes {
  AppSizes._();

  // =========================
  // Screen Helpers
  // =========================

  static Size screenSize(BuildContext context) => MediaQuery.sizeOf(context);

  static double screenWidth(BuildContext context) =>
      MediaQuery.sizeOf(context).width;

  static double screenHeight(BuildContext context) =>
      MediaQuery.sizeOf(context).height;

  static double widthPercent(BuildContext context, double percent) =>
      screenWidth(context) * (percent / 100);

  static double heightPercent(BuildContext context, double percent) =>
      screenHeight(context) * (percent / 100);

  static bool isMobile(BuildContext context) => screenWidth(context) < 600;

  static bool isTablet(BuildContext context) =>
      screenWidth(context) >= 600 && screenWidth(context) < 1024;

  static bool isDesktop(BuildContext context) => screenWidth(context) >= 1024;

  static bool isPortrait(BuildContext context) =>
      MediaQuery.orientationOf(context) == Orientation.portrait;

  static bool isLandscape(BuildContext context) =>
      MediaQuery.orientationOf(context) == Orientation.landscape;

  static EdgeInsets safePadding(BuildContext context) =>
      MediaQuery.paddingOf(context);

  static EdgeInsets viewInsets(BuildContext context) =>
      MediaQuery.viewInsetsOf(context);

  static bool isKeyboardVisible(BuildContext context) =>
      MediaQuery.viewInsetsOf(context).bottom > 0;

  // =========================
  // Padding & Margin
  // =========================

  static const double p2 = 2;
  static const double p4 = 4;
  static const double p6 = 6;
  static const double p8 = 8;
  static const double p10 = 10;
  static const double p12 = 12;
  static const double p14 = 14;
  static const double p16 = 16;
  static const double p18 = 18;
  static const double p20 = 20;
  static const double p24 = 24;
  static const double p28 = 28;
  static const double p32 = 32;
  static const double p64 = 64;

  // =========================
  // Radius
  // =========================

  static const double r1 = 1;
  static const double r4 = 4;
  static const double r6 = 6;
  static const double r8 = 8;
  static const double r10 = 10;
  static const double r12 = 12;
  static const double r16 = 16;
  static const double r20 = 20;
  static const double r24 = 24;
  static const double r32 = 32;
  static const double r50 = 50;

  // =========================
  // Border Radius
  // =========================

  static const BorderRadius br4 = BorderRadius.all(Radius.circular(r4));

  static const BorderRadius br6 = BorderRadius.all(Radius.circular(r6));

  static const BorderRadius br8 = BorderRadius.all(Radius.circular(r8));

  static const BorderRadius br10 = BorderRadius.all(Radius.circular(r10));

  static const BorderRadius br12 = BorderRadius.all(Radius.circular(r12));

  static const BorderRadius br16 = BorderRadius.all(Radius.circular(r16));

  static const BorderRadius br20 = BorderRadius.all(Radius.circular(r20));

  static const BorderRadius br24 = BorderRadius.all(Radius.circular(r24));

  static const BorderRadius br32 = BorderRadius.all(Radius.circular(r32));

  static const BorderRadius br50 = BorderRadius.all(Radius.circular(r50));

  // =========================
  // Icon Sizes
  // =========================

  static const double icon16 = 16;
  static const double icon20 = 20;
  static const double icon24 = 24;
  static const double icon28 = 28;
  static const double icon32 = 32;
  static const double icon40 = 40;
  static const double icon48 = 48;

  // =========================
  // Font Sizes
  // =========================

  static const double sp10 = 10;
  static const double sp12 = 12;
  static const double sp14 = 14;
  static const double sp16 = 16;
  static const double sp18 = 18;
  static const double sp20 = 20;
  static const double sp24 = 24;
  static const double sp28 = 28;
  static const double sp32 = 32;

  // =========================
  // Heights
  // =========================

  static const double h40 = 40;
  static const double h48 = 48;
  static const double h56 = 56;
  static const double h80 = 80;
  static const double h100 = 100;
  static const double h120 = 120;
  static const double h160 = 160;
  static const double h200 = 200;
  static const double h240 = 240;
  static const double h300 = 300;
  static const double h400 = 400;

  // =========================
  // Widths
  // =========================

  static const double w40 = 40;
  static const double w80 = 80;
  static const double w100 = 100;
  static const double w120 = 120;
  static const double w160 = 160;
  static const double w200 = 200;
  static const double w240 = 240;
  static const double w300 = 300;

  // =========================
  // Infinity
  // =========================

  static const double infinity = double.infinity;

  // =========================
  // Elevation
  // =========================

  static const double elevation2 = 2;
  static const double elevation4 = 4;
  static const double elevation6 = 6;

  // =========================
  // Border Width
  // =========================

  static const double border1 = 1;
  static const double border2 = 2;

  // =========================
  // Opacity
  // =========================

  static const double opacity10 = 0.1;
  static const double opacity20 = 0.2;
  static const double opacity40 = 0.4;
  static const double opacity60 = 0.6;
  static const double opacity80 = 0.8;
}
