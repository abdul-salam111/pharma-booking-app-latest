import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@freezed
abstract class LoginResponseModel with _$LoginResponseModel {
    const factory LoginResponseModel({
        @JsonKey(name: "token")
        String? token,
        @JsonKey(name: "user")
        User? user,
    }) = _LoginResponseModel;

    factory LoginResponseModel.fromJson(Map<String, dynamic> json) => _$LoginResponseModelFromJson(json);
}

@freezed
abstract class User with _$User {
    const factory User({
        @JsonKey(name: "userId")
        String? userId,
        @JsonKey(name: "userName")
        String? userName,
        @JsonKey(name: "displayName")
        String? displayName,
        @JsonKey(name: "tenantId")
        int? tenantId,
        @JsonKey(name: "tenantBusinessId")
        int? tenantBusinessId,
        @JsonKey(name: "salesmanId")
        int? salesmanId,
        @JsonKey(name: "isSystemUser")
        bool? isSystemUser,
    }) = _User;

    factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
