import 'dart:async';

abstract class IBaseLocalRepository {
  FutureOr<void> dispose();
  FutureOr<void> clear();
}
