// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_salesman_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetSalesmanModel _$GetSalesmanModelFromJson(Map<String, dynamic> json) =>
    _GetSalesmanModel(
      salesmanId: json['SalesmanId'] as String?,
      salesmanName: json['SalesmanName'] as String?,
      city: json['City'] as String?,
      mobileNumber: json['MobileNumber'] as String?,
      password: json['Password'] as String?,
      allowChangePrice: json['AllowChangePrice'] as bool?,
      allowChangeDiscount: json['AllowChangeDiscount'] as bool?,
      allowChangeBonus: json['AllowChangeBonus'] as bool?,
      id: (json['ID'] as num?)?.toInt(),
      tenantId: (json['TenantID'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GetSalesmanModelToJson(_GetSalesmanModel instance) =>
    <String, dynamic>{
      'SalesmanId': instance.salesmanId,
      'SalesmanName': instance.salesmanName,
      'City': instance.city,
      'MobileNumber': instance.mobileNumber,
      'Password': instance.password,
      'AllowChangePrice': instance.allowChangePrice,
      'AllowChangeDiscount': instance.allowChangeDiscount,
      'AllowChangeBonus': instance.allowChangeBonus,
      'ID': instance.id,
      'TenantID': instance.tenantId,
    };
