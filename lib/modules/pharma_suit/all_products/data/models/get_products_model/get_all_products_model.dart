import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_all_products_model.freezed.dart';
part 'get_all_products_model.g.dart';

// Converter for List<Packing> to JSON String (for SQLite compatibility)
class PackingListConverter implements JsonConverter<List<Packing>?, dynamic> {
  const PackingListConverter();

  @override
  List<Packing>? fromJson(dynamic value) {
    if (value == null) return null;

    // If it's already a List (from API)
    if (value is List) {
      return value
          .map((e) => Packing.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    // If it's a String (from SQLite)
    if (value is String && value.isNotEmpty) {
      try {
        final decoded = jsonDecode(value) as List<dynamic>;
        return decoded
            .map((e) => Packing.fromJson(e as Map<String, dynamic>))
            .toList();
      } catch (e) {
        return null;
      }
    }

    return null;
  }

  @override
  dynamic toJson(List<Packing>? value) {
    if (value == null || value.isEmpty) return null;
    // Convert to JSON string for SQLite storage
    return jsonEncode(value.map((e) => e.toJson()).toList());
  }
}

// Custom converter for bool to int
class BoolToIntConverter implements JsonConverter<bool?, dynamic> {
  const BoolToIntConverter();

  @override
  bool? fromJson(dynamic json) {
    if (json == null) return null;
    if (json is bool) return json;
    if (json is int) return json == 1;
    if (json is String) {
      return json == '1' || json.toLowerCase() == 'true';
    }
    return false;
  }

  @override
  dynamic toJson(bool? object) {
    if (object == null) return null;
    return object ? 1 : 0;
  }
}

@freezed
abstract class GetAllProductsModel with _$GetAllProductsModel {
  const factory GetAllProductsModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "productName") String? productName,
    @JsonKey(name: "companyId") int? companyId,
    @JsonKey(name: "groupId") int? groupId,
    @JsonKey(name: "purPackingId") int? purPackingId,
    @JsonKey(name: "salPackingId") int? salPackingId,
    @JsonKey(name: "pricePackSal1") double? pricePackSal1,
    @JsonKey(name: "pricePackSal2") double? pricePackSal2,
    @JsonKey(name: "pricePackSal3") double? pricePackSal3,
    @JsonKey(name: "saleDiscRatio") double? saleDiscRatio,
    @JsonKey(name: "discRatioSal1") double? discRatioSal1,
    @JsonKey(name: "discRatioSal2") double? discRatioSal2,
    @JsonKey(name: "discRatioSal3") double? discRatioSal3,
    @JsonKey(name: "discValPackSal1") int? discValPackSal1,
    @JsonKey(name: "isValueB4Ratio")
    @BoolToIntConverter()
    bool? isValueB4Ratio,
    @JsonKey(name: "sTaxRatio") double? sTaxRatio,
    @JsonKey(name: "isSTaxOnBnsSal")
    @BoolToIntConverter()
    bool? isSTaxOnBnsSal,
    @JsonKey(name: "size") String? size,
    @JsonKey(name: "unit") String? unit,
    @JsonKey(name: "packSize") String? packSize,
    @JsonKey(name: "tradePrice") double? tradePrice,
    @JsonKey(name: "currentStock") int? currentStock,
    @JsonKey(name: "packings")
    @PackingListConverter()
    List<Packing>? packings,
  }) = _GetAllProductsModel;

  factory GetAllProductsModel.fromJson(Map<String, dynamic> json) =>
      _$GetAllProductsModelFromJson(json);
}

@freezed
abstract class Packing with _$Packing {
  const factory Packing({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "productId") int? productId,
    @JsonKey(name: "packingId") int? packingId,
    @JsonKey(name: "packingName") String? packingName,
    @JsonKey(name: "multiplier") int? multiplier,
  }) = _Packing;

  factory Packing.fromJson(Map<String, dynamic> json) =>
      _$PackingFromJson(json);
}