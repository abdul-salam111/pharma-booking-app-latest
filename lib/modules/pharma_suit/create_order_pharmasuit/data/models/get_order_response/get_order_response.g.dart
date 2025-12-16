// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetOrderResponse _$GetOrderResponseFromJson(Map<String, dynamic> json) =>
    _GetOrderResponse(
      id: (json['id'] as num?)?.toInt(),
      tenantOrderId: (json['tenantOrderId'] as num?)?.toInt(),
      orderDateTime: json['orderDateTime'] == null
          ? null
          : DateTime.parse(json['orderDateTime'] as String),
      deviceOrderID: (json['deviceOrderID'] as num?)?.toInt(),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$GetOrderResponseToJson(_GetOrderResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tenantOrderId': instance.tenantOrderId,
      'orderDateTime': instance.orderDateTime?.toIso8601String(),
      'deviceOrderID': instance.deviceOrderID,
      'errors': instance.errors,
    };
