import 'package:flutter/material.dart';
import 'package:movie_clean/domain/logger/logger_service.dart';

class MovieWatchListPage extends StatelessWidget {
  const MovieWatchListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("WatchList")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            print("Button Pressed");
            logger.navigateToLogsScreen();
          },
          child: Text("Click Me"),
        ),
      ),
    );
  }
}
