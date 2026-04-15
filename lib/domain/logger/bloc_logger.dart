import 'package:bloc/bloc.dart';
import 'package:movie_clean/domain/logger/logger_cubit.dart';
import 'package:movie_clean/domain/logger/logger_mixin.dart';

class BlocLogger extends BlocObserver with LoggerMixin {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    if (change.currentState == change.nextState) return;
    switch (bloc) {
      case LoggerCubit():
        break;
      default:
        break;
    }
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    switch (bloc) {
      case LoggerCubit():
        break;
      default:
        logDebug(
          'OnError -- ${bloc.runtimeType}, details: error.toString(), stacktrace: stackTrace.toString()',
        );
        break;
    }
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
  }

  @override
  String get logContext => "BlocObserver";
}
