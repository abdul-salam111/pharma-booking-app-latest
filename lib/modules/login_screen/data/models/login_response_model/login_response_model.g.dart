// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) =>
    _LoginResponseModel(
      userId: json['UserId'] as String?,
      salesmanId: json['SalesmanId'] as String?,
      userName: json['UserName'] as String?,
      customerKey: json['CustomerKey'] as String?,
      maxDeviceOrderId: (json['MaxDeviceOrderId'] as num?)?.toInt(),
      tenantId: json['TenantID'] as String?,
      result: json['Result'] as String?,
    );

Map<String, dynamic> _$LoginResponseModelToJson(_LoginResponseModel instance) =>
    <String, dynamic>{
      'UserId': instance.userId,
      'SalesmanId': instance.salesmanId,
      'UserName': instance.userName,
      'CustomerKey': instance.customerKey,
      'MaxDeviceOrderId': instance.maxDeviceOrderId,
      'TenantID': instance.tenantId,
      'Result': instance.result,
    };
