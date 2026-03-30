abstract class ConsoleUtils {
  ConsoleUtils._();

  static String getUnderline(
    int length, {
    String lineSymbol = "--",
    bool withCorner = false,
  }) {
    final line = lineSymbol * length;
    if (withCorner) {
      return line;
    }
    return line;
  }

  static String getTopline(
    int length, {
    String lineSymbol = '--',
    bool withCorner = false,
  }) {
    final line = lineSymbol * length;
    if (withCorner) {
      return line;
    }
    return line;
  }
}
