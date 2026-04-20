import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_clean/app_bloc_scope.dart';
import 'package:movie_clean/core/module/app_module.dart';
import 'package:movie_clean/core/theme/bloc/theme_bloc.dart';
import 'package:movie_clean/core/theme/bloc/theme_state.dart';
import 'package:movie_clean/core/theme/theme_data/app_theme.dart';
import 'package:movie_clean/domain/language/language_service.dart';
import 'package:movie_clean/generated/codegen_loader.g.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      path: 'resources/langs',
      saveLocale: false,
      fallbackLocale: const Locale("pl", "PL"),
      assetLoader: const CodegenLoader(),
      useFallbackTranslations: true,
      supportedLocales: CodegenLoader.mapLocales.keys
          .map((e) => e.toLocale())
          .toList(),
      startLocale: LanguageService.defaultLocale,
      child: ModularApp(
        module: AppModule(),
        child: AppBlocScope(
          child: BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, themeState) {
              return MaterialApp.router(
                routerConfig: Modular.routerConfig,
                debugShowCheckedModeBanner: false,

                // 🔥 IMPORTANT FIX
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                locale: context.locale,

                theme: AppTheme.build(brightness: Brightness.light),
                darkTheme: AppTheme.build(brightness: Brightness.dark),
                themeMode: themeState.selectedThemeMode,
              );
            },
          ),
        ),
      ),
    );
  }
}
