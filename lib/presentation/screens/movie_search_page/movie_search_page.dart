import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_clean/presentation/screens/language_page/language_page.dart';

class MovieSearchPage extends StatelessWidget {
  const MovieSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("WatchList")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Modular.to.pushNamed(LanguagePage.path);
          },
          child: Text("Click Me"),
        ),
      ),
    );
  }
}
