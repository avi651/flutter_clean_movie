import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_clean/core/resources/app_sizes.dart';
import 'package:movie_clean/core/theme/theme_data/text_theme.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String iconTitle;
  final Function() onSeeAllTap;

  const SectionHeader({
    super.key,
    required this.title,
    required this.iconTitle,
    required this.onSeeAllTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: AppSizes.p4.sp,
        horizontal: AppSizes.p16.sp,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: textTheme.smallBold.copyWith(fontSize: AppSizes.sp12.sp),
          ),

          InkWell(
            onTap: onSeeAllTap,
            child: Row(
              children: [
                Text(iconTitle, style: textTheme.body),

                SizedBox(width: AppSizes.p4.sp),

                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: AppSizes.sp12.sp,
                  color: textTheme.body.color,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
