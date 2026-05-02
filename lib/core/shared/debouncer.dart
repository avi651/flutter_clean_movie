import 'dart:async';

typedef Debounceable<S, T> = Future<S?> Function(T parameter);

const Duration kDebounceDuration = Duration(milliseconds: 500);

Debounceable<S, T> debounce<S, T>(
  Debounceable<S?, T> function, {
  Duration? debounceDuration,
}) {
  _DebounceTimer? debounceTimer;
  return (T parameter) async {
    if (debounceTimer != null && !debounceTimer!.isCompleted) {
      debounceTimer!.cancel();
    }
    debounceTimer = _DebounceTimer(
      debounceDuration: debounceDuration ?? kDebounceDuration,
    );
    try {
      await debounceTimer!.future;
    } catch (error) {
      if (error is _CancelException) {
        return null;
      }
      rethrow;
    }
    return function(parameter);
  };
}

class _DebounceTimer {
  _DebounceTimer({required Duration debounceDuration}) {
    _timer = Timer(debounceDuration, _onComplete);
  }

  late final Timer _timer;
  final Completer<void> _completer = Completer<void>();

  void _onComplete() {
    _completer.complete();
  }

  Future<void> get future => _completer.future;
  bool get isCompleted => _completer.isCompleted;

  void cancel() {
    _timer.cancel();
    _completer.completeError(const _CancelException());
  }
}

class _CancelException implements Exception {
  const _CancelException();
}
