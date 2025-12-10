import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_sub_area_list_model.freezed.dart';
part 'get_sub_area_list_model.g.dart';

@freezed
abstract class GetSubAreaListModel with _$GetSubAreaListModel {
    const factory GetSubAreaListModel({
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "areaId")
        int? areaId,
    }) = _GetSubAreaListModel;

    factory GetSubAreaListModel.fromJson(Map<String, dynamic> json) => _$GetSubAreaListModelFromJson(json);
}
