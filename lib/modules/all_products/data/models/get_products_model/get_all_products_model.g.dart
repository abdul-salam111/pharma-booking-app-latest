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
      retailPrice: (json['retailPrice'] as num?)?.toInt(),
      tradePrice: (json['tradePrice'] as num?)?.toInt(),
      saleDiscRatio: (json['saleDiscRatio'] as num?)?.toInt(),
      pricePackSal1: (json['pricePackSal1'] as num?)?.toInt(),
      pricePackSal2: (json['pricePackSal2'] as num?)?.toInt(),
      pricePackSal3: (json['pricePackSal3'] as num?)?.toInt(),
      discRatioSal1: (json['discRatioSal1'] as num?)?.toInt(),
      discRatioSal2: (json['discRatioSal2'] as num?)?.toInt(),
      discRatioSal3: (json['discRatioSal3'] as num?)?.toInt(),
      sTaxRatio: (json['sTaxRatio'] as num?)?.toInt(),
      isSTaxOnBnsSal: const IntToBoolConverter().fromJson(
        json['isSTaxOnBnsSal'],
      ),
      packSize: json['packSize'] as String?,
      packings: json['packings'] as List<dynamic>?,
    );

Map<String, dynamic> _$GetAllProductsModelToJson(
  _GetAllProductsModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'productName': instance.productName,
  'companyId': instance.companyId,
  'retailPrice': instance.retailPrice,
  'tradePrice': instance.tradePrice,
  'saleDiscRatio': instance.saleDiscRatio,
  'pricePackSal1': instance.pricePackSal1,
  'pricePackSal2': instance.pricePackSal2,
  'pricePackSal3': instance.pricePackSal3,
  'discRatioSal1': instance.discRatioSal1,
  'discRatioSal2': instance.discRatioSal2,
  'discRatioSal3': instance.discRatioSal3,
  'sTaxRatio': instance.sTaxRatio,
  'isSTaxOnBnsSal': const IntToBoolConverter().toJson(instance.isSTaxOnBnsSal),
  'packSize': instance.packSize,
  'packings': instance.packings,
};
