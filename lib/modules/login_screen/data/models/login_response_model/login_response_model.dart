import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@freezed
abstract class LoginResponseModel with _$LoginResponseModel {
  const factory LoginResponseModel({
    @JsonKey(name: "UserId") String? userId,
    @JsonKey(name: "SalesmanId") String? salesmanId,
    @JsonKey(name: "UserName") String? userName,
    @JsonKey(name: "CustomerKey") String? customerKey,
    @JsonKey(name: "MaxDeviceOrderId") int? maxDeviceOrderId,
    @JsonKey(name: "TenantID") String? tenantId,
    @JsonKey(name: "Result") String? result,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}
