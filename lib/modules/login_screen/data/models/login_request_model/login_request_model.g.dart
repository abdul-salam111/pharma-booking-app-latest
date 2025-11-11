// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginRequestModel _$LoginRequestModelFromJson(Map<String, dynamic> json) =>
    _LoginRequestModel(
      tenantId: (json['TenantId'] as num?)?.toInt(),
      password: json['Password'] as String?,
      customerKey: json['CustomerKey'] as String,
      mobileNo: json['MobileNo'] as String,
    );

Map<String, dynamic> _$LoginRequestModelToJson(_LoginRequestModel instance) =>
    <String, dynamic>{
      'TenantId': instance.tenantId,
      'Password': instance.password,
      'CustomerKey': instance.customerKey,
      'MobileNo': instance.mobileNo,
    };
