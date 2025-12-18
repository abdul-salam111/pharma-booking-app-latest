
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_salesman_model.freezed.dart';
part 'get_salesman_model.g.dart';

@freezed
abstract class GetSalesmanModel with _$GetSalesmanModel {
  const factory GetSalesmanModel({
    @JsonKey(name: "SalesmanId") String? salesmanId,
    @JsonKey(name: "SalesmanName") String? salesmanName,
    @JsonKey(name: "City") String? city,
    @JsonKey(name: "MobileNumber") String? mobileNumber,
    @JsonKey(name: "Password") String? password,
    @JsonKey(name: "AllowChangePrice") bool? allowChangePrice,
    @JsonKey(name: "AllowChangeDiscount") bool? allowChangeDiscount,
    @JsonKey(name: "AllowChangeBonus") bool? allowChangeBonus,
    @JsonKey(name: "ID") int? id,
    @JsonKey(name: "TenantID") int? tenantId,
  }) = _GetSalesmanModel;

  factory GetSalesmanModel.fromJson(Map<String, dynamic> json) =>
      _$GetSalesmanModelFromJson(json);
}


