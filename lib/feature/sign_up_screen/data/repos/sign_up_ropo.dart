
import 'package:flutter_advance/core/networking/api_handler_error.dart';
import 'package:flutter_advance/core/networking/api_result.dart';
import 'package:flutter_advance/core/networking/api_service.dart';
import 'package:flutter_advance/feature/sign_up_screen/data/model/sign_up_request_body.dart';
import 'package:flutter_advance/feature/sign_up_screen/data/model/sign_up_response.dart';

class SignUpRopo {
  final ApiService _apiService;
  SignUpRopo(this._apiService);
  Future<ApiResult<SignUpResponse>> register(SignUpRequestBody signUpRequestBody) async {
    try {
      final response = await _apiService.register(signUpRequestBody);
      return ApiResult.success(response);
    }  catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}