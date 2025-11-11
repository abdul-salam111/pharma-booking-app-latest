// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_customers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetCustomersModel _$GetCustomersModelFromJson(Map<String, dynamic> json) =>
    _GetCustomersModel(
      customerId: json['CustomerId'] as String?,
      actualTownId: (json['ActualTownId'] as num?)?.toInt(),
      customerName: json['CustomerName'] as String?,
      address: json['Address'] as String?,
      city: json['City'] as String?,
      contactPerson: json['ContactPerson'] as String?,
      phone1: json['Phone1'] as String?,
      phone2: json['Phone2'] as String?,
      phone3: json['Phone3'] as String?,
      gsm: json['GSM'] as String?,
      email: json['Email'] as String?,
      ntn: json['NTN'] as String?,
      stn: json['STN'] as String?,
      customerType: json['CustomerType'] as String?,
      cnic: json['CNIC'] as String?,
      id: (json['ID'] as num?)?.toInt(),
      tenantId: (json['TenantID'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GetCustomersModelToJson(_GetCustomersModel instance) =>
    <String, dynamic>{
      'CustomerId': instance.customerId,
      'ActualTownId': instance.actualTownId,
      'CustomerName': instance.customerName,
      'Address': instance.address,
      'City': instance.city,
      'ContactPerson': instance.contactPerson,
      'Phone1': instance.phone1,
      'Phone2': instance.phone2,
      'Phone3': instance.phone3,
      'GSM': instance.gsm,
      'Email': instance.email,
      'NTN': instance.ntn,
      'STN': instance.stn,
      'CustomerType': instance.customerType,
      'CNIC': instance.cnic,
      'ID': instance.id,
      'TenantID': instance.tenantId,
    };
