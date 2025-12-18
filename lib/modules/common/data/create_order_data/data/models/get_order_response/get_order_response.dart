import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_order_response.freezed.dart';
part 'get_order_response.g.dart';

@freezed
abstract class GetOrderResponse with _$GetOrderResponse {
    const factory GetOrderResponse({
        @JsonKey(name: "success")
        bool? success,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "totalOrders")
        int? totalOrders,
        @JsonKey(name: "successfulOrders")
        int? successfulOrders,
        @JsonKey(name: "failedOrders")
        int? failedOrders,
        @JsonKey(name: "results")
        List<Result>? results,
    }) = _GetOrderResponse;

    factory GetOrderResponse.fromJson(Map<String, dynamic> json) => _$GetOrderResponseFromJson(json);
}

@freezed
abstract class Result with _$Result {
    const factory Result({
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "tenantOrderId")
        int? tenantOrderId,
        @JsonKey(name: "deviceOrderGuid")
        String? deviceOrderGuid,
        @JsonKey(name: "orderDateTime")
        DateTime? orderDateTime,
        @JsonKey(name: "syncDateTime")
        DateTime? syncDateTime,
        @JsonKey(name: "errors")
        List<dynamic>? errors,
    }) = _Result;

    factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
