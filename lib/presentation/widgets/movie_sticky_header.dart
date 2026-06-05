import 'package:flutter/material.dart';
import 'package:movie_clean/presentation/widgets/f_color_builder.dart';

class MovieStickyHeader extends StatelessWidget {
  const MovieStickyHeader({
    super.key,
    required this.imageUrl,
    required this.title,
  });

  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return FColorBuilder(
      builder: (context, colors) {
        return SliverAppBar(
          pinned: true,
          stretch: true,
          expandedHeight: 450,
          backgroundColor: colorScheme.surface,

          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back_ios, color: colors.primary.v100),
          ),

          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.bookmark_border, color: colors.primary.v100),
            ),
          ],

          flexibleSpace: FlexibleSpaceBar(
            titlePadding: const EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: 16,
            ),
            collapseMode: CollapseMode.parallax,

            title: Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: colors.primary.v100,
              ),
            ),

            background: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(imageUrl, fit: BoxFit.cover),

                DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        colorScheme.surface.withOpacity(0.2),
                        colorScheme.surface.withOpacity(0.7),
                        colorScheme.surface,
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
