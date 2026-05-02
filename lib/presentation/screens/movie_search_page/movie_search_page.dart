import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_clean/presentation/bloc/search_movie_cubit/search_movie_cubit.dart';
import 'package:movie_clean/presentation/screens/language_page/language_page.dart';
import 'package:movie_clean/presentation/screens/movie_search_page/movie_search_bar.dart';

class MovieSearchPage extends StatefulWidget {
  const MovieSearchPage({super.key});

  @override
  State<MovieSearchPage> createState() => _MovieSearchPageState();
}

class _MovieSearchPageState extends State<MovieSearchPage> {
  late final TextEditingController searchFieldController;
  late final FocusNode searchFocusNode;
  late final SearchMovieCubit searchMovieCubit;
  final ValueNotifier<bool> isSearchFocusedRx = ValueNotifier(false);

  String searchQuery = "";

  @override
  void initState() {
    super.initState();
    searchMovieCubit = Modular.get();
    _initSearchControllers();
  }

  void _initSearchControllers() {
    searchFocusNode = FocusNode()
      ..addListener(() => isSearchFocusedRx.value = searchFocusNode.hasFocus);
    searchFieldController = TextEditingController()
      ..addListener(_onSearchFieldChanged);
  }

  void _onSearchFieldChanged() {
    if (searchQuery == searchFieldController.text) return;
    searchQuery = searchFieldController.text;
    searchMovieCubit.search(searchQuery);
  }

  @override
  void dispose() {
    super.dispose();
    searchFieldController.dispose();
    searchFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("WatchList")),
      body: Center(
        child: Column(
          children: [
            MovieSearchBar(
              searchFieldController: searchFieldController,
              searchFocusNode: searchFocusNode,
            ),
            ElevatedButton(
              onPressed: () {
                Modular.to.pushNamed(LanguagePage.path);
              },
              child: Text("Click Me"),
            ),
          ],
        ),
      ),
    );
  }
}
