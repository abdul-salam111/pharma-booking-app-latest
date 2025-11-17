import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_area_list_model.freezed.dart';
part 'get_area_list_model.g.dart';

@freezed
abstract class GetAreaListModel with _$GetAreaListModel {
    const factory GetAreaListModel({
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "name")
        String? name,
    }) = _GetAreaListModel;

    factory GetAreaListModel.fromJson(Map<String, dynamic> json) => _$GetAreaListModelFromJson(json);
}
