import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DioService {
  // 1. Make the Dio instance private
  late final Dio _dio;

  DioService({required String baseUrl, required String tenantId}) {
    _dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'X-Tenant-Id': tenantId,
        },
      ),
    );

    // 2. Add Interceptors — only log in debug mode to prevent
    //    sensitive data (PHI/PII) from leaking into production logs.
    if (kDebugMode) {
      _dio.interceptors.add(
        LogInterceptor(
          request: true,
          requestHeader: true,
          requestBody: true,
          responseHeader: false,
          responseBody: true,
          error: true,
        ),
      );
    }

    // TODO: Add AuthInterceptor here to attach Bearer tokens
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          // final token = ref.read(authProvider).token;
          // if (token != null) options.headers['Authorization'] = 'Bearer $token';
          return handler.next(options);
        },
      ),
    );
  }

  // 3. Create wrapper methods for HTTP calls
  Future<Response> get(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      return await _dio.get(
        endpoint,
        queryParameters: queryParameters,
        options: options,
      );
    } on DioException catch (e) {
      throw _handleException(e);
    }
  }

  Future<Response> post(
    String endpoint, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      return await _dio.post(
        endpoint,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
    } on DioException catch (e) {
      throw _handleException(e);
    }
  }

  Future<Response> put(
    String endpoint, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      return await _dio.put(
        endpoint,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
    } on DioException catch (e) {
      throw _handleException(e);
    }
  }

  Future<Response> delete(
    String endpoint, {
    dynamic data, // Data is less common in DELETE, but supported by APIs
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      return await _dio.delete(
        endpoint,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
    } on DioException catch (e) {
      throw _handleException(e);
    }
  }

  // 4. Centralize Error Handling
  //    Never expose raw server details to the UI — return generic user-facing
  //    messages and log the real error in debug mode only.
  Exception _handleException(DioException e) {
    if (kDebugMode) {
      debugPrint('DioException: ${e.type} — ${e.message}');
    }

    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return Exception('Connection timed out. Please check your internet.');
      case DioExceptionType.badResponse:
        final statusCode = e.response?.statusCode;
        if (statusCode == 401) {
          return Exception('Session expired. Please log in again.');
        }
        if (statusCode == 403) {
          return Exception('You do not have permission to perform this action.');
        }
        // Generic message — never echo the server's error body
        return Exception('A server error occurred. Please try again later.');
      case DioExceptionType.connectionError:
        return Exception('No internet connection.');
      default:
        return Exception('An unexpected error occurred.');
    }
  }
}
