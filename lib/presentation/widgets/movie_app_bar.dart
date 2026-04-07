import 'package:flutter/material.dart';

class MovieAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String appBarText;

  const MovieAppBar({super.key, required this.appBarText});

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text(appBarText), centerTitle: true);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
