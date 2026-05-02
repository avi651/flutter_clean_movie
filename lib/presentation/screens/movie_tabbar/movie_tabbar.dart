// =====================================================
// movie_tabbar.dart
// =====================================================

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:movie_clean/presentation/bloc/movie_bottom_nav_cubit/movie_bottom_nav_cubit.dart';

import 'package:movie_clean/presentation/screens/ai_chat_page/ai_chat_page.dart';
import 'package:movie_clean/presentation/screens/movie_home_page/movie_home_page.dart';
import 'package:movie_clean/presentation/screens/movie_search_page/movie_search_page.dart';
import 'package:movie_clean/presentation/screens/movie_watchlist_page/movie_watch_list_page.dart';

class MovieTabbar extends StatelessWidget {
  static const String route = '/';

  static const String path = '/';

  const MovieTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = Modular.get<MovieBottomNavCubit>();

    return Scaffold(
      // =====================================================
      // BODY
      // =====================================================
      body: BlocBuilder<MovieBottomNavCubit, int>(
        bloc: cubit,

        builder: (context, index) {
          return IndexedStack(index: index, children: _pages);
        },
      ),

      // =====================================================
      // BOTTOM NAVIGATION
      // =====================================================
      bottomNavigationBar: BlocBuilder<MovieBottomNavCubit, int>(
        bloc: cubit,

        builder: (context, index) {
          final theme = Theme.of(context);

          final bottomNavTheme = theme.bottomNavigationBarTheme;

          return BottomNavigationBar(
            // =====================================================
            // Navigation
            // =====================================================
            currentIndex: index,

            onTap: cubit.changeTab,

            type: BottomNavigationBarType.fixed,

            // =====================================================
            // Theme Colors
            // =====================================================
            backgroundColor: bottomNavTheme.backgroundColor,

            selectedItemColor: bottomNavTheme.selectedItemColor,

            unselectedItemColor: bottomNavTheme.unselectedItemColor,

            // =====================================================
            // Styles
            // =====================================================
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),

            unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),

            showUnselectedLabels: true,

            elevation: 8,

            // =====================================================
            // Items
            // =====================================================
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),

                activeIcon: Icon(Icons.home),

                label: 'Home',
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined),

                activeIcon: Icon(Icons.search),

                label: 'Search',
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_border),

                activeIcon: Icon(Icons.bookmark),

                label: 'Watchlist',
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.smart_toy_outlined),

                activeIcon: Icon(Icons.smart_toy),

                label: 'Open AI',
              ),
            ],
          );
        },
      ),
    );
  }

  // =====================================================
  // Pages
  // =====================================================

  static const List<Widget> _pages = [
    MovieHomePage(),

    MovieSearchPage(),

    MovieWatchListPage(),

    AIChatPage(),
  ];
}
