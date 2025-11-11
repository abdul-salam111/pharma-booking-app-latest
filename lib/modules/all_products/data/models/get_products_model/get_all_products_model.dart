import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_products_model.freezed.dart';
part 'get_all_products_model.g.dart';

@freezed
abstract class GetAllProductsModel with _$GetAllProductsModel {
  const factory GetAllProductsModel({
    @JsonKey(name: 'CompanyId') int? companyId,
    @JsonKey(name: 'StrCompanyId') String? strCompanyId,
    @JsonKey(name: 'ProductId') String? productId,
    @JsonKey(name: 'GroupId') int? groupId,
    @JsonKey(name: 'ProductName') String? productName,
    @JsonKey(name: 'Packing') String? packing,
    @JsonKey(name: 'TradePrice') double? tradePrice,
    @JsonKey(name: 'SaleDiscRatio') double? saleDiscRatio,
    @JsonKey(name: 'CurrentStock') int? currentStock,
    @JsonKey(name: 'IsInActive') bool? isInActive,
    @JsonKey(name: 'ID') int? id,
    @JsonKey(name: 'TenantID') int? tenantId,
  }) = _GetAllProductsModel;

  factory GetAllProductsModel.fromJson(Map<String, dynamic> json) =>
      _$GetAllProductsModelFromJson(json);
}



