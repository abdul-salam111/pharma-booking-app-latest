// To parse this JSON data, do
//
//     final getAllProductsModel = getAllProductsModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_all_products_model.freezed.dart';
part 'get_all_products_model.g.dart';

List<GetAllProductsModel> getAllProductsModelFromJson(String str) => List<GetAllProductsModel>.from(json.decode(str).map((x) => GetAllProductsModel.fromJson(x)));

String getAllProductsModelToJson(List<GetAllProductsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class GetAllProductsModel with _$GetAllProductsModel {
    const factory GetAllProductsModel({
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "productName")
        String? productName,
        @JsonKey(name: "companyId")
        int? companyId,
        @JsonKey(name: "pricePackPur")
        int? pricePackPur,
        @JsonKey(name: "retailPrice")
        int? retailPrice,
        @JsonKey(name: "discRatioPur")
        int? discRatioPur,
        @JsonKey(name: "saleDiscRatio")
        int? saleDiscRatio,
        @JsonKey(name: "pricePackSal1")
        int? pricePackSal1,
        @JsonKey(name: "pricePackSal2")
        int? pricePackSal2,
        @JsonKey(name: "pricePackSal3")
        int? pricePackSal3,
        @JsonKey(name: "discRatioSal1")
        int? discRatioSal1,
        @JsonKey(name: "discRatioSal2")
        int? discRatioSal2,
        @JsonKey(name: "discRatioSal3")
        int? discRatioSal3,
        @JsonKey(name: "sTaxRatio")
        int? sTaxRatio,
        @JsonKey(name: "sTaxValPack")
        int? sTaxValPack,
        @JsonKey(name: "isSTaxOnBnsSal")
        bool? isSTaxOnBnsSal,
        @JsonKey(name: "displayOrder")
        int? displayOrder,
        @JsonKey(name: "tradePrice")
        int? tradePrice,
        @JsonKey(name: "packings")
        List<dynamic>? packings,
    }) = _GetAllProductsModel;

    factory GetAllProductsModel.fromJson(Map<String, dynamic> json) => _$GetAllProductsModelFromJson(json);
}
