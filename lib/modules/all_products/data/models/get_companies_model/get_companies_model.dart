
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_companies_model.freezed.dart';
part 'get_companies_model.g.dart';

@freezed
abstract class GetCompaniesModel with _$GetCompaniesModel {
  const factory GetCompaniesModel({
    @JsonKey(name: "CompanyId") String? companyId,
    @JsonKey(name: "CompanyName") String? companyName,
    @JsonKey(name: "ASMTitle") dynamic asmTitle,
    @JsonKey(name: "DistributionCode") dynamic distributionCode,
    @JsonKey(name: "ID") int? id,
    @JsonKey(name: "TenantID") int? tenantId,
  }) = _GetCompaniesModel;

  factory GetCompaniesModel.fromJson(Map<String, dynamic> json) =>
      _$GetCompaniesModelFromJson(json);
}


