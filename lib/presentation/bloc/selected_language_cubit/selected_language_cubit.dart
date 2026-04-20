import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_clean/core/shared/fetch_state.dart';

class SelectedLanguageCubit extends Cubit<SimpleFetchState<Unit>> {
  SelectedLanguageCubit() : super(SimpleFetchState.initial());

  Future<void> update(String value) async {}
}
