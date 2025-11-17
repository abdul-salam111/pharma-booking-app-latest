// To parse this JSON data, do
//
//     final getCustomersModel = getCustomersModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';


part 'get_customers_model.freezed.dart';
part 'get_customers_model.g.dart';


@freezed
abstract class GetCustomersModel with _$GetCustomersModel {
    const factory GetCustomersModel({
        @JsonKey(name: "subAreaImportId")
        int? subAreaImportId,
        @JsonKey(name: "customerName")
        String? customerName,
        @JsonKey(name: "city")
        String? city,
        @JsonKey(name: "contactPerson")
        String? contactPerson,
        @JsonKey(name: "phone1")
        String? phone1,
        @JsonKey(name: "email")
        String? email,
        @JsonKey(name: "customerType")
        String? customerType,
        @JsonKey(name: "ordersCount")
        int? ordersCount,
        @JsonKey(name: "isActive")
        bool? isActive,
        @JsonKey(name: "creditLimit")
        int? creditLimit,
        @JsonKey(name: "openingBalance")
        int? openingBalance,
        @JsonKey(name: "currentBalance")
        int? currentBalance,
        @JsonKey(name: "isFiler")
        bool? isFiler,
        @JsonKey(name: "tenantBusinessId")
        int? tenantBusinessId,
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "flgDeleted")
        bool? flgDeleted,
        @JsonKey(name: "createdOnUtc")
        DateTime? createdOnUtc,
        @JsonKey(name: "updatedOnUtc")
        DateTime? updatedOnUtc,
    }) = _GetCustomersModel;

    factory GetCustomersModel.fromJson(Map<String, dynamic> json) => _$GetCustomersModelFromJson(json);
}
