import 'package:dio/dio.dart';
import 'package:flutter_advance/core/networking/api_constants.dart';
import 'package:flutter_advance/feature/login_screen/data/models/login_request_body.dart';
import 'package:flutter_advance/feature/login_screen/data/models/login_response.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

//? dart run build_runner build --delete-conflicting-outputs

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );
}
