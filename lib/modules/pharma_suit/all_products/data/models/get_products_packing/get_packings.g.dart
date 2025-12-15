// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_packings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetPackings _$GetPackingsFromJson(Map<String, dynamic> json) => _GetPackings(
  id: (json['id'] as num?)?.toInt(),
  packingName: json['packingName'] as String?,
  abbrevation: json['abbrevation'] as String?,
);

Map<String, dynamic> _$GetPackingsToJson(_GetPackings instance) =>
    <String, dynamic>{
      'id': instance.id,
      'packingName': instance.packingName,
      'abbrevation': instance.abbrevation,
    };
