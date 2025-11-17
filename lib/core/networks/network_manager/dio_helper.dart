import 'dart:async';

import 'package:dio/dio.dart';
import '../exceptions/app_exceptions.dart';
import 'injection_container.dart';

class DioHelper {
  late Dio dio;

  DioHelper() {
    // Initialize fresh Dio instance each time
    dio = getDio();
  }

  Options options = Options(
    receiveDataWhenStatusError: true,
    contentType: "application/json",
    responseType: ResponseType.json,
    sendTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
  );

  Future<dynamic> getApi({
    required String url,
    bool isAuthRequired = false,
    String? authToken,
  }) async {
    Options requestOptions = isAuthRequired
        ? options.copyWith(
            headers: {
              ...?options.headers,
              "Authorization": "Bearer $authToken",
            },
          )
        : options;

    try {
      Response response = await dio.get(url, options: requestOptions);
      return response.data;
    } on DioException catch (error) {
      _handleDioError(error);
    } catch (error) {
      throw FetchDataException(error.toString());
    }
  }

  Future<dynamic> postApi({
    required String url,
    bool isAuthRequired = false,
    String? authToken,
    Object? requestBody,
  }) async {
    Options requestOptions = isAuthRequired
        ? options.copyWith(
            headers: {
              ...?options.headers,
              "Authorization": "Bearer $authToken",
            },
          )
        : options;

    try {
      Response response = await dio.post(
        url,
        data: requestBody,
        options: requestOptions,
      );

      return response.data;
    } on DioException catch (error) {
      _handleDioError(error);
    } catch (error) {
      return null;
    }
  }

  Future<dynamic> putApi({
    required String url,
    bool isAuthRequired = false,
    Object? requestBody,
    String? authToken,
  }) async {
    Options requestOptions = isAuthRequired
        ? options.copyWith(
            headers: {
              ...?options.headers,
              "Authorization": "Bearer $authToken",
            },
          )
        : options;
    try {
      Response response;
      if (requestBody == null) {
        response = await dio.put(url, options: requestOptions);
      } else {
        // FIX: Use requestOptions instead of options
        response = await dio.put(
          url,
          options: requestOptions,
          data: requestBody,
        );
      }
      return response.data;
    } on DioException catch (error) {
      _handleDioError(error);
    } catch (error) {
      return null;
    }
  }

  Future<dynamic> patchApi({
    required String url,
    bool isAuthRequired = false,
    Object? requestBody,
    String? authToken,
  }) async {
    Options requestOptions = isAuthRequired
        ? options.copyWith(
            headers: {
              ...?options.headers,
              "Authorization": "Bearer $authToken",
            },
          )
        : options;

    try {
      Response response;
      if (requestBody == null) {
        response = await dio.patch(url, options: requestOptions);
      } else {
        // FIX: Use requestOptions instead of options
        response = await dio.patch(
          url,
          options: requestOptions,
          data: requestBody,
        );
      }
      return response.data;
    } on DioException catch (error) {
      _handleDioError(error);
    } catch (error) {
      return null;
    }
  }

  Future<dynamic> deleteApi({
    required String url,
    bool isAuthRequired = false,
    Object? requestBody,
    String? authToken,
  }) async {
    Options requestOptions = isAuthRequired
        ? options.copyWith(
            headers: {
              ...?options.headers,
              "Authorization": "Bearer $authToken",
            },
          )
        : options;
    try {
      Response response;
      if (requestBody == null) {
        response = await dio.delete(url, options: requestOptions);
      } else {
        // FIX: Use requestOptions instead of options
        response = await dio.delete(
          url,
          options: requestOptions,
          data: requestBody,
        );
      }
      return response.data;
    } on DioException catch (error) {
      _handleDioError(error);
    } catch (error) {
      return null;
    }
  }

  void _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        throw RequestTimeoutException(
          "Connection time out. Please, check your internet connection.",
        );
      case DioExceptionType.sendTimeout:
        throw RequestTimeoutException(
          "Please, check your internet connection.",
        );

      case DioExceptionType.receiveTimeout:
        throw RequestTimeoutException(
          "Please, check your internet connection.",
        );
      case DioExceptionType.badResponse:
        final statusCode = error.response?.statusCode;
        switch (statusCode) {
          case 401:
            throw UnauthorizedException("${error.response?.data}");
          case 4012:
            throw InvalidInputException("InValid Order");
          default:
            throw FetchDataException("Error occurred!");
        }
      case DioExceptionType.cancel:
        throw FetchDataException('Request cancelled');
      case DioExceptionType.connectionError:
        throw NoInternetException('No internet connection');
      case DioExceptionType.badCertificate:
        throw FetchDataException('Bad certificate');
      case DioExceptionType.unknown:
        throw FetchDataException('Unknown error occurred');
    }
  }

  /// MULTIPART API
  Future<dynamic> multiPartRequest({
    required String url,
    required Object requestBody,
    bool isAuthRequired = false,
    String? authToken,
  }) async {
    Options option = Options(
      headers: {
        "Content-Type": "multipart/form-data",
        if (isAuthRequired && authToken != null)
          "Authorization": "Bearer $authToken",
      },
      sendTimeout: const Duration(
        seconds: 60,
      ), // Longer timeout for file uploads
      receiveTimeout: const Duration(seconds: 60),
    );

    try {
      Response response = await dio.post(
        url,
        data: requestBody,
        options: option,
      );
      return response.data;
    } on DioException catch (error) {
      _handleDioError(error);
    } catch (error) {
      return null;
    }
  }
}
