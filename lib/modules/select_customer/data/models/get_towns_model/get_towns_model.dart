import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_towns_model.freezed.dart';
part 'get_towns_model.g.dart';

@freezed
abstract class GetTownsModel with _$GetTownsModel {
  const factory GetTownsModel({
    @JsonKey(name: 'ActualSectorId') int? actualSectorId,
    @JsonKey(name: 'ActualTownId') int? actualTownId,
    @JsonKey(name: 'TownName') String? townName,
    @JsonKey(name: 'ID') int? id,
    @JsonKey(name: 'TenantID') int? tenantId,
  }) = _GetTownsModel;

  factory GetTownsModel.fromJson(Map<String, dynamic> json) =>
      _$GetTownsModelFromJson(json);
}
