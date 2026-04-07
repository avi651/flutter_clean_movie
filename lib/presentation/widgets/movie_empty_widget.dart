import 'package:flutter/material.dart';

class MovieEmptyWidget extends StatelessWidget {
  const MovieEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("No Movies Found"));
  }
}
