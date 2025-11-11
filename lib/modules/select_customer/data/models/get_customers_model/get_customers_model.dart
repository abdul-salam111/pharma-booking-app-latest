import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_customers_model.freezed.dart';
part 'get_customers_model.g.dart';

@freezed
abstract class GetCustomersModel with _$GetCustomersModel {
  const factory GetCustomersModel({
    @JsonKey(name: 'CustomerId') String? customerId,
    @JsonKey(name: 'ActualTownId') int? actualTownId,
    @JsonKey(name: 'CustomerName') String? customerName,
    @JsonKey(name: 'Address') String? address,
    @JsonKey(name: 'City') String? city,
    @JsonKey(name: 'ContactPerson') String? contactPerson,
    @JsonKey(name: 'Phone1') String? phone1,
    @JsonKey(name: 'Phone2') String? phone2,
    @JsonKey(name: 'Phone3') String? phone3,
    @JsonKey(name: 'GSM') String? gsm,
    @JsonKey(name: 'Email') String? email,
    @JsonKey(name: 'NTN') String? ntn,
    @JsonKey(name: 'STN') String? stn,
    @JsonKey(name: 'CustomerType') String? customerType,
    @JsonKey(name: 'CNIC') String? cnic,
    @JsonKey(name: 'ID') int? id,
    @JsonKey(name: 'TenantID') int? tenantId,
  }) = _GetCustomersModel;

  factory GetCustomersModel.fromJson(Map<String, dynamic> json) =>
      _$GetCustomersModelFromJson(json);
}

extension GetCustomersModelList on List<dynamic> {
  /// Converts a list of JSON objects into a list of [GetCustomersModel].
  List<GetCustomersModel> toGetCustomersModelList() =>
      map((json) => GetCustomersModel.fromJson(json)).toList();
}
