import 'package:freezed_annotation/freezed_annotation.dart';

part 'sync_orders_model.freezed.dart';
part 'sync_orders_model.g.dart';

@freezed
abstract class SyncOrdersModel with _$SyncOrdersModel {
  const factory SyncOrdersModel({
    @JsonKey(name: "DeviceOrderGuid")
    String? deviceOrderGuid,

    @JsonKey(name: "CustomerId")
    int? customerId,

    @JsonKey(name: "SalesmanId")
    int? salesmanId,

    @JsonKey(name: "DeviceOrderDateTime")
    DateTime? deviceOrderDateTime,

    @JsonKey(name: "OrderTotalAmt")
    double? orderTotalAmt,

    @JsonKey(name: "OrderRows")
    List<SyncOrderRow>? orderRows,
  }) = _SyncOrdersModel;

  factory SyncOrdersModel.fromJson(Map<String, dynamic> json) =>
      _$SyncOrdersModelFromJson(json);
}

@freezed
abstract class SyncOrderRow with _$SyncOrderRow {
  const factory SyncOrderRow({
    @JsonKey(name: "ProductId")
    int? productId,

    @JsonKey(name: "PackingId")
    int? packingId,

    @JsonKey(name: "QtyPack")
    int? qtyPack,

    @JsonKey(name: "QtyLose")
    int? qtyLose,

    @JsonKey(name: "Bonus")
    int? bonus,

    @JsonKey(name: "DiscRatio")
    double? discRatio,

    @JsonKey(name: "DiscValuePack")
    double? discValuePack,

    @JsonKey(name: "PricePack")
    double? pricePack,

    @JsonKey(name: "STaxRatio")
    double? sTaxRatio,

    @JsonKey(name: "RowTotal")
    double? rowTotal,
  }) = _SyncOrderRow;

  factory SyncOrderRow.fromJson(Map<String, dynamic> json) =>
      _$SyncOrderRowFromJson(json);
}
