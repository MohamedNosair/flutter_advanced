import 'package:json_annotation/json_annotation.dart';

part 'sign_up_response.g.dart';
//? dart run build_runner build --delete-conflicting-outputs

@JsonSerializable()
class SignUpResponse {
  int? code;
  bool? status;
  String? message;
  @JsonKey(name: 'data')
  UserData? userData;
  SignUpResponse({this.code, this.status, this.message, this.userData});
  factory SignUpResponse.fromJson(Map<String, dynamic> json) => _$SignUpResponseFromJson(json);
  
}

@JsonSerializable()
class UserData {
  String? token;
  @JsonKey(name: 'username')
  String? userName;
  UserData({this.userName, this.token});
  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);

}
