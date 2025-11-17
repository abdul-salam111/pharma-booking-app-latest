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
      pricePackPur: (json['pricePackPur'] as num?)?.toInt(),
      retailPrice: (json['retailPrice'] as num?)?.toInt(),
      discRatioPur: (json['discRatioPur'] as num?)?.toInt(),
      saleDiscRatio: (json['saleDiscRatio'] as num?)?.toInt(),
      pricePackSal1: (json['pricePackSal1'] as num?)?.toInt(),
      pricePackSal2: (json['pricePackSal2'] as num?)?.toInt(),
      pricePackSal3: (json['pricePackSal3'] as num?)?.toInt(),
      discRatioSal1: (json['discRatioSal1'] as num?)?.toInt(),
      discRatioSal2: (json['discRatioSal2'] as num?)?.toInt(),
      discRatioSal3: (json['discRatioSal3'] as num?)?.toInt(),
      sTaxRatio: (json['sTaxRatio'] as num?)?.toInt(),
      sTaxValPack: (json['sTaxValPack'] as num?)?.toInt(),
      isSTaxOnBnsSal: json['isSTaxOnBnsSal'] as bool?,
      displayOrder: (json['displayOrder'] as num?)?.toInt(),
      tradePrice: (json['tradePrice'] as num?)?.toInt(),
      packings: json['packings'] as List<dynamic>?,
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
  'isSTaxOnBnsSal': instance.isSTaxOnBnsSal,
  'displayOrder': instance.displayOrder,
  'tradePrice': instance.tradePrice,
  'packings': instance.packings,
};
