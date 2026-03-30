import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movie_clean/core/services/env.dart';
import 'package:movie_clean/core/services/failure.dart';
import 'package:movie_clean/core/services/typedef.dart';
import 'package:movie_clean/data/datasources/base_datasource.dart';

class MovieClient extends BaseDatasource {
  MovieClient({required this.dio});

  final Dio dio;
  @override
  Dio get client => dio;

  @override
  Future<Either<Failure, Response<T>>> get<T>(
    String path, {
    Json headers = const {},
    bool authenticate = true,
    Map<String, dynamic>? queryParameters,
  }) async {
    if (!authenticate) {
      return left(const Failure.unaunthenticated());
    }

    final Json headerss = {...headers, ...getBaseHeaders(authenticate)};

    try {
      final response = await dio.get<T>(
        "$baseUrl$path",
        options: Options(headers: headerss),
        queryParameters: queryParameters,
      );
      return right(response);
    } on DioException catch (e) {
      if (e.response?.statusCode == HttpStatus.notFound) {
        return Left(Failure.routeNotFound(exception: e));
      }
      return left(handleDioException(e));
    } catch (e) {
      return left(Failure.unknown(e));
    }
  }

  String get authToken => Env.skipAuthentication ? "cypress" : "Bearer Cypress";

  Json getBaseHeaders(bool authenticate) => {
    if (authenticate) "Authorization": "Token",
    "apiKey": apiKey,
  };

  @override
  Future<Either<Failure, Response<T>>> delete<T>(
    String path, {
    Json headers = const {},
    bool authenticate = true,
    Object? data,
  }) async {
    if (!authenticate) {
      return left(const Failure.unaunthenticated());
    }
    final Json headerss = {...headers, ...getBaseHeaders(authenticate)};
    try {
      final response = await dio.delete<T>(
        "$baseUrl$path",
        options: Options(headers: headerss),
      );
      return right(response);
    } on DioException catch (e) {
      if (e.response?.statusCode == HttpStatus.notFound) {
        return Left(Failure.routeNotFound(exception: e));
      }
      return left(handleDioException(e));
    } catch (e) {
      return left(Failure.unknown(e));
    }
  }

  @override
  Future<Either<Failure, Response<T>>> post<T>(
    String path, {
    Json headers = const {},
    bool authenticate = true,
    Map<String, dynamic>? queryParameters,
    Object? data,
  }) async {
    if (!authenticate) {
      return left(const Failure.unaunthenticated());
    }
    final Json headerss = {...headers, ...getBaseHeaders(authenticate)};
    try {
      final response = await dio.post<T>(
        "$baseUrl$path",
        options: Options(headers: headerss),
        queryParameters: queryParameters,
        data: data,
      );
      return right(response);
    } on DioException catch (e) {
      if (e.response?.statusCode == HttpStatus.notFound) {
        return Left(Failure.routeNotFound(exception: e));
      }
      return left(handleDioException(e));
    } catch (e) {
      return left(Failure.unknown(e));
    }
  }

  @override
  Future<Either<Failure, Response<T>>> put<T>(
    String path, {
    Json headers = const {},
    bool authenticate = true,
    Object? data,
  }) async {
    if (!authenticate) {
      return left(const Failure.unaunthenticated());
    }
    final Json headerss = {...headers, ...getBaseHeaders(authenticate)};
    try {
      final response = await dio.put<T>(
        "$baseUrl$path",
        options: Options(headers: headerss),
      );
      return right(response);
    } on DioException catch (e) {
      if (e.response?.statusCode == HttpStatus.notFound) {
        return Left(Failure.routeNotFound(exception: e));
      }
      return left(handleDioException(e));
    } catch (e) {
      return left(Failure.unknown(e));
    }
  }

  String get baseUrl => Env.movieBaseUrl;
  String get apiKey => Env.movieApiKey;
}
