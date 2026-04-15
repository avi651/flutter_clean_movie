import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:movie_clean/core/theme/bloc/versionable_bloc/versionable_hybrated_bloc_mixin.dart';

abstract class VersionableHydratedBloc<T, U> extends Bloc<T, U>
    with HydratedMixin<U>, VersionableHybratedBlocMixin<U> {
  VersionableHydratedBloc(super.state) {
    hydrate();
  }
}
