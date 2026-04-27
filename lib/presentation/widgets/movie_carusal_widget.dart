import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MovieCarusalWidget<T> extends StatelessWidget {
  final List<T> items;
  final Widget Function(BuildContext, T, int) itemBuilder;
  final double height;

  const MovieCarusalWidget({
    super.key,
    required this.items,
    required this.itemBuilder,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: items.length,
      options: CarouselOptions(
        height: height,
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 1.0,
      ),
      itemBuilder: (context, index, _) {
        return itemBuilder(context, items[index], index);
      },
    );
  }
}
