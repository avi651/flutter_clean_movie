import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:movie_clean/core/services/env.dart';
import 'package:movie_clean/core/services/failure.dart';

class AIClient {
  final Dio dio;

  AIClient({required this.dio}) {
    _init();
  }

  void _init() {
    dio.options.baseUrl = "https://api.openai.com/v1";
    dio.options.connectTimeout = const Duration(seconds: 30);
    dio.options.receiveTimeout = const Duration(seconds: 30);

    dio.interceptors.addAll([
      /// 🔥 AUTH + HEADERS
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers["Authorization"] = "Bearer ${Env.openAIApiKey}";
          options.headers["Content-Type"] = "application/json";
          handler.next(options);
        },
      ),

      /// 🔥 DEBUG LOGS (VERY IMPORTANT)
      LogInterceptor(requestBody: true, responseBody: true),
    ]);
  }

  Future<Either<Failure, Response>> post({
    required String path,
    required Object data,
  }) async {
    try {
      final res = await dio.post(path, data: data);

      /// 🔥 DEBUG
      debugPrint("AI RESPONSE: ${res.data}");

      return right(res);
    } on DioException catch (e) {
      debugPrint("DIO ERROR: ${e.response?.data}");

      if (e.type == DioExceptionType.connectionError) {
        return left(const Failure.noInternetConnection());
      }

      if (e.response?.statusCode == HttpStatus.unauthorized) {
        return left(Failure.unaunthenticated(exception: e));
      }

      return left(Failure.unknown(e));
    } catch (e) {
      debugPrint("UNKNOWN ERROR: $e");
      return left(Failure.unknown(e));
    }
  }
}
