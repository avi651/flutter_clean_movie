import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:movie_clean/core/theme/bloc/versionable_bloc/versionable_hybrated_bloc_mixin.dart';

abstract class VersionableHybratedCubit<T> extends Cubit<T>
    with HydratedMixin<T>, VersionableHybratedBlocMixin<T> {
  VersionableHybratedCubit(super.state) {
    hydrate();
  }
}
