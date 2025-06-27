import 'package:dio/dio.dart';
import 'package:flutter_advance/core/networking/api_constants.dart';
import 'package:flutter_advance/feature/home_screen/data/apis/home_api_constant.dart';
import 'package:flutter_advance/feature/home_screen/data/model/specialization_response_model.dart';
import 'package:retrofit/retrofit.dart';
part 'home_api_services.g.dart';
@RestApi(baseUrl: ApiConstants.baseUrl)

abstract class HomeApiServices {
 factory HomeApiServices(Dio dio) = _HomeApiServices;

 @GET(HomeApiConstants.specializationEP)
 
 Future<SpecializationsResponseModel> getSpecialization();

  // Add your API methods here
  // For example:
  // @GET('/endpoint')
  // Future<YourResponseType> getData();
}
