// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_companies_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetCompaniesModel _$GetCompaniesModelFromJson(Map<String, dynamic> json) =>
    _GetCompaniesModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$GetCompaniesModelToJson(_GetCompaniesModel instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
