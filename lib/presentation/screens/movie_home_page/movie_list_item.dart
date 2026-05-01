import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:movie_clean/core/resources/app_sizes.dart';
import 'package:movie_clean/core/utils/image_utils.dart';
import 'package:movie_clean/domain/entities/movie_result_entity.dart/movie_result_entity.dart';

class MovieListItem extends StatelessWidget {
  final MovieResultEntity movie;

  final VoidCallback? onTap;

  final bool showTrailing;

  const MovieListItem({
    super.key,
    required this.movie,
    this.onTap,
    this.showTrailing = true,
  });

  @override
  Widget build(BuildContext context) {
    final imageUrl = ImageUtils.getPosterUrl(movie.posterPath);

    final theme = Theme.of(context);

    final textTheme = theme.textTheme;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.p12.w,
        vertical: AppSizes.p6.h,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(AppSizes.r12.r),
        onTap: onTap,
        child: Ink(
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,

            borderRadius: BorderRadius.circular(AppSizes.r12.r),

            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),

                blurRadius: 6.r,

                offset: Offset(0, 2.h),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(AppSizes.p12.w),
            child: Row(
              children: [
                // ===================================
                // Poster
                // ===================================
                _MoviePoster(imageUrl: imageUrl),

                SizedBox(width: AppSizes.p12.w),

                // ===================================
                // Content
                // ===================================
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      // ===========================
                      // Title
                      // ===========================
                      Text(
                        movie.title,

                        maxLines: 2,

                        overflow: TextOverflow.ellipsis,

                        style: textTheme.titleMedium?.copyWith(
                          fontSize: AppSizes.sp14.sp,

                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      SizedBox(height: AppSizes.p8.h),

                      // ===========================
                      // Release Date
                      // ===========================
                      Text(
                        movie.releaseDate,

                        maxLines: 1,

                        overflow: TextOverflow.ellipsis,

                        style: textTheme.bodyMedium?.copyWith(
                          fontSize: AppSizes.sp14.sp,

                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),

                // ===================================
                // Trailing
                // ===================================
                if (showTrailing)
                  Padding(
                    padding: EdgeInsets.only(left: AppSizes.p8.w),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,

                      size: AppSizes.icon16.sp,

                      color: Colors.grey,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// =============================================
// Poster Widget
// =============================================

class _MoviePoster extends StatelessWidget {
  final String imageUrl;

  const _MoviePoster({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppSizes.r8.r),
      child: imageUrl.isNotEmpty
          ? Image.network(
              imageUrl,

              width: 70.w,
              height: 100.h,

              fit: BoxFit.cover,

              errorBuilder: (_, _, _) {
                return _PosterPlaceholder();
              },
            )
          : const _PosterPlaceholder(),
    );
  }
}

// =============================================
// Poster Placeholder
// =============================================

class _PosterPlaceholder extends StatelessWidget {
  const _PosterPlaceholder();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.w,
      height: 100.h,

      color: Colors.grey.shade300,

      alignment: Alignment.center,

      child: Icon(
        Icons.movie,
        size: AppSizes.icon28.sp,
        color: Colors.grey.shade700,
      ),
    );
  }
}
