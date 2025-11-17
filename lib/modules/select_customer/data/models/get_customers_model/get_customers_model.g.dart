// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_customers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetCustomersModel _$GetCustomersModelFromJson(Map<String, dynamic> json) =>
    _GetCustomersModel(
      id: (json['id'] as num?)?.toInt(),
      customerName: json['customerName'] as String?,
      ordSubAreaId: (json['ordSubAreaId'] as num?)?.toInt(),
      city: json['city'] as String?,
      contactPerson: json['contactPerson'] as String?,
      phone1: json['phone1'] as String?,
      email: json['email'] as String?,
      customerType: json['customerType'] as String?,
      ordersCount: (json['ordersCount'] as num?)?.toInt(),
      isActive: json['isActive'] as bool?,
      creditLimit: (json['creditLimit'] as num?)?.toDouble(),
      openingBalance: (json['openingBalance'] as num?)?.toDouble(),
      currentBalance: (json['currentBalance'] as num?)?.toDouble(),
      isFiler: json['isFiler'] as bool?,
    );

Map<String, dynamic> _$GetCustomersModelToJson(_GetCustomersModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customerName': instance.customerName,
      'ordSubAreaId': instance.ordSubAreaId,
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
    };
