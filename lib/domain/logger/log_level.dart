import 'dart:ui';

enum LogLevel {
  error,
  critical,
  info,
  warning,
  debug,
  verbose;

  const LogLevel();
}

// Color get color => switch (this) {
//   LogLevel.critical || LogLevel.error => colors.danger.v100,
// }
