// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ThemeState _$ThemeStateFromJson(Map<String, dynamic> json) => _ThemeState(
  selectedThemeMode: $enumDecode(_$ThemeModeEnumMap, json['selectedThemeMode']),
);

Map<String, dynamic> _$ThemeStateToJson(_ThemeState instance) =>
    <String, dynamic>{
      'selectedThemeMode': _$ThemeModeEnumMap[instance.selectedThemeMode]!,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
