// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetAllProductsModel _$GetAllProductsModelFromJson(Map<String, dynamic> json) =>
    _GetAllProductsModel(
      id: (json['id'] as num?)?.toInt(),
      productName: json['productName'] as String?,
      companyId: (json['companyId'] as num?)?.toInt(),
      pricePackPur: json['pricePackPur'] as num?,
      retailPrice: json['retailPrice'] as num?,
      discRatioPur: json['discRatioPur'] as num?,
      saleDiscRatio: json['saleDiscRatio'] as num?,
      pricePackSal1: json['pricePackSal1'] as num?,
      pricePackSal2: json['pricePackSal2'] as num?,
      pricePackSal3: json['pricePackSal3'] as num?,
      discRatioSal1: json['discRatioSal1'] as num?,
      discRatioSal2: json['discRatioSal2'] as num?,
      discRatioSal3: json['discRatioSal3'] as num?,
      sTaxRatio: json['sTaxRatio'] as num?,
      sTaxValPack: json['sTaxValPack'] as num?,
      isSTaxOnBnsSal: _boolFromJson(json['isSTaxOnBnsSal']),
      displayOrder: (json['displayOrder'] as num?)?.toInt(),
      tradePrice: json['tradePrice'] as num?,
      packings: _packingsFromJson(json['packings']),
    );

Map<String, dynamic> _$GetAllProductsModelToJson(
  _GetAllProductsModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'productName': instance.productName,
  'companyId': instance.companyId,
  'pricePackPur': instance.pricePackPur,
  'retailPrice': instance.retailPrice,
  'discRatioPur': instance.discRatioPur,
  'saleDiscRatio': instance.saleDiscRatio,
  'pricePackSal1': instance.pricePackSal1,
  'pricePackSal2': instance.pricePackSal2,
  'pricePackSal3': instance.pricePackSal3,
  'discRatioSal1': instance.discRatioSal1,
  'discRatioSal2': instance.discRatioSal2,
  'discRatioSal3': instance.discRatioSal3,
  'sTaxRatio': instance.sTaxRatio,
  'sTaxValPack': instance.sTaxValPack,
  'isSTaxOnBnsSal': _boolToJson(instance.isSTaxOnBnsSal),
  'displayOrder': instance.displayOrder,
  'tradePrice': instance.tradePrice,
  'packings': _packingsToJson(instance.packings),
};
