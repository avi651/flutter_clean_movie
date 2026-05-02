import 'package:flutter/material.dart';
import 'package:movie_clean/core/resources/app_sizes.dart';

class AppLoader extends StatelessWidget {
  final double? width;
  final double? minHeight;
  final Color? color;
  final Color? backgroundColor;
  final bool center;

  const AppLoader({
    super.key,
    this.width,
    this.minHeight,
    this.color,
    this.backgroundColor,
    this.center = true,
  });

  @override
  Widget build(BuildContext context) {
    final loader = Padding(
      padding: const EdgeInsets.all(AppSizes.p8),
      child: SizedBox(
        width: width ?? double.infinity,
        child: LinearProgressIndicator(
          minHeight: minHeight ?? 4,
          color: color ?? Theme.of(context).colorScheme.primary,
          backgroundColor:
              backgroundColor ??
              Theme.of(context).colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );

    if (center) {
      return Center(child: loader);
    }

    return loader;
  }
}
