import 'package:flutter/material.dart';

extension TimeOfDayExt on TimeOfDay {
  /// Compare two TimeOfDay values
  int compareTo(TimeOfDay other) {
    return inMinutes.compareTo(other.inMinutes);
  }

  /// Total minutes since midnight
  int get inMinutes => hour * 60 + minute;

  /// Convert to HH:mm format
  String toJson() =>
      "${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}";

  /// Total seconds since midnight
  int inSeconds() => inMinutes * 60;

  /// Difference in seconds (absolute)
  int diffInSeconds(TimeOfDay other) {
    return (other.inSeconds() - inSeconds()).abs();
  }
}
