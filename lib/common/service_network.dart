import 'package:dio/dio.dart';
import 'package:dio_http_formatter/dio_http_formatter.dart';
import 'package:ditonton/common/constants.dart';
import 'package:ditonton/common/exception/network_exception.dart';
import 'package:ditonton/common/exception/session_expired_exception.dart';

class ServiceNetwork {
  final Dio dio = Dio()
    ..interceptors.add(
      HttpFormatter(
        includeRequest: true,
        includeRequestBody: true,
        includeResponse: true,
        includeResponseBody: true,
        includeRequestHeaders: true,
        includeRequestQueryParams: true,
        includeResponseHeaders: true,
      ),
    );

  ServiceNetwork._privateConstructor();

  static final ServiceNetwork _instance = ServiceNetwork._privateConstructor();

  factory ServiceNetwork() => _instance;

  Future<Response> get({
    String? BASE_URLs,
    required String path,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await dio.get(
        '$BASE_URL$path?$API_KEY',
        queryParameters: queryParameters,
        options: Options(
          headers: {"Authorization": "Bearer"},
        ),
      );
      return response;
    } on DioException catch (e) {
      return _returnResponseError(e);
    }
  }

  Future<Response> post({
    required String path,
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await dio.post(
        '$BASE_URL$path?$API_KEY',
        data: data,
        queryParameters: queryParameters,
      );
      return response;
    } on DioException catch (e) {
      return _returnResponseError(e);
    }
  }

  Future<Response> put({required String path, dynamic data}) async {
    try {
      final response = await dio.put(
        '$BASE_URL$path?$API_KEY',
        data: data,
      );
      return response;
    } on DioException catch (e) {
      return _returnResponseError(e);
    }
  }

  dynamic _returnResponseError(DioException e) {
    String messageDefault = 'Bad Network! Please Try Again Later!';
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        throw messageDefault;
      case DioExceptionType.connectionError:
        throw messageDefault;
      case DioExceptionType.sendTimeout:
        throw messageDefault;
      case DioExceptionType.receiveTimeout:
        throw messageDefault;
      case DioExceptionType.badResponse:
        if (e.response!.statusCode == 401) {
          throw SessionExpiredException(
            message: e.response?.data["message"],
            statusCode: e.response?.statusCode,
          );
        }
        if (e.response!.statusCode == 403) {
          throw SessionExpiredException(
            message: e.response?.data["message"],
            statusCode: e.response?.statusCode,
          );
        }
        if (e.response!.statusCode == 404) {
          throw NetworkException(
            responseMessage: e.response?.data["message"],
            httpStatus: e.response?.statusCode,
          );
        }
        if (e.response!.statusCode == 400) {
          throw SessionExpiredException(
            message: e.response?.data["message"],
            statusCode: e.response?.statusCode,
          );
        }
        if (e.response!.statusCode == 413) {
          throw NetworkException(
            responseMessage: e.response?.data["message"],
            httpStatus: e.response?.statusCode,
          );
        }
        if (e.response!.statusCode == 502) {
          throw NetworkException(
            responseMessage: e.response?.data["message"],
            httpStatus: e.response?.statusCode,
          );
        }
        if (e.response!.statusCode == 500) {
          throw NetworkException(
            responseMessage: e.response?.data["message"],
            httpStatus: e.response?.statusCode,
          );
        }
      case DioExceptionType.cancel:
        throw 'Cancel Request To Server!';
      case DioExceptionType.unknown:
        throw 'Please Check Your Internet!';
      default:
        throw 'Unhandled error: ${e.type}';
    }
  }
}
