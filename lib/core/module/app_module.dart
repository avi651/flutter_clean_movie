import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:dio/dio.dart';
import 'package:movie_clean/core/shared/extensions/injector_ext.dart';
import 'package:movie_clean/core/theme/bloc/theme_bloc.dart';
import 'package:movie_clean/data/ai/ai_client.dart';
import 'package:movie_clean/data/ai/ai_repository.dart';
import 'package:movie_clean/data/datasources/movie_local_datasource.dart';
import 'package:movie_clean/data/datasources/movie_client.dart';
import 'package:movie_clean/data/local/i_language_repository.dart';
import 'package:movie_clean/data/local/language_repository.dart';
import 'package:movie_clean/data/repositories/movie_repository.dart';
import 'package:movie_clean/data/repositories/mock_movie_repository.dart';
import 'package:movie_clean/domain/i_ai_repository/i_ai_repository.dart';
import 'package:movie_clean/domain/i_movie_repository/i_movie_repository.dart';
import 'package:movie_clean/core/network_info/network_info.dart';
import 'package:movie_clean/domain/language/language_service.dart';
import 'package:movie_clean/domain/logger/i_logger_service.dart';
import 'package:movie_clean/domain/logger/log_journal.dart';
import 'package:movie_clean/domain/logger/logger_cubit.dart';
import 'package:movie_clean/domain/logger/logger_service.dart';
import 'package:movie_clean/domain/usecases/ai/send_message_usecase.dart';
import 'package:movie_clean/presentation/ai_chat_cubit/ai_chat_cubit.dart';
import 'package:movie_clean/presentation/bloc/internet_status_cubit/internet_status_cubit.dart';
import 'package:movie_clean/presentation/bloc/movie_bloc/movie_bloc.dart';
import 'package:movie_clean/presentation/bloc/movie_bottom_nav_cubit/movie_bottom_nav_cubit.dart';
import 'package:movie_clean/core/services/env.dart';
import 'package:movie_clean/presentation/screens/ai_chat_page/ai_chat_page.dart';
import 'package:movie_clean/presentation/screens/language_page/language_page.dart';
import 'package:movie_clean/presentation/screens/movie_tabbar/movie_tabbar.dart';
import 'package:movie_clean/presentation/widgets/logs_page.dart';

class CoreModule extends Module {
  @override
  void binds(i) {
    // -----------------------------
    // Datasources & Network
    // -----------------------------
    i.addSingleton<MovieLocalDatasource>(
      () => MovieLocalDatasource(Hive.box('movies')),
    );

    i.addSingleton<NetworkInfo>(() => NetworkInfoImpl());

    i.addSingleton<MovieClient>(() => MovieClient(dio: Dio()));

    // -----------------------------
    // Movie Repository
    // -----------------------------
    i.addSingleton<IMovieRepository>(
      () => Env.useApi
          ? MovieRepository(
              client: i.get<MovieClient>(),
              local: i.get<MovieLocalDatasource>(),
              networkInfo: i.get<NetworkInfo>(),
            )
          : MockMovieRepository(),
    );

    // -----------------------------
    // Logger
    // -----------------------------
    i.addSingleton<LogJournal>(() => LogJournal());

    i.addSingleton<ILoggerService>(
      () => LoggerService(logJournal: i.get<LogJournal>()),
    );

    // -----------------------------
    // Language
    // -----------------------------
    i.addSingleton<ILanguageRepository>(() => LanguageRepository());

    i.addSingleton<LanguageService>(
      () => LanguageService(languageRepo: i.get<ILanguageRepository>()),
    );

    // -----------------------------
    // 🔥 AI FEATURE (IMPORTANT)
    // -----------------------------
    i.addSingleton<AIClient>(() => AIClient(dio: Dio()));

    i.addSingleton<IAiRepository>(
      () => AiRepository(client: i.get<AIClient>()),
    );

    i.addSingleton<SendMessageUseCase>(
      () => SendMessageUseCase(i.get<IAiRepository>()),
    );

    i.addBlocSingleton<AIChatCubit>(
      () => AIChatCubit(i.get<SendMessageUseCase>()),
    );
  }
}

class AppModule extends Module {
  AppModule();

  @override
  List<Module> get imports => [CoreModule()];

  @override
  void binds(i) {
    // -----------------------------
    // Cubits / Blocs (UI Layer)
    // -----------------------------
    i.addBlocSingleton<LoggerCubit>(() => LoggerCubit());

    i.addBlocSingleton<MovieBottomNavCubit>(() => MovieBottomNavCubit());

    i.addBlocSingleton<MovieBloc>(
      () => MovieBloc(
        repository: i.get<IMovieRepository>(),
        logger: i.get<ILoggerService>(),
      ),
    );

    i.addBlocSingleton<InternetStatusCubit>(() => InternetStatusCubit());
    i.addBlocSingleton<ThemeBloc>(() => ThemeBloc());
  }

  @override
  void routes(RouteManager r) {
    r.child(MovieTabbar.route, child: (_) => const MovieTabbar());
    r.child(LogPage.path, child: (_) => const LogPage());
    r.child(LanguagePage.path, child: (_) => const LanguagePage());
    r.child('/ai-chat', child: (_) => const AIChatPage());
  }
}
