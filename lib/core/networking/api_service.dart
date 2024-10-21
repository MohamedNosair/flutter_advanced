import 'package:dio/dio.dart';
import 'package:flutter_advance/core/networking/api_constants.dart';
import 'package:flutter_advance/feature/login_screen/data/models/login_request_body.dart';
import 'package:flutter_advance/feature/login_screen/data/models/login_response.dart';
import 'package:flutter_advance/feature/sign_up_screen/data/model/sign_up_request_body.dart';
import 'package:flutter_advance/feature/sign_up_screen/data/model/sign_up_response.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

//? dart run build_runner build --delete-conflicting-outputs

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
 
   // ? post login
  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  // ? post register
  @POST(ApiConstants.register)
  Future<SignUpResponse> register(
    @Body() SignUpRequestBody signUpRequestBody,
  );
}
