// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_companies_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetCompaniesModel _$GetCompaniesModelFromJson(Map<String, dynamic> json) =>
    _GetCompaniesModel(
      companyId: json['CompanyId'] as String?,
      companyName: json['CompanyName'] as String?,
      asmTitle: json['ASMTitle'],
      distributionCode: json['DistributionCode'],
      id: (json['ID'] as num?)?.toInt(),
      tenantId: (json['TenantID'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GetCompaniesModelToJson(_GetCompaniesModel instance) =>
    <String, dynamic>{
      'CompanyId': instance.companyId,
      'CompanyName': instance.companyName,
      'ASMTitle': instance.asmTitle,
      'DistributionCode': instance.distributionCode,
      'ID': instance.id,
      'TenantID': instance.tenantId,
    };
