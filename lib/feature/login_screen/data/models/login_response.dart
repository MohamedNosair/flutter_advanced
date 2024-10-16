import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';
//? dart run build_runner build --delete-conflicting-outputs

@JsonSerializable()
class LoginResponse {
  bool? code;
  int? status;
  String? message;
  @JsonKey(name: 'data')
  UserData? userData;
  LoginResponse({this.code, this.status, this.message, this.userData});
  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);
  
}

@JsonSerializable()
class UserData {
  String? token;
  @JsonKey(name: 'username')
  String? userName;
  UserData({this.userName, this.token});
  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);

}
