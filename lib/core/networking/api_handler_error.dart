import 'package:dio/dio.dart';

import 'api_error_model.dart';

class ApiHandlerError {


  static ApiErrorModel handle(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(
              message:
                  "Connection timed out. Please check your internet and try again.");
        case DioExceptionType.sendTimeout:
          return ApiErrorModel(
              message:
                  "Failed to send request due to a timeout. Please try again later.");
        case DioExceptionType.receiveTimeout:
          return ApiErrorModel(
              message:
                  "Failed to receive response due to a timeout. Please try again.");
        case DioExceptionType.badCertificate:
          return ApiErrorModel(
              message:
                  "Invalid server certificate. Please contact support or try again later.");

        case DioExceptionType.cancel:
          return ApiErrorModel(
              message: "Request was cancelled. Please try again.");
        case DioExceptionType.connectionError:
          return ApiErrorModel(
              message:
                  "Failed to connect to the server. Please check your internet.");
        case DioExceptionType.unknown:
          return ApiErrorModel(
              message:
                  "An unexpected error occurred. Please check your network and try again.");
        case DioExceptionType.badResponse:
          return _handleError( error.response?.data);
        // ignore: unreachable_switch_default
        default:
          return ApiErrorModel(message: "something went Wrong");
      }
    } else {
      return ApiErrorModel(message: "something went Wrong");
    }
  }
}

ApiErrorModel _handleError( dynamic data) {
  return ApiErrorModel(
    message:data['message'] ?? 'something went Wrong',
    code: data['code'] ,
    errors: data['data']??[],
  );
}
