// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_orders_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SyncOrdersModel _$SyncOrdersModelFromJson(Map<String, dynamic> json) =>
    _SyncOrdersModel(
      deviceOrderGuid: json['DeviceOrderGuid'] as String?,
      customerId: (json['CustomerId'] as num?)?.toInt(),
      salesmanId: (json['SalesmanId'] as num?)?.toInt(),
      deviceOrderDateTime: json['DeviceOrderDateTime'] == null
          ? null
          : DateTime.parse(json['DeviceOrderDateTime'] as String),
      orderTotalAmt: (json['OrderTotalAmt'] as num?)?.toDouble(),
      orderRows: (json['OrderRows'] as List<dynamic>?)
          ?.map((e) => SyncOrderRow.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SyncOrdersModelToJson(_SyncOrdersModel instance) =>
    <String, dynamic>{
      'DeviceOrderGuid': instance.deviceOrderGuid,
      'CustomerId': instance.customerId,
      'SalesmanId': instance.salesmanId,
      'DeviceOrderDateTime': instance.deviceOrderDateTime?.toIso8601String(),
      'OrderTotalAmt': instance.orderTotalAmt,
      'OrderRows': instance.orderRows,
    };

_SyncOrderRow _$SyncOrderRowFromJson(Map<String, dynamic> json) =>
    _SyncOrderRow(
      productId: (json['ProductId'] as num?)?.toInt(),
      packingId: (json['PackingId'] as num?)?.toInt(),
      qtyPack: (json['QtyPack'] as num?)?.toInt(),
      qtyLose: (json['QtyLose'] as num?)?.toInt(),
      bonus: (json['Bonus'] as num?)?.toInt(),
      discRatio: (json['DiscRatio'] as num?)?.toDouble(),
      discValuePack: (json['DiscValuePack'] as num?)?.toDouble(),
      pricePack: (json['PricePack'] as num?)?.toDouble(),
      sTaxRatio: (json['STaxRatio'] as num?)?.toDouble(),
      rowTotal: (json['RowTotal'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SyncOrderRowToJson(_SyncOrderRow instance) =>
    <String, dynamic>{
      'ProductId': instance.productId,
      'PackingId': instance.packingId,
      'QtyPack': instance.qtyPack,
      'QtyLose': instance.qtyLose,
      'Bonus': instance.bonus,
      'DiscRatio': instance.discRatio,
      'DiscValuePack': instance.discValuePack,
      'PricePack': instance.pricePack,
      'STaxRatio': instance.sTaxRatio,
      'RowTotal': instance.rowTotal,
    };
