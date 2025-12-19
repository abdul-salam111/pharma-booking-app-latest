// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetOrderResponse _$GetOrderResponseFromJson(Map<String, dynamic> json) =>
    _GetOrderResponse(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      totalOrders: (json['totalOrders'] as num?)?.toInt(),
      successfulOrders: (json['successfulOrders'] as num?)?.toInt(),
      failedOrders: (json['failedOrders'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetOrderResponseToJson(_GetOrderResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'totalOrders': instance.totalOrders,
      'successfulOrders': instance.successfulOrders,
      'failedOrders': instance.failedOrders,
      'results': instance.results,
    };

_Result _$ResultFromJson(Map<String, dynamic> json) => _Result(
  id: (json['id'] as num?)?.toInt(),
  tenantOrderId: (json['tenantOrderId'] as num?)?.toInt(),
  deviceOrderGuid: json['deviceOrderGuid'] as String?,
  orderDateTime: json['orderDateTime'] == null
      ? null
      : DateTime.parse(json['orderDateTime'] as String),
  syncDateTime: json['syncDateTime'] == null
      ? null
      : DateTime.parse(json['syncDateTime'] as String),
  errors: json['errors'] as List<dynamic>?,
);

Map<String, dynamic> _$ResultToJson(_Result instance) => <String, dynamic>{
  'id': instance.id,
  'tenantOrderId': instance.tenantOrderId,
  'deviceOrderGuid': instance.deviceOrderGuid,
  'orderDateTime': instance.orderDateTime?.toIso8601String(),
  'syncDateTime': instance.syncDateTime?.toIso8601String(),
  'errors': instance.errors,
};
