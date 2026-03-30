import 'package:flutter/material.dart';

extension StringExt on String {
  Color? toColor() {
    final List<int> colorComposition = split(
      ',',
    ).map((s) => int.parse(s.trim())).toList();
    return Color.fromARGB(
      colorComposition[0],
      colorComposition[1],
      colorComposition[2],
      colorComposition[3],
    );
  }

  TimeOfDay? get maybeToD {
    if (isEmpty) {
      return null;
    }

    final regex = RegExp(r'^(\d{1,2}):(\d{2})$');
    final match = regex.firstMatch(this);

    if (match != null) {
      final hour = int.parse(match.group(1)!);
      final minute = int.parse(match.group(2)!);
      return TimeOfDay(hour: hour, minute: minute);
    } else {
      return null;
    }
  }

  DateTime? tryParseHour() {
    try {
      final DateTime now = DateTime.now();
      final List<String> parts = split('');
      final int hour = int.parse(parts[0]);
      final int minute = int.parse(parts[1]);
      return DateTime(now.year, now.month, now.day, hour, minute);
    } catch (e) {
      return null;
    }
  }
}
