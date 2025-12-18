// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetAllProductsModel _$GetAllProductsModelFromJson(
  Map<String, dynamic> json,
) => _GetAllProductsModel(
  id: (json['id'] as num?)?.toInt(),
  productName: json['productName'] as String?,
  companyId: (json['companyId'] as num?)?.toInt(),
  groupId: (json['groupId'] as num?)?.toInt(),
  purPackingId: (json['purPackingId'] as num?)?.toInt(),
  salPackingId: (json['salPackingId'] as num?)?.toInt(),
  pricePackSal1: (json['pricePackSal1'] as num?)?.toDouble(),
  pricePackSal2: (json['pricePackSal2'] as num?)?.toDouble(),
  pricePackSal3: (json['pricePackSal3'] as num?)?.toDouble(),
  saleDiscRatio: (json['saleDiscRatio'] as num?)?.toDouble(),
  discRatioSal1: (json['discRatioSal1'] as num?)?.toDouble(),
  discRatioSal2: (json['discRatioSal2'] as num?)?.toDouble(),
  discRatioSal3: (json['discRatioSal3'] as num?)?.toDouble(),
  discValPackSal1: (json['discValPackSal1'] as num?)?.toInt(),
  isValueB4Ratio: const BoolToIntConverter().fromJson(json['isValueB4Ratio']),
  sTaxRatio: (json['sTaxRatio'] as num?)?.toDouble(),
  isSTaxOnBnsSal: const BoolToIntConverter().fromJson(json['isSTaxOnBnsSal']),
  size: json['size'] as String?,
  unit: json['unit'] as String?,
  packSize: json['packSize'] as String?,
  tradePrice: (json['tradePrice'] as num?)?.toDouble(),
  currentStock: (json['currentStock'] as num?)?.toInt(),
  packings: const PackingListConverter().fromJson(json['packings']),
);

Map<String, dynamic> _$GetAllProductsModelToJson(
  _GetAllProductsModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'productName': instance.productName,
  'companyId': instance.companyId,
  'groupId': instance.groupId,
  'purPackingId': instance.purPackingId,
  'salPackingId': instance.salPackingId,
  'pricePackSal1': instance.pricePackSal1,
  'pricePackSal2': instance.pricePackSal2,
  'pricePackSal3': instance.pricePackSal3,
  'saleDiscRatio': instance.saleDiscRatio,
  'discRatioSal1': instance.discRatioSal1,
  'discRatioSal2': instance.discRatioSal2,
  'discRatioSal3': instance.discRatioSal3,
  'discValPackSal1': instance.discValPackSal1,
  'isValueB4Ratio': const BoolToIntConverter().toJson(instance.isValueB4Ratio),
  'sTaxRatio': instance.sTaxRatio,
  'isSTaxOnBnsSal': const BoolToIntConverter().toJson(instance.isSTaxOnBnsSal),
  'size': instance.size,
  'unit': instance.unit,
  'packSize': instance.packSize,
  'tradePrice': instance.tradePrice,
  'currentStock': instance.currentStock,
  'packings': const PackingListConverter().toJson(instance.packings),
};

_Packing _$PackingFromJson(Map<String, dynamic> json) => _Packing(
  id: (json['id'] as num?)?.toInt(),
  productId: (json['productId'] as num?)?.toInt(),
  packingId: (json['packingId'] as num?)?.toInt(),
  packingName: json['packingName'] as String?,
  multiplier: (json['multiplier'] as num?)?.toInt(),
);

Map<String, dynamic> _$PackingToJson(_Packing instance) => <String, dynamic>{
  'id': instance.id,
  'productId': instance.productId,
  'packingId': instance.packingId,
  'packingName': instance.packingName,
  'multiplier': instance.multiplier,
};
