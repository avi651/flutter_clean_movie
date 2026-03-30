import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

extension IntExtension on int {
  String secondsToMinutesFormatted(BuildContext? context) {
    final composition = <String>[];
    final minutes = this ~/ 60;
    final remaningSeconds = this - minutes * 60;

    composition.add(minutes.toString().padLeft(2, "0"));
    composition.add(":".tr(context: context));
    composition.add(remaningSeconds.toString().padLeft(2, "0"));
    return composition.join("");
  }
}
