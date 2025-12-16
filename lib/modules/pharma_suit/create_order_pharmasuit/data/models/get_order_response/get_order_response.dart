import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_order_response.freezed.dart';
part 'get_order_response.g.dart';

@freezed
abstract class GetOrderResponse with _$GetOrderResponse {
  const factory GetOrderResponse({
    int? id,
    int? tenantOrderId,
    DateTime? orderDateTime,
    int? deviceOrderID,
    List<String>? errors,
  }) = _GetOrderResponse;

  factory GetOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$GetOrderResponseFromJson(json);
}
