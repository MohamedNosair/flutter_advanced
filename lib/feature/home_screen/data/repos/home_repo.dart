import 'package:flutter_advance/core/networking/api_handler_error.dart';
import 'package:flutter_advance/core/networking/api_result.dart';
import 'package:flutter_advance/feature/home_screen/data/apis/home_api_services.dart';
import 'package:flutter_advance/feature/home_screen/data/model/specialization_response_model.dart';

class HomeRepo {
  final HomeApiServices homeApiServices;

  HomeRepo(this.homeApiServices);

  Future<ApiResult<SpecializationsResponseModel>> getSpecialization() async {
    try {
      final response = await homeApiServices.getSpecialization();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
