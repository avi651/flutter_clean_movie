import 'package:intl/intl.dart';

extension DateStringExtension on String {
  String toYear() {
    try {
      final date = DateTime.parse(this);
      return DateFormat('yyyy').format(date);
    } catch (_) {
      return '';
    }
  }
}
