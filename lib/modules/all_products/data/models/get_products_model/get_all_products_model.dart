// To parse this JSON data, do
//
//     final getAllProductsModel = getAllProductsModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_all_products_model.freezed.dart';
part 'get_all_products_model.g.dart';

List<GetAllProductsModel> getAllProductsModelFromJson(String str) =>
    List<GetAllProductsModel>.from(
      json.decode(str).map((x) => GetAllProductsModel.fromJson(x)),
    );

String getAllProductsModelToJson(List<GetAllProductsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

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
    num? pricePackPur,

    @JsonKey(name: "retailPrice")
    num? retailPrice,

    @JsonKey(name: "discRatioPur")
    num? discRatioPur,

    @JsonKey(name: "saleDiscRatio")
    num? saleDiscRatio,

    @JsonKey(name: "pricePackSal1")
    num? pricePackSal1,

    @JsonKey(name: "pricePackSal2")
    num? pricePackSal2,

    @JsonKey(name: "pricePackSal3")
    num? pricePackSal3,

    @JsonKey(name: "discRatioSal1")
    num? discRatioSal1,

    @JsonKey(name: "discRatioSal2")
    num? discRatioSal2,

    @JsonKey(name: "discRatioSal3")
    num? discRatioSal3,

    @JsonKey(name: "sTaxRatio")
    num? sTaxRatio,

    @JsonKey(name: "sTaxValPack")
    num? sTaxValPack,

    /// Handles both API bool and SQLite integer (0/1)
    @JsonKey(
      name: "isSTaxOnBnsSal",
      fromJson: _boolFromJson,
      toJson: _boolToJson,
    )
    bool? isSTaxOnBnsSal,

    @JsonKey(name: "displayOrder")
    int? displayOrder,

    @JsonKey(name: "tradePrice")
    num? tradePrice,

    /// packings can be list (API) or JSON string (SQLite)
    @JsonKey(
      name: "packings",
      fromJson: _packingsFromJson,
      toJson: _packingsToJson,
    )
    List<dynamic>? packings,
  }) = _GetAllProductsModel;

  factory GetAllProductsModel.fromJson(Map<String, dynamic> json) =>
      _$GetAllProductsModelFromJson(json);
}

/// -------------------------------
/// CUSTOM PARSERS
/// -------------------------------

bool _boolFromJson(dynamic value) {
  if (value == null) return false;

  if (value is bool) return value;        // API case
  if (value is int) return value == 1;    // SQLite case
  return false;
}

int _boolToJson(bool? value) {
  return (value ?? false) ? 1 : 0;
}

/// -------------------------------
/// PACKINGS PARSER
/// -------------------------------

List<dynamic> _packingsFromJson(dynamic value) {
  if (value == null) return [];

  if (value is List) return value; // API

  if (value is String) {
    try {
      return jsonDecode(value); // SQLite string
    } catch (_) {
      return [];
    }
  }

  return [];
}

String _packingsToJson(List<dynamic>? value) {
  return jsonEncode(value ?? []);
}
