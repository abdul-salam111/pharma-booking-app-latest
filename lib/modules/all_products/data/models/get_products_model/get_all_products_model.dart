import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_products_model.freezed.dart';
part 'get_all_products_model.g.dart';

// Converter for bool to int (for SQLite compatibility)
class IntToBoolConverter implements JsonConverter<bool?, dynamic> {
  const IntToBoolConverter();

  @override
  bool? fromJson(dynamic value) {
    if (value == null) return null;
    if (value is bool) return value;
    if (value is int) return value == 1;
    if (value is String) return value == '1' || value.toLowerCase() == 'true';
    return null;
  }

  @override
  dynamic toJson(bool? value) {
    if (value == null) return null;
    return value ? 1 : 0;
  }
}

// Converter for List to JSON String (for SQLite compatibility)
class ListToStringConverter implements JsonConverter<List<dynamic>?, dynamic> {
  const ListToStringConverter();

  @override
  List<dynamic>? fromJson(dynamic value) {
    if (value == null) return null;
    if (value is List) return value;
    if (value is String && value.isNotEmpty) {
      try {
        return jsonDecode(value) as List<dynamic>;
      } catch (e) {
        return null;
      }
    }
    return null;
  }

  @override
  dynamic toJson(List<dynamic>? value) {
    if (value == null || value.isEmpty) return null;
    return jsonEncode(value);
  }
}

@freezed
abstract class GetAllProductsModel with _$GetAllProductsModel {
  const factory GetAllProductsModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "productName") String? productName,
    @JsonKey(name: "companyId") int? companyId,
    @JsonKey(name: "retailPrice") int? retailPrice,
    @JsonKey(name: "tradePrice") int? tradePrice,
    @JsonKey(name: "saleDiscRatio") int? saleDiscRatio,
    @JsonKey(name: "pricePackSal1") int? pricePackSal1,
    @JsonKey(name: "pricePackSal2") int? pricePackSal2,
    @JsonKey(name: "pricePackSal3") int? pricePackSal3,
    @JsonKey(name: "discRatioSal1") int? discRatioSal1,
    @JsonKey(name: "discRatioSal2") int? discRatioSal2,
    @JsonKey(name: "discRatioSal3") int? discRatioSal3,
    @JsonKey(name: "sTaxRatio") int? sTaxRatio,
    @JsonKey(name: "isSTaxOnBnsSal")
    @IntToBoolConverter()
    bool? isSTaxOnBnsSal,
    @JsonKey(name: "packSize") String? packSize,
    @JsonKey(name: "packings")
    @ListToStringConverter() // Add this converter
    List<dynamic>? packings,
  }) = _GetAllProductsModel;

  factory GetAllProductsModel.fromJson(Map<String, dynamic> json) =>
      _$GetAllProductsModelFromJson(json);
}