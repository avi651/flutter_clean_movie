import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../bloc/movie_review_cubit/movie_review_cubit.dart';

class MovieReviewSection extends StatelessWidget {
  const MovieReviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieReviewCubit, MovieReviewFetchState>(
      builder: (context, state) {
        final cubit = Modular.get<MovieReviewCubit>();

        if (state.isBusy) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.isError) {
          return const Center(child: Text('Unable to load reviews'));
        }

        final reviews = cubit.maybeData?.results ?? [];

        if (reviews.isEmpty) {
          return const Center(child: Text('No reviews available'));
        }

        return SizedBox(
          height: 240,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: reviews.length,
            separatorBuilder: (_, _) => const SizedBox(width: 16),
            itemBuilder: (_, index) {
              final review = reviews[index];

              return SizedBox(
                width: 300,
                child: Card(
                  color: Colors.white,
                  elevation: 3,
                  shadowColor: Colors.black12,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 22,
                              backgroundColor: Colors.grey.shade200,
                              child: const Icon(
                                Icons.person_outline,
                                color: Colors.grey,
                              ),
                            ),

                            const SizedBox(width: 12),

                            Expanded(
                              child: Text(
                                review.author,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 16),

                        const Row(
                          children: [
                            Icon(Icons.star, size: 18, color: Colors.amber),
                            Icon(Icons.star, size: 18, color: Colors.amber),
                            Icon(Icons.star, size: 18, color: Colors.amber),
                            Icon(Icons.star, size: 18, color: Colors.amber),
                            Icon(
                              Icons.star_half,
                              size: 18,
                              color: Colors.amber,
                            ),
                          ],
                        ),

                        const SizedBox(height: 12),

                        Expanded(
                          child: Text(
                            review.content,
                            maxLines: 6,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.grey.shade700,
                              height: 1.4,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
