// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_customers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetCustomersModel _$GetCustomersModelFromJson(Map<String, dynamic> json) =>
    _GetCustomersModel(
      subAreaImportId: (json['subAreaImportId'] as num?)?.toInt(),
      customerName: json['customerName'] as String?,
      city: json['city'] as String?,
      contactPerson: json['contactPerson'] as String?,
      phone1: json['phone1'] as String?,
      email: json['email'] as String?,
      customerType: json['customerType'] as String?,
      ordersCount: (json['ordersCount'] as num?)?.toInt(),
      isActive: json['isActive'] as bool?,
      creditLimit: (json['creditLimit'] as num?)?.toInt(),
      openingBalance: (json['openingBalance'] as num?)?.toInt(),
      currentBalance: (json['currentBalance'] as num?)?.toInt(),
      isFiler: json['isFiler'] as bool?,
      tenantBusinessId: (json['tenantBusinessId'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      flgDeleted: json['flgDeleted'] as bool?,
      createdOnUtc: json['createdOnUtc'] == null
          ? null
          : DateTime.parse(json['createdOnUtc'] as String),
      updatedOnUtc: json['updatedOnUtc'] == null
          ? null
          : DateTime.parse(json['updatedOnUtc'] as String),
    );

Map<String, dynamic> _$GetCustomersModelToJson(_GetCustomersModel instance) =>
    <String, dynamic>{
      'subAreaImportId': instance.subAreaImportId,
      'customerName': instance.customerName,
      'city': instance.city,
      'contactPerson': instance.contactPerson,
      'phone1': instance.phone1,
      'email': instance.email,
      'customerType': instance.customerType,
      'ordersCount': instance.ordersCount,
      'isActive': instance.isActive,
      'creditLimit': instance.creditLimit,
      'openingBalance': instance.openingBalance,
      'currentBalance': instance.currentBalance,
      'isFiler': instance.isFiler,
      'tenantBusinessId': instance.tenantBusinessId,
      'id': instance.id,
      'flgDeleted': instance.flgDeleted,
      'createdOnUtc': instance.createdOnUtc?.toIso8601String(),
      'updatedOnUtc': instance.updatedOnUtc?.toIso8601String(),
    };
