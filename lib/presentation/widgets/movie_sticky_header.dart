import 'package:flutter/material.dart';

class MovieStickyHeader extends StatelessWidget {
  final String imageUrl;
  final String title;

  const MovieStickyHeader({
    super.key,
    required this.imageUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return SliverAppBar(
      pinned: true,
      expandedHeight: 450,
      stretch: true,
      backgroundColor: colorScheme.surface,

      leading: CircleAvatar(
        backgroundColor: Colors.black26,
        child: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios_new, color: colorScheme.onSurface),
        ),
      ),

      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: CircleAvatar(
            backgroundColor: Colors.black26,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.bookmark_border, color: colorScheme.onSurface),
            ),
          ),
        ),
      ],

      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,

        title: Text(title, maxLines: 1, overflow: TextOverflow.ellipsis),

        background: Stack(
          fit: StackFit.expand,
          children: [
            Hero(
              tag: title,
              child: Image.network(imageUrl, fit: BoxFit.cover),
            ),

            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    colorScheme.surface.withOpacity(.2),
                    colorScheme.surface.withOpacity(.7),
                    colorScheme.surface,
                  ],
                ),
              ),
            ),

            Positioned(
              bottom: 80,
              right: 24,
              child: FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.play_arrow),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
