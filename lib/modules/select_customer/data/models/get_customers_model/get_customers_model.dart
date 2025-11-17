import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_customers_model.freezed.dart';
part 'get_customers_model.g.dart';

@freezed
abstract class GetCustomersModel with _$GetCustomersModel {
  const factory GetCustomersModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "customerName") String? customerName,
    @JsonKey(name: "ordSubAreaId") int? ordSubAreaId,
    @JsonKey(name: "city") String? city,
    @JsonKey(name: "contactPerson") String? contactPerson,
    @JsonKey(name: "phone1") String? phone1,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "customerType") String? customerType,
    @JsonKey(name: "ordersCount") int? ordersCount,
    @JsonKey(name: "isActive") bool? isActive,
    @JsonKey(name: "creditLimit") double? creditLimit,
    @JsonKey(name: "openingBalance") double? openingBalance,
    @JsonKey(name: "currentBalance") double? currentBalance,
    @JsonKey(name: "isFiler") bool? isFiler,
  }) = _GetCustomersModel;

  factory GetCustomersModel.fromJson(Map<String, dynamic> json) =>
      _$GetCustomersModelFromJson(json);
 
}
