// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'companies_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompaniesModel _$CompaniesModelFromJson(Map<String, dynamic> json) =>
    _CompaniesModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CompaniesModelToJson(_CompaniesModel instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
