// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_towns_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetTownsModel _$GetTownsModelFromJson(Map<String, dynamic> json) =>
    _GetTownsModel(
      actualSectorId: (json['ActualSectorId'] as num?)?.toInt(),
      actualTownId: (json['ActualTownId'] as num?)?.toInt(),
      townName: json['TownName'] as String?,
      id: (json['ID'] as num?)?.toInt(),
      tenantId: (json['TenantID'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GetTownsModelToJson(_GetTownsModel instance) =>
    <String, dynamic>{
      'ActualSectorId': instance.actualSectorId,
      'ActualTownId': instance.actualTownId,
      'TownName': instance.townName,
      'ID': instance.id,
      'TenantID': instance.tenantId,
    };
