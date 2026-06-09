import 'package:dio/dio.dart';

class DioService {
  // 1. Make the Dio instance private
  late final Dio _dio;

  DioService() {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'https://tesseroapi.runasp.net',
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          //TODO model check
          'X-Tenant-Id': '00000000-0000-0000-0000-000000000001',
        },
      ),
    );

    // 2. Add Interceptors
    _dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
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
  Exception _handleException(DioException e) {
    // You can map DioExceptions to your own custom AppExceptions here
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return Exception('Connection timed out. Please check your internet.');
      case DioExceptionType.badResponse:
        // Handle server errors (400, 401, 500, etc.)
        final statusCode = e.response?.statusCode;
        return Exception('Server error: $statusCode');
      case DioExceptionType.connectionError:
        return Exception('No internet connection.');
      default:
        return Exception('An unexpected error occurred.');
    }
  }
}
