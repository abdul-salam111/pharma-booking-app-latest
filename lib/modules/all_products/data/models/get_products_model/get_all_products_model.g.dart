// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetAllProductsModel _$GetAllProductsModelFromJson(Map<String, dynamic> json) =>
    _GetAllProductsModel(
      companyId: (json['CompanyId'] as num?)?.toInt(),
      strCompanyId: json['StrCompanyId'] as String?,
      productId: json['ProductId'] as String?,
      groupId: (json['GroupId'] as num?)?.toInt(),
      productName: json['ProductName'] as String?,
      packing: json['Packing'] as String?,
      tradePrice: (json['TradePrice'] as num?)?.toDouble(),
      saleDiscRatio: (json['SaleDiscRatio'] as num?)?.toDouble(),
      currentStock: (json['CurrentStock'] as num?)?.toInt(),
      isInActive: json['IsInActive'] as bool?,
      id: (json['ID'] as num?)?.toInt(),
      tenantId: (json['TenantID'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GetAllProductsModelToJson(
  _GetAllProductsModel instance,
) => <String, dynamic>{
  'CompanyId': instance.companyId,
  'StrCompanyId': instance.strCompanyId,
  'ProductId': instance.productId,
  'GroupId': instance.groupId,
  'ProductName': instance.productName,
  'Packing': instance.packing,
  'TradePrice': instance.tradePrice,
  'SaleDiscRatio': instance.saleDiscRatio,
  'CurrentStock': instance.currentStock,
  'IsInActive': instance.isInActive,
  'ID': instance.id,
  'TenantID': instance.tenantId,
};
