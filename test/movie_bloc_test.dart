// import 'package:bloc_test/bloc_test.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:dartz/dartz.dart';
// import 'package:mocktail/mocktail.dart';

// import 'package:movie_clean/presentation/bloc/movie_bloc/movie_bloc.dart';
// import 'package:movie_clean/presentation/bloc/movie_bloc/movie_event.dart';
// import 'package:movie_clean/presentation/bloc/movie_bloc/movie_state.dart';
// import 'package:movie_clean/domain/i_movie_repository/i_movie_repository.dart';
// import 'package:movie_clean/domain/entities/movie_entity/movie_entity.dart';
// import 'package:movie_clean/core/services/failure.dart';

// class MockRepository extends Mock implements IMovieRepository {}

// void main() {
//   late MovieBloc bloc;
//   late MockRepository repository;

//   setUp(() {
//     repository = MockRepository();
//     bloc = MovieBloc(repository: repository, logger: null);
//   });

//   group("MovieBloc", () {
//     blocTest<MovieBloc, MovieState>(
//       "✅ emits loading → success",
//       build: () {
//         when(() => repository.getPopularMovie()).thenAnswer(
//           (_) async =>
//               right(MovieEntity(page: 1, totalPages: 1, totalResults: 1)),
//         );
//         return bloc;
//       },
//       act: (bloc) => bloc.add(const MovieEvent.fetch()),
//       expect: () => [
//         const MovieState(isLoading: true),
//         isA<MovieState>().having((s) => s.isLoading, "loading", false),
//       ],
//     );

//     blocTest<MovieBloc, MovieState>(
//       "❌ emits loading → error",
//       build: () {
//         when(
//           () => repository.getPopularMovie(),
//         ).thenAnswer((_) async => left(const Failure.serializationFailure()));
//         return bloc;
//       },
//       act: (bloc) => bloc.add(const MovieEvent.fetch()),
//       expect: () => [
//         const MovieState(isLoading: true),
//         isA<MovieState>().having((s) => s.errorMessage, "error", "Error"),
//       ],
//     );

//     blocTest<MovieBloc, MovieState>(
//       "🔄 refresh should call fetch again",
//       build: () {
//         when(() => repository.getPopularMovie()).thenAnswer(
//           (_) async =>
//               right(MovieEntity(page: 1, totalPages: 1, totalResults: 1)),
//         );
//         return bloc;
//       },
//       act: (bloc) => bloc.add(const MovieEvent.refresh()),
//       verify: (_) {
//         verify(() => repository.getPopularMovie()).called(1);
//       },
//     );
//   });
// }
