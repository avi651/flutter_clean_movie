import 'package:hydrated_bloc/hydrated_bloc.dart';

mixin VersionableHybratedBlocMixin<T> on HydratedMixin<T> {
  static const _storageKey = 'all_bloc_version';

  int get version => throw 'Please specify a version numnber';

  String get blocId => throw 'Please specify a bloc id';

  @override
  void hydrate({
    Storage? storage,
    OnHydrationError onError = defaultOnHydrationError,
  }) {
    super.hydrate(storage: storage);

    _saveVersion();
  }

  @override
  void onChange(Change<T> change) {
    super.onChange(change);

    _saveVersion();
  }

  void _saveVersion() {
    final storage = HydratedBloc.storage;

    try {
      final dynamic raw = storage.read(_storageKey);

      // ✅ Always use Map (NOT List)
      final Map<String, dynamic> allVersion = raw is Map<String, dynamic>
          ? Map<String, dynamic>.from(raw)
          : {};

      // ✅ Safe write
      allVersion[storageToken] = version;

      storage.write(_storageKey, allVersion);
    } catch (e) {
      // ❌ Corrupted storage → reset
      storage.delete(_storageKey);
    }
  }

  @override
  String get storagePrefix => blocId;
}
