import 'package:bloc/bloc.dart';
import 'package:movie_clean/domain/logger/log_data.dart';

class LoggerCubit extends Cubit<List<LogData>> {
  LoggerCubit() : super([]);

  void addLog(LogData data) {
    if (data.display == true) {
      emit([...state, data]);
    }
  }

  void clear() => emit([]);
}
