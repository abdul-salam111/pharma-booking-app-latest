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
        @JsonKey(name: "salesman")
        Salesman? salesman,
        @JsonKey(name: "tenantBusiness")
        TenantBusiness? tenantBusiness,
        @JsonKey(name: "software")
        Software? software,
    }) = _LoginResponseModel;

    factory LoginResponseModel.fromJson(Map<String, dynamic> json) => _$LoginResponseModelFromJson(json);
}

@freezed
abstract class Salesman with _$Salesman {
    const factory Salesman({
        @JsonKey(name: "importAccountNo")
        String? importAccountNo,
        @JsonKey(name: "salesmanName")
        String? salesmanName,
        @JsonKey(name: "mobileNo")
        String? mobileNo,
        @JsonKey(name: "cnic")
        String? cnic,
        @JsonKey(name: "address")
        String? address,
        @JsonKey(name: "city")
        String? city,
        @JsonKey(name: "email")
        String? email,
        @JsonKey(name: "isStockHolder")
        bool? isStockHolder,
        @JsonKey(name: "commission")
        int? commission,
        @JsonKey(name: "creditLimit")
        int? creditLimit,
        @JsonKey(name: "isShowCurrentStock")
        bool? isShowCurrentStock,
        @JsonKey(name: "password")
        String? password,
        @JsonKey(name: "isAllowChangeBookingPrice")
        bool? isAllowChangeBookingPrice,
        @JsonKey(name: "isAllowChangeBookingDisc")
        bool? isAllowChangeBookingDisc,
        @JsonKey(name: "isAllowChangeBookingBonus")
        bool? isAllowChangeBookingBonus,
        @JsonKey(name: "tenantBusinessId")
        int? tenantBusinessId,
        @JsonKey(name: "id")
        int? id,
    }) = _Salesman;

    factory Salesman.fromJson(Map<String, dynamic> json) => _$SalesmanFromJson(json);
}

@freezed
abstract class Software with _$Software {
    const factory Software({
        @JsonKey(name: "softwareName")
        String? softwareName,
        @JsonKey(name: "softwareKey")
        String? softwareKey,
        @JsonKey(name: "dbPrefix")
        String? dbPrefix,
        @JsonKey(name: "id")
        int? id,
    }) = _Software;

    factory Software.fromJson(Map<String, dynamic> json) => _$SoftwareFromJson(json);
}

@freezed
abstract class TenantBusiness with _$TenantBusiness {
    const factory TenantBusiness({
        @JsonKey(name: "businessName")
        String? businessName,
        @JsonKey(name: "tenantId")
        int? tenantId,
        @JsonKey(name: "id")
        int? id,
    }) = _TenantBusiness;

    factory TenantBusiness.fromJson(Map<String, dynamic> json) => _$TenantBusinessFromJson(json);
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
        @JsonKey(name: "email")
        String? email,
        @JsonKey(name: "emailConfirmed")
        bool? emailConfirmed,
        @JsonKey(name: "phoneNumber")
        String? phoneNumber,
        @JsonKey(name: "phoneNumberConfirmed")
        bool? phoneNumberConfirmed,
        @JsonKey(name: "tenantId")
        int? tenantId,
        @JsonKey(name: "salesmanId")
        int? salesmanId,
        @JsonKey(name: "isSystemUser")
        bool? isSystemUser,
        @JsonKey(name: "roles")
        List<dynamic>? roles,
        @JsonKey(name: "permissions")
        List<dynamic>? permissions,
    }) = _User;

    factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
