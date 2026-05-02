// =====================================================
// app.dart
// =====================================================

import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:movie_clean/app_bloc_scope.dart';

import 'package:movie_clean/core/module/app_module.dart';

import 'package:movie_clean/core/resources/app_screen_util.dart';

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

      assetLoader: const CodegenLoader(),

      saveLocale: false,

      useFallbackTranslations: true,

      fallbackLocale: const Locale('en', 'US'),

      startLocale: LanguageService.defaultLocale,

      supportedLocales: CodegenLoader.mapLocales.keys
          .map((e) => e.toLocale())
          .toList(),

      child: ScreenUtilInit(
        designSize: AppScreenUtil.designSize,

        minTextAdapt: true,

        splitScreenMode: true,

        builder: (context, child) {
          return ModularApp(
            module: AppModule(),

            child: AppBlocScope(
              child: BlocBuilder<ThemeBloc, ThemeState>(
                builder: (context, themeState) {
                  return MaterialApp.router(
                    // =====================================================
                    // Router
                    // =====================================================
                    routerConfig: Modular.routerConfig,

                    // =====================================================
                    // Debug
                    // =====================================================
                    debugShowCheckedModeBanner: false,

                    // =====================================================
                    // Localization
                    // =====================================================
                    locale: context.locale,

                    supportedLocales: context.supportedLocales,

                    localizationsDelegates: context.localizationDelegates,

                    // =====================================================
                    // Themes
                    // =====================================================
                    theme: AppTheme.build(brightness: Brightness.light),

                    darkTheme: AppTheme.build(brightness: Brightness.dark),

                    /// 🔥 SYSTEM / DARK / LIGHT
                    themeMode: themeState.selectedThemeMode,

                    // =====================================================
                    // Text Scale
                    // =====================================================
                    builder: (context, widget) {
                      final mediaQuery = MediaQuery.of(context);

                      return MediaQuery(
                        data: mediaQuery.copyWith(
                          textScaler: const TextScaler.linear(1),
                        ),

                        child: widget ?? const SizedBox(),
                      );
                    },
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
