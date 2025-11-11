import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request_model.freezed.dart';
part 'login_request_model.g.dart';

@freezed
abstract class LoginRequestModel with _$LoginRequestModel {
  const factory LoginRequestModel({
    @JsonKey(name: "TenantId") int? tenantId,
    @JsonKey(name: "Password") String? password,
    @JsonKey(name: "CustomerKey") required String customerKey,
    @JsonKey(name: "MobileNo") required String mobileNo,
  }) = _LoginRequestModel;

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestModelFromJson(json);
}
