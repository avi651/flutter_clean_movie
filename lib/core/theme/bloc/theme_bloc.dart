import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:movie_clean/core/theme/bloc/theme_events.dart';
import 'package:movie_clean/core/theme/bloc/theme_state.dart';
import 'package:movie_clean/core/theme/bloc/versionable_bloc/versionable_hydrated_bloc.dart';

class ThemeBloc extends VersionableHydratedBloc<ThemeEvents, ThemeState> {
  ThemeBloc() : super(const ThemeState(selectedThemeMode: ThemeMode.light)) {
    on<SetThemeModeEvent>(_setThemeMode);
  }

  //Events

  FutureOr<void> _setThemeMode(
    SetThemeModeEvent event,
    Emitter<ThemeState> emit,
  ) {
    emit(state.copyWith(selectedThemeMode: event.mode));
  }

  //Hydrated Properties

  static const hydratedId = 'theme_bloc';

  @override
  int get version => 1;

  @override
  String get blocId => hydratedId;

  @override
  Map<String, dynamic> toJson(ThemeState state) => state.toJson();

  @override
  ThemeState? fromJson(Map<String, dynamic> json) => ThemeState.fromJson(json);
}
