import 'package:flutter_modular/flutter_modular.dart';
import 'package:bloc/bloc.dart';

extension InjectorExt on Injector {
  void addBlocSingleton<T extends BlocBase>(
    Function constructor, {
    BindConfig<T>? config,
    String? key,
  }) => addSingleton<T>(
    constructor,
    config: BindConfig(
      notifier: config?.notifier,
      onDispose: config?.notifier ?? (bloc) => bloc.close(),
    ),
    key: key,
  );
}
