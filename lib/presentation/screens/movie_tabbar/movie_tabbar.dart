import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_clean/presentation/bloc/movie_bottom_nav_cubit/movie_bottom_nav_cubit.dart';
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
  ];
}
