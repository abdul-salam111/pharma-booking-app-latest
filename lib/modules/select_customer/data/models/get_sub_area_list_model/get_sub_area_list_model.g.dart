// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_sub_area_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetSubAreaListModel _$GetSubAreaListModelFromJson(Map<String, dynamic> json) =>
    _GetSubAreaListModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      ordAreaId: (json['ordAreaId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GetSubAreaListModelToJson(
  _GetSubAreaListModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'ordAreaId': instance.ordAreaId,
};
