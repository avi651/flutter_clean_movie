import 'package:flutter/material.dart';
import 'package:movie_clean/core/services/env.dart';
import 'package:movie_clean/domain/logger/logger_service.dart';

class FTalkerFab extends StatelessWidget {
  const FTalkerFab({required this.visible, super.key});

  final bool visible;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: Env.showDebugLogs && visible,
      child: FloatingActionButton(
        onPressed: logger.navigateToLogsScreen,
        child: const Icon(Icons.bug_report),
      ),
    );
  }
}
