enum TimeFormat {
  /// Format representing year, month, day and time
  yearMonthDayAndTime,

  /// Format representing time and seconds
  timeAndSeconds,
}

/// Utility class for time formatting
class LogDateTimeFormatter {
  /// Constructs a [LogDateTimeFormatter] with the given [date]
  const LogDateTimeFormatter(
    this.date, {
    this.timeFormat = TimeFormat.timeAndSeconds,
  });

  final DateTime date;

  final TimeFormat timeFormat;

  String get timeAndSeconds {
    final d = date;

    final hoursPadded = '${d.hour}'.padLeft(2, '0');
    final minutesPadded = '${d.minute}'.padLeft(2, '0');
    final secondsPadded = '${d.second}'.padLeft(2, '0');

    return '$hoursPadded:$minutesPadded:$secondsPadded ${d.millisecond}ms';
  }

  String get yearMonthDayAndTime {
    final d = date;

    final monthPadded = '${d.month}'.padLeft(2, '0');
    final dayPadded = '${d.day}'.padLeft(2, '0');

    return '${d.year}-$monthPadded-$dayPadded $timeAndSeconds';
  }

  String get format {
    switch (timeFormat) {
      case TimeFormat.timeAndSeconds:
        return timeAndSeconds;
      case TimeFormat.yearMonthDayAndTime:
        return yearMonthDayAndTime;
    }
  }
}
