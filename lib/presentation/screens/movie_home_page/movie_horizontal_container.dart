import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:movie_clean/core/resources/app_sizes.dart';
import 'package:movie_clean/core/utils/image_utils.dart';
import 'package:movie_clean/domain/entities/movie_result_entity.dart/movie_result_entity.dart';

class MovieHorizontalContainer extends StatelessWidget {
  final MovieResultEntity movie;
  final VoidCallback? onTap;
  final bool showTrailing;

  const MovieHorizontalContainer({
    super.key,
    required this.movie,
    this.onTap,
    this.showTrailing = true,
  });

  @override
  Widget build(BuildContext context) {
    final imageUrl = ImageUtils.getPosterUrl(movie.posterPath);

    final textTheme = Theme.of(context).textTheme;

    final isLandscape =
        MediaQuery.orientationOf(context) == Orientation.landscape;

    // =====================================================
    // Responsive Card Size
    // =====================================================

    final cardWidth = isLandscape ? 80.0 : 160.0;

    final cardHeight = isLandscape ? 80.0 : 240.0;

    return GestureDetector(
      onTap: onTap,

      child: Card(
        elevation: AppSizes.r4,

        margin: EdgeInsets.symmetric(
          horizontal: AppSizes.p6.w,
          vertical: AppSizes.p4.h,
        ),

        clipBehavior: Clip.antiAlias,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.r16),
        ),

        child: SizedBox(
          width: cardWidth,

          height: cardHeight,

          child: Stack(
            fit: StackFit.expand,

            children: [
              // =====================================================
              // Poster Image
              // =====================================================
              Image.network(
                imageUrl,

                fit: BoxFit.cover,

                errorBuilder: (_, _, _) {
                  return Container(
                    color: Colors.grey.shade300,

                    alignment: Alignment.center,

                    child: Icon(Icons.broken_image, size: AppSizes.icon20.sp),
                  );
                },
              ),

              // =====================================================
              // Gradient Overlay
              // =====================================================
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,

                    end: Alignment.bottomCenter,

                    colors: [
                      Colors.transparent,
                      Colors.black.withValues(alpha: .7),
                    ],
                  ),
                ),
              ),

              // =====================================================
              // Movie Title
              // =====================================================
              Positioned(
                left: AppSizes.p8.w,

                right: AppSizes.p8.w,

                bottom: AppSizes.p8.h,

                child: Text(
                  movie.title,

                  maxLines: 2,

                  overflow: TextOverflow.ellipsis,

                  textAlign: TextAlign.center,

                  style: textTheme.bodyMedium?.copyWith(
                    fontSize: isLandscape ? AppSizes.sp12 : AppSizes.sp14,

                    fontWeight: FontWeight.w700,

                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
