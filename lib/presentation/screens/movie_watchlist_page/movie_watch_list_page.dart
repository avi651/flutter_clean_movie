import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:movie_clean/domain/logger/logger_service.dart';

class MovieWatchListPage extends StatelessWidget {
  const MovieWatchListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("app_watchlist".tr())),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            logger.navigateToLogsScreen();
          },
          child: Text("Click Me"),
        ),
      ),
    );
  }
}
