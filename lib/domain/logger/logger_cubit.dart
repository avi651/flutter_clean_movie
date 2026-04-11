import 'package:bloc/bloc.dart';
import 'package:movie_clean/domain/logger/log_data.dart';
import 'package:movie_clean/domain/logger/log_level.dart';

class LoggerCubit extends Cubit<List<LogData>> {
  LoggerCubit({this.maxLogs = 200}) : super([]);

  /// ✅ Limit logs to avoid memory issues
  final int maxLogs;

  /// ✅ Add log safely
  void addLog(LogData data) {
    if (data.display != true) return;

    final updatedLogs = [...state, data];

    // ✅ Keep only last [maxLogs]
    if (updatedLogs.length > maxLogs) {
      emit(updatedLogs.sublist(updatedLogs.length - maxLogs));
    } else {
      emit(updatedLogs);
    }
  }

  /// ✅ Clear logs
  void clear() => emit([]);

  /// ✅ Filter logs by level (UI use)
  List<LogData> filterByLevel(LogLevel level) {
    return state.where((log) => log.level == level).toList();
  }

  /// ✅ Get latest logs (optional)
  List<LogData> latest({int count = 20}) {
    if (state.length <= count) return state;
    return state.sublist(state.length - count);
  }
}
