import 'package:flutter/material.dart';

class MovieListView<T> extends StatelessWidget {
  const MovieListView({
    super.key,
    required this.items,
    required this.itemBuilder,
    this.isLoading = false,
    this.errorMessage,
    this.emptyMessage = 'No Data Found',
    this.separator,
    this.padding,
    this.controller,
    this.onRefresh,
    this.physics,
    this.shrinkWrap = false,
  });

  final List<T> items;

  final Widget Function(BuildContext context, T item, int index) itemBuilder;

  final bool isLoading;
  final String? errorMessage;
  final String emptyMessage;
  final Widget? separator;
  final EdgeInsetsGeometry? padding;
  final ScrollController? controller;
  final Future<void> Function()? onRefresh;
  final ScrollPhysics? physics;
  final bool shrinkWrap;

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (errorMessage != null) {
      return Center(child: Text(errorMessage!));
    }

    if (items.isEmpty) {
      return Center(child: Text(emptyMessage));
    }

    Widget listView;

    if (separator != null) {
      listView = ListView.separated(
        controller: controller,
        padding: padding,
        physics: physics,
        shrinkWrap: shrinkWrap,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return itemBuilder(context, items[index], index);
        },
        separatorBuilder: (_, __) => separator!,
      );
    } else {
      listView = ListView.builder(
        controller: controller,
        padding: padding,
        physics: physics,
        shrinkWrap: shrinkWrap,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return itemBuilder(context, items[index], index);
        },
      );
    }

    if (onRefresh == null) {
      return listView;
    }

    return RefreshIndicator(onRefresh: onRefresh!, child: listView);
  }
}
