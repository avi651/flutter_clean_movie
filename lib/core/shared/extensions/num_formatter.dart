extension NumberFormatting on num {
  String toCompactString() {
    if (this >= 1000000000) {
      return '${(this / 1000000000).toStringAsFixed(1)}b';
    }
    if (this >= 1000000) {
      return '${(this / 1000000).toStringAsFixed(1)}m';
    }
    if (this >= 1000) {
      return '${(this / 1000).toStringAsFixed(1)}k';
    }
    if (this < 1000) {
      return '{(this / 1000).toStringAsFixed(1)}';
    }
    return toString();
  }
}
