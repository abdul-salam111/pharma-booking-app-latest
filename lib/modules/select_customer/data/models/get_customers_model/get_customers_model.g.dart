// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_customers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetCustomersModel _$GetCustomersModelFromJson(Map<String, dynamic> json) =>
    _GetCustomersModel(
      id: (json['id'] as num?)?.toInt(),
      customerName: json['customerName'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      contactPerson: json['contactPerson'] as String?,
      phone1: json['phone1'] as String?,
      mobile: json['mobile'] as String?,
      email: json['email'] as String?,
      ntn: json['ntn'] as String?,
      stn: json['stn'] as String?,
      customerType: json['customerType'] as String?,
      ordersCount: (json['ordersCount'] as num?)?.toInt(),
      priceLevel: (json['priceLevel'] as num?)?.toInt(),
      isActive: json['isActive'] as bool?,
      creditDays: (json['creditDays'] as num?)?.toInt(),
      creditLimit: (json['creditLimit'] as num?)?.toInt(),
      currentBalance: (json['currentBalance'] as num?)?.toInt(),
      lastOrderDate: json['lastOrderDate'] == null
          ? null
          : DateTime.parse(json['lastOrderDate'] as String),
      lastPaymentDate: json['lastPaymentDate'] == null
          ? null
          : DateTime.parse(json['lastPaymentDate'] as String),
      isFiler: json['isFiler'] as bool?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      subArea: json['subArea'] == null
          ? null
          : SubArea.fromJson(json['subArea'] as Map<String, dynamic>),
      defaultPrice: (json['defaultPrice'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GetCustomersModelToJson(_GetCustomersModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customerName': instance.customerName,
      'address': instance.address,
      'city': instance.city,
      'contactPerson': instance.contactPerson,
      'phone1': instance.phone1,
      'mobile': instance.mobile,
      'email': instance.email,
      'ntn': instance.ntn,
      'stn': instance.stn,
      'customerType': instance.customerType,
      'ordersCount': instance.ordersCount,
      'priceLevel': instance.priceLevel,
      'isActive': instance.isActive,
      'creditDays': instance.creditDays,
      'creditLimit': instance.creditLimit,
      'currentBalance': instance.currentBalance,
      'lastOrderDate': instance.lastOrderDate?.toIso8601String(),
      'lastPaymentDate': instance.lastPaymentDate?.toIso8601String(),
      'isFiler': instance.isFiler,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'subArea': instance.subArea,
      'defaultPrice': instance.defaultPrice,
    };

_SubArea _$SubAreaFromJson(Map<String, dynamic> json) => _SubArea(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  areaId: (json['areaId'] as num?)?.toInt(),
);

Map<String, dynamic> _$SubAreaToJson(_SubArea instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'areaId': instance.areaId,
};
