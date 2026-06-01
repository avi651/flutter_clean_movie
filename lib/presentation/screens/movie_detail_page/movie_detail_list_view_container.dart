import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_clean/core/resources/app_sizes.dart';
import 'package:movie_clean/core/utils/image_utils.dart';
import 'package:movie_clean/domain/entities/movie_result_entity.dart/movie_result_entity.dart';

class MovieDetailListViewContainer extends StatelessWidget {
  const MovieDetailListViewContainer({
    super.key,
    required this.movie,
    this.onTap,
    required Column child,
  });
  final MovieResultEntity movie;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final imageUrl = ImageUtils.getPosterUrl(movie.posterPath);
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    final isLandscape =
        MediaQuery.orientationOf(context) == Orientation.landscape;

    return SizedBox(
      height: AppSizes.h200,
      width: double.infinity,
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // =========================================================
              // Poster
              // =========================================================
              SizedBox(
                width: AppSizes.h120,
                height: AppSizes.h200,
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) {
                    return Container(
                      color: Colors.grey.shade300,
                      alignment: Alignment.center,
                      child: Icon(Icons.broken_image, size: AppSizes.icon20.sp),
                    );
                  },
                ),
              ),

              // =========================================================
              // Details
              // =========================================================
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(12.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title
                      Text(
                        movie.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: textTheme.titleMedium?.copyWith(
                          color: colorScheme.onSurface,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 6.h),

                      // Release Date
                      Text(
                        movie.releaseDate,
                        style: textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurface.withValues(alpha: 0.6),
                        ),
                      ),
                      SizedBox(height: 10.h),

                      // Overview
                      Expanded(
                        child: Text(
                          movie.overview,
                          style: textTheme.bodyMedium?.copyWith(
                            color: colorScheme.onSurface,
                          ),
                        ),
                      ),
                    ],
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
