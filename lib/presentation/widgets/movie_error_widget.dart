import 'package:flutter/material.dart';

class MovieErrorWidget extends StatelessWidget {
  final String message;

  const MovieErrorWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(message));
  }
}
