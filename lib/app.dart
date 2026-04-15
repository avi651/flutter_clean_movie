import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_clean/app_bloc_scope.dart';
import 'package:movie_clean/core/module/app_module.dart';
import 'package:movie_clean/core/theme/bloc/theme_bloc.dart';
import 'package:movie_clean/core/theme/bloc/theme_state.dart';
import 'package:movie_clean/core/theme/theme_data/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ModularApp(
      module: AppModule(),
      child: AppBlocScope(
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, themeState) {
            return MaterialApp.router(
              routerConfig: Modular.routerConfig,
              debugShowCheckedModeBanner: false,
              theme: AppTheme.build(brightness: Brightness.light),
              darkTheme: AppTheme.build(brightness: Brightness.dark),
              themeMode: themeState.selectedThemeMode, // 🔥 MAIN LINE
            );
          },
        ),
      ),
    );
  }
}
