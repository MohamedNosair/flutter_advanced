import 'package:flutter_advance/core/helpers/extensions.dart';
import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';

//? dart run build_runner build --delete-conflicting-outputs
//* to build the json_serializable file
@JsonSerializable()
class ApiErrorModel {
  final int? code;
  final String? message;

  //// بيتغير علي حسب كل مشروع والتاني
  @JsonKey(name: 'data')
  final Map<String, dynamic>? errors;
////
  ApiErrorModel({ this.errors, this.code, this.message});
  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);
  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);




//// the function change every project 
  String getAllErrorsMessage() {
  if (errors.isNullOrEmpty())return message ?? "Unknown Error Occurred";

  return  errors!.entries.map((element) {
      final value = element.value;
      return value;
    }).join('\n').replaceAll(RegExp(r'[\[\]\(\)\{\}]'), '');
     
  }



}
