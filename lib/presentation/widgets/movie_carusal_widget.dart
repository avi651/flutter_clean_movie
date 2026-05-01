import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
    return SizedBox(
      width: double.infinity,
      child: CarouselSlider.builder(
        itemCount: items.length,
        options: CarouselOptions(
          height: height,

          /// ✅ Full width
          viewportFraction: 1.0,

          /// ✅ Remove side gaps
          padEnds: false,

          /// ❌ Must be false for real full width
          enlargeCenterPage: false,

          autoPlay: true,
          enableInfiniteScroll: true,
        ),
        itemBuilder: (context, index, realIndex) {
          return SizedBox(
            width: double.infinity,
            child: itemBuilder(context, items[index], index),
          );
        },
      ),
    );
  }
}
