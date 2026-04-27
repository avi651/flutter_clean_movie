import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_clean/presentation/bloc/movie_bottom_nav_cubit/movie_bottom_nav_cubit.dart';
import 'package:movie_clean/presentation/screens/ai_chat_page/ai_chat_page.dart';
import 'package:movie_clean/presentation/screens/movie_home_page/movie_home_page.dart';
import 'package:movie_clean/presentation/screens/movie_search_page/movie_search_page.dart';
import 'package:movie_clean/presentation/screens/movie_watchlist_page/movie_watch_list_page.dart';

class MovieTabbar extends StatelessWidget {
  static const String route = "/";
  static const path = '/';
  const MovieTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = Modular.get<MovieBottomNavCubit>();

    return Scaffold(
      /// 🔥 BODY
      body: BlocBuilder<MovieBottomNavCubit, int>(
        bloc: cubit,
        builder: (context, index) {
          return _pages[index];
        },
      ),

      /// 🔥 BOTTOM NAV
      bottomNavigationBar: BlocBuilder<MovieBottomNavCubit, int>(
        bloc: cubit,
        builder: (context, index) {
          return BottomNavigationBar(
            currentIndex: index,
            onTap: cubit.changeTab,

            /// 🔥 OPTIONAL (recommended for 4 tabs)
            type: BottomNavigationBarType.fixed,

            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark),
                label: "Watchlist",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.airline_seat_flat_angled_rounded),
                label: "Open AI",
              ),
            ],
          );
        },
      ),
    );
  }

  /// 🔥 PAGES
  static const List<Widget> _pages = [
    MovieHomePage(),
    MovieSearchPage(),
    MovieWatchListPage(),
    AIChatPage(),
  ];
}
