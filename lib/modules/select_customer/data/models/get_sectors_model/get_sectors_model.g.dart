// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_sectors_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetSectorsModel _$GetSectorsModelFromJson(Map<String, dynamic> json) =>
    _GetSectorsModel(
      actualSectorId: (json['ActualSectorId'] as num?)?.toInt(),
      sectorName: json['SectorName'] as String?,
      id: (json['ID'] as num?)?.toInt(),
      tenantId: (json['TenantID'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GetSectorsModelToJson(_GetSectorsModel instance) =>
    <String, dynamic>{
      'ActualSectorId': instance.actualSectorId,
      'SectorName': instance.sectorName,
      'ID': instance.id,
      'TenantID': instance.tenantId,
    };
