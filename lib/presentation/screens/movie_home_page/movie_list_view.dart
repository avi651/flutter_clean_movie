// import 'package:flutter/material.dart';
// import 'package:movie_clean/domain/entities/movie_result_entity.dart/movie_result_entity.dart';
// import 'package:movie_clean/presentation/screens/movie_home_page/movie_horizontal_container.dart';
// import 'package:movie_clean/presentation/screens/movie_home_page/movie_list_item.dart';

// class MovieListView extends StatelessWidget {
//   final List<MovieResultEntity> movies;
//   final VoidCallback onRefresh;

//   const MovieListView({
//     super.key,
//     required this.movies,
//     required this.onRefresh,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return RefreshIndicator(
//       onRefresh: () async => onRefresh(),
//       child: ListView.builder(
//         scrollDirection: .horizontal,
//         itemCount: movies.length,
//         itemBuilder: (context, index) {
//           return MovieHorizontalContainer(
//             movie: movies[index],
//           ); //MovieListItem(movie: movies[index]);
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_clean/core/resources/app_sizes.dart';
import 'package:movie_clean/domain/entities/movie_result_entity.dart/movie_result_entity.dart';
import 'package:movie_clean/presentation/screens/movie_home_page/movie_horizontal_container.dart';

class MovieListView extends StatelessWidget {
  final List<MovieResultEntity> movies;
  final VoidCallback onRefresh;

  const MovieListView({
    super.key,
    required this.movies,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async => onRefresh(),
      child: movies.isEmpty
          ? ListView(
              children: [
                SizedBox(height: AppSizes.h300.h),
                Center(child: Text('No Movies Found')),
              ],
            )
          : SizedBox(
              height: AppSizes.h200.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  return MovieHorizontalContainer(movie: movies[index]);
                },
              ),
            ),
    );
  }
}
