import 'dart:io';

import 'package:dio/dio.dart';

import '../app_constants/api_constants.dart';
import '../services/storage/my_pref.dart';
import 'helper_functions.dart';

enum ApiType {
  get,
  post,
  put,
  delete,
}

class Server {
  Server._();

  static Future<Response> get(
    String url, {
    Map<String, String>? headers,
    dynamic data,
    CancelToken? cancelToken,
  }) async {
    return _call(
      url,
      apiType: ApiType.get,
      headers: headers,
      data: data,
      cancelToken: cancelToken,
    );
  }

  static Future<Response> post(
    String url, {
    Map<String, String>? headers,
    dynamic data,
    CancelToken? cancelToken,
  }) async {
    return _call(
      url,
      apiType: ApiType.post,
      data: data,
      headers: headers,
      cancelToken: cancelToken,
    );
  }

  static Future<Response> put(
    String url, {
    Map<String, String>? headers,
    dynamic data,
    CancelToken? cancelToken,
  }) async {
    return _call(
      url,
      apiType: ApiType.put,
      data: data,
      headers: headers,
      cancelToken: cancelToken,
    );
  }

  static Future<Response> delete(
    String url, {
    Map<String, String>? headers,
    dynamic data,
  }) async {
    return _call(
      url,
      apiType: ApiType.delete,
      data: data,
      headers: headers,
    );
  }

  static Future<Response> _call(
    String url, {
    required ApiType apiType,
    dynamic data,
    Map<String, String>? headers,
    CancelToken? cancelToken,
  }) async {
    if (await isInternetAvailable()) {
      String? token;
      try {
        final dio = Dio();
        dio.options.baseUrl =
            ApiConstants.isDemo ? ApiConstants.demoUrl : ApiConstants.liveUrl;

        if (headers != null) {
          for (final String key in headers.keys) {
            dio.options.headers[key] = headers[key];
          }
        }
        dio.options.headers['Accept'] = 'application/json';
        dio.options.headers['Content-Type'] = 'application/json';
        token = MyPref.userToken();
        if (token != null) {
          dio.options.headers['Authorization'] = 'Bearer $token';
        }

        final Response response;

        switch (apiType) {
          case ApiType.get:
            response = await dio.get(url);
            break;
          case ApiType.post:
            response =
                await dio.post(url, data: data, cancelToken: cancelToken);
            break;
          case ApiType.put:
            response = await dio.put(url, data: data);
            break;
          case ApiType.delete:
            response = await dio.delete(url, data: data);
            break;
        }

        return response;
      } on DioException catch (e) {
        if ((e.response?.statusCode == 401 || e.response?.statusCode == 403) &&
            token != null) {
          MyPref.logout();
          throw 'Unauthorized. Please log in again. ';
        } else if (e.response?.statusCode == 400) {
          throw 'Bad request. Please check your input data. ';
        } else if (e.response?.statusCode == 404) {
          throw 'Resource not found. Please check the URL. ';
        } else if (e.response?.statusCode == 409) {
          throw 'Conflict. The request could not be completed due to a conflict. ';
        } else if (e.response?.statusCode == 429) {
          throw 'Too many requests. Please try again later. ';
        } else if (e.type == DioExceptionType.connectionTimeout) {
          throw 'Connection timeout. Please try again later. ';
        } else if (e.type == DioExceptionType.receiveTimeout) {
          throw 'Server took too long to respond. Please try again later. ';
        } else if (e.type == DioExceptionType.cancel) {
          throw 'Request to API was cancelled. ';
        } else if (e.response?.statusCode == 500) {
          throw 'Server error. Please try again later. ';
        } else if (e.response?.statusCode == 503) {
          throw 'Service unavailable. Please try again later. ';
        } else if (e.response?.statusCode == 403 &&
            token == null &&
            e.requestOptions.data is Map) {
          _navigateToVerifyOtp(
            email: (e.requestOptions.data as Map)['email'].toString(),
          );
          throw 'Verification required. Please verify your email.';
        } else if (e.type == DioExceptionType.unknown &&
            e.error is SocketException) {
          final socketException = e.error as SocketException;
          final osError = socketException.osError;
          if (osError != null) {
            if (osError.errorCode == 11001) {
              throw 'DNS resolution failed. Please check the server URL. ';
            } else if (osError.errorCode == 10061) {
              throw 'Connection refused. The server might be down or the URL is incorrect. ';
            } else if (osError.message.contains('EHOSTUNREACH')) {
              throw 'Host unreachable. Please check your network connection.';
            } else if (osError.message.contains('EACCES')) {
              throw 'Permission denied. The request might be blocked by a firewall or network restriction. ';
            } else {
              throw 'Network error. Please check your internet connection. ';
            }
          } else {
            throw 'Network error. Please check your internet connection. ';
          }
        } else {
          throw e.response?.data['message'] ??
              'Unexpected error occurred. ${e.toString()}';
        }
      } catch (e) {
        throw 'An unexpected error occurred: ${e.toString()}';
      }
    } else {
      throw 'Check your internet connection.';
    }
  }

  static void _navigateToVerifyOtp({required String email}) {}
}
