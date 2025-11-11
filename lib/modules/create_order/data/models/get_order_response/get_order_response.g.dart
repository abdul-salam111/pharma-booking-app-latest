// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetOrderResponse _$GetOrderResponseFromJson(Map<String, dynamic> json) =>
    _GetOrderResponse(
      tenantOrderId: (json['TenantOrderId'] as num?)?.toInt(),
      salesmanOrderId: (json['SalesmanOrderId'] as num?)?.toInt(),
      deviceOrderId: (json['DeviceOrderID'] as num?)?.toInt(),
      customerId: (json['CustomerId'] as num?)?.toInt(),
      salesmanId: (json['SalesmanId'] as num?)?.toInt(),
      orderTime: json['OrderTime'] == null
          ? null
          : DateTime.parse(json['OrderTime'] as String),
      syncDate: json['SyncDate'] == null
          ? null
          : DateTime.parse(json['SyncDate'] as String),
      orderRows:
          (json['OrderRows'] as List<dynamic>?)
              ?.map((e) => OrderRow.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      id: (json['ID'] as num?)?.toInt(),
      tenantId: (json['TenantID'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GetOrderResponseToJson(_GetOrderResponse instance) =>
    <String, dynamic>{
      'TenantOrderId': instance.tenantOrderId,
      'SalesmanOrderId': instance.salesmanOrderId,
      'DeviceOrderID': instance.deviceOrderId,
      'CustomerId': instance.customerId,
      'SalesmanId': instance.salesmanId,
      'OrderTime': instance.orderTime?.toIso8601String(),
      'SyncDate': instance.syncDate?.toIso8601String(),
      'OrderRows': instance.orderRows,
      'ID': instance.id,
      'TenantID': instance.tenantId,
    };

_OrderRow _$OrderRowFromJson(Map<String, dynamic> json) => _OrderRow(
  orderId: (json['OrderId'] as num?)?.toInt(),
  productId: (json['ProductId'] as num?)?.toInt(),
  tenantProdId: (json['TenantProdId'] as num?)?.toInt(),
  qty: (json['Qty'] as num?)?.toInt(),
  bonus: (json['Bonus'] as num?)?.toInt(),
  discRatio: (json['DiscRatio'] as num?)?.toDouble(),
  price: (json['Price'] as num?)?.toDouble(),
  id: (json['ID'] as num?)?.toInt(),
  tenantId: (json['TenantID'] as num?)?.toInt(),
);

Map<String, dynamic> _$OrderRowToJson(_OrderRow instance) => <String, dynamic>{
  'OrderId': instance.orderId,
  'ProductId': instance.productId,
  'TenantProdId': instance.tenantProdId,
  'Qty': instance.qty,
  'Bonus': instance.bonus,
  'DiscRatio': instance.discRatio,
  'Price': instance.price,
  'ID': instance.id,
  'TenantID': instance.tenantId,
};
