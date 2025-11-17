// To parse this JSON data, do
//
//     final getCompaniesModel = getCompaniesModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_companies_model.freezed.dart';
part 'get_companies_model.g.dart';

List<GetCompaniesModel> getCompaniesModelFromJson(String str) => List<GetCompaniesModel>.from(json.decode(str).map((x) => GetCompaniesModel.fromJson(x)));

String getCompaniesModelToJson(List<GetCompaniesModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class GetCompaniesModel with _$GetCompaniesModel {
    const factory GetCompaniesModel({
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "name")
        String? name,
    }) = _GetCompaniesModel;

    factory GetCompaniesModel.fromJson(Map<String, dynamic> json) => _$GetCompaniesModelFromJson(json);
}
