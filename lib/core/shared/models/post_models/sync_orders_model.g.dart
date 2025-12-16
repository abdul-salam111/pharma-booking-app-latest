// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_orders_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SyncOrdersModel _$SyncOrdersModelFromJson(Map<String, dynamic> json) =>
    _SyncOrdersModel(
      deviceOrderId: (json['DeviceOrderID'] as num?)?.toInt(),
      customerId: (json['CustomerId'] as num?)?.toInt(),
      salesmanId: (json['SalesmanId'] as num?)?.toInt(),
      deviceOrderDateTime: json['DeviceOrderDateTime'] == null
          ? null
          : DateTime.parse(json['DeviceOrderDateTime'] as String),
      orderRows: (json['OrderRows'] as List<dynamic>?)
          ?.map((e) => SyncOrderRow.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SyncOrdersModelToJson(_SyncOrdersModel instance) =>
    <String, dynamic>{
      'DeviceOrderID': instance.deviceOrderId,
      'CustomerId': instance.customerId,
      'SalesmanId': instance.salesmanId,
      'DeviceOrderDateTime': instance.deviceOrderDateTime?.toIso8601String(),
      'OrderRows': instance.orderRows,
    };

_SyncOrderRow _$SyncOrderRowFromJson(Map<String, dynamic> json) =>
    _SyncOrderRow(
      orderId: (json['OrderId'] as num?)?.toInt(),
      productId: (json['ProductId'] as num?)?.toInt(),
      qty: (json['Qty'] as num?)?.toInt(),
      bonus: (json['Bonus'] as num?)?.toInt(),
      discRatio: (json['DiscRatio'] as num?)?.toDouble(),
      price: (json['Price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SyncOrderRowToJson(_SyncOrderRow instance) =>
    <String, dynamic>{
      'OrderId': instance.orderId,
      'ProductId': instance.productId,
      'Qty': instance.qty,
      'Bonus': instance.bonus,
      'DiscRatio': instance.discRatio,
      'Price': instance.price,
    };
