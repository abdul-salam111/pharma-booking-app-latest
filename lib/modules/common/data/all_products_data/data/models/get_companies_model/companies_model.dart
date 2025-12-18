import 'package:freezed_annotation/freezed_annotation.dart';


part 'companies_model.freezed.dart';
part 'companies_model.g.dart';

@freezed
abstract class CompaniesModel with _$CompaniesModel {
    const factory CompaniesModel({
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "name")
        String? name,
    }) = _CompaniesModel;

    factory CompaniesModel.fromJson(Map<String, dynamic> json) => _$CompaniesModelFromJson(json);
}
