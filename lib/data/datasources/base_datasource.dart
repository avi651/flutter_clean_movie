import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movie_clean/core/services/failure.dart';
import 'package:movie_clean/core/services/typedef.dart';

abstract class BaseDatasource {
  Dio get client;

  Future<Either<Failure, Response<T>>> get<T>(
    String path, {
    Json headers = const {},
    bool authenticate = true,
    Map<String, dynamic>? queryParameters,
  });

  Future<Either<Failure, Response<T>>> post<T>(
    String path, {
    Json headers = const {},
    bool authenticate = true,
    Map<String, dynamic>? queryParameters,
    Object? data,
  });

  Future<Either<Failure, Response<T>>> put<T>(
    String path, {
    Json headers = const {},
    bool authenticate = true,
    Object? data,
  });

  Future<Either<Failure, Response<T>>> delete<T>(
    String path, {
    Json headers = const {},
    bool authenticate = true,
    Object? data,
  });

  Failure handleDioException(DioException e) {
    logDioException(e);
    if (e.type == DioExceptionType.unknown && e.error is SocketException) {
      return Failure.noInternetConnection(e);
    }

    if (e.type == DioExceptionType.sendTimeout ||
        e.type == DioExceptionType.receiveTimeout ||
        e.type == DioExceptionType.connectionTimeout) {
      return Failure.timeout(e);
    }

    if (e.type == DioExceptionType.connectionError) {
      return Failure.noInternetConnection(e);
    }

    if (e.response?.statusCode == HttpStatus.unauthorized) {
      return Failure.unaunthenticated(message: e.message, exception: e);
    }
    return Failure.unknown(e);
  }

  void logDioException(DioException e, {String? context}) {
    final StringBuffer buffer = StringBuffer();
    buffer.writeln("Exception details");
    buffer.writeln("Request:");
    buffer.writeln("URL: ${e.requestOptions.uri}");
    buffer.writeln("Status Code: ${e.response?.statusCode}");
    buffer.writeln("Header: \n${e.requestOptions.headers}");
    if (e.requestOptions.data != null) {
      buffer.writeln("Data:");
      buffer.writeln(e.requestOptions.data!.toString());
    }
    if (e.response != null) {
      buffer.writeln("Response:");
      buffer.writeln("StatusCode: ${e.response!.statusCode}");
      buffer.writeln("Data:\n${e.response!.data}");
    }

    // We will do this later
    //logger.error();
  }
}
