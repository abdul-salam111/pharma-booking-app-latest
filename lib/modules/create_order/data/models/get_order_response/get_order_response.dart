import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_order_response.freezed.dart';
part 'get_order_response.g.dart';

@freezed
abstract class GetOrderResponse with _$GetOrderResponse {
  const factory GetOrderResponse({
    @JsonKey(name: 'TenantOrderId') int? tenantOrderId,
    @JsonKey(name: 'SalesmanOrderId') int? salesmanOrderId,
    @JsonKey(name: 'DeviceOrderID') int? deviceOrderId,
    @JsonKey(name: 'CustomerId') int? customerId,
    @JsonKey(name: 'SalesmanId') int? salesmanId,
    @JsonKey(name: 'OrderTime') DateTime? orderTime,
    @JsonKey(name: 'SyncDate') DateTime? syncDate,
    @JsonKey(name: 'OrderRows') @Default([]) List<OrderRow> orderRows,
    @JsonKey(name: 'ID') int? id,
    @JsonKey(name: 'TenantID') int? tenantId,
  }) = _GetOrderResponse;

  factory GetOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$GetOrderResponseFromJson(json);
}

@freezed
abstract class OrderRow with _$OrderRow {
  const factory OrderRow({
    @JsonKey(name: 'OrderId') int? orderId,
    @JsonKey(name: 'ProductId') int? productId,
    @JsonKey(name: 'TenantProdId') int? tenantProdId,
    @JsonKey(name: 'Qty') int? qty,
    @JsonKey(name: 'Bonus') int? bonus,
    @JsonKey(name: 'DiscRatio') double? discRatio,
    @JsonKey(name: 'Price') double? price,
    @JsonKey(name: 'ID') int? id,
    @JsonKey(name: 'TenantID') int? tenantId,
  }) = _OrderRow;

  factory OrderRow.fromJson(Map<String, dynamic> json) =>
      _$OrderRowFromJson(json);
}
