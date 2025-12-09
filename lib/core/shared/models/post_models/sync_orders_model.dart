import 'package:freezed_annotation/freezed_annotation.dart';
part 'sync_orders_model.freezed.dart';
part 'sync_orders_model.g.dart';

@freezed
abstract class SyncOrdersModel with _$SyncOrdersModel {
    const factory SyncOrdersModel({
        @JsonKey(name: "SalesmanOrderId")
        int? salesmanOrderId,
        @JsonKey(name: "DeviceOrderID")
        int? deviceOrderId,
        @JsonKey(name: "CustomerId")
        int? customerId,
        @JsonKey(name: "SalesmanId")
        int? salesmanId,
        @JsonKey(name: "DeviceOrderDateTime")
        DateTime? deviceOrderDateTime,
        @JsonKey(name: "OrderRows")
        List<SyncOrderRow>? orderRows,
    }) = _SyncOrdersModel;

    factory SyncOrdersModel.fromJson(Map<String, dynamic> json) => _$SyncOrdersModelFromJson(json);
}

@freezed
abstract class SyncOrderRow with _$SyncOrderRow {
    const factory SyncOrderRow({
        @JsonKey(name: "OrderId")
        int? orderId,
        @JsonKey(name: "ProductId")
        int? productId,
        @JsonKey(name: "Qty")
        int? qty,
        @JsonKey(name: "Bonus")
        int? bonus,
        @JsonKey(name: "DiscRatio")
        double? discRatio,
        @JsonKey(name: "Price")
        double? price,
    }) = _SyncOrderRow;

    factory SyncOrderRow.fromJson(Map<String, dynamic> json) => _$SyncOrderRowFromJson(json);
}
