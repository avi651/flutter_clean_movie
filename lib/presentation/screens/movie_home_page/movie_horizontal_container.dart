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

    return GestureDetector(
      onTap: onTap,

      child: Card(
        elevation: AppSizes.r8,

        margin: EdgeInsets.symmetric(
          horizontal: AppSizes.p4.w,
          vertical: AppSizes.p4.h,
        ),

        clipBehavior: Clip.antiAlias,

        shape: RoundedRectangleBorder(borderRadius: AppSizes.br16),

        child: SizedBox(
          width: 120.w,

          height: 120.h,

          child: Stack(
            fit: StackFit.expand,

            children: [
              // =====================================
              // Poster Image
              // =====================================
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

              // =====================================
              // Gradient Overlay
              // =====================================
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,

                    end: Alignment.bottomCenter,

                    colors: [
                      Colors.transparent,

                      Colors.black.withValues(alpha: .25),
                    ],
                  ),
                ),
              ),

              // =====================================
              // Movie Title
              // =====================================
              Positioned(
                left: AppSizes.p4.w,

                right: AppSizes.p4.w,

                bottom: AppSizes.p4.h,

                child: Text(
                  movie.title,

                  maxLines: 2,

                  overflow: TextOverflow.ellipsis,

                  textAlign: TextAlign.center,

                  style: textTheme.bodySmall?.copyWith(
                    fontSize: AppSizes.sp12.sp,

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
