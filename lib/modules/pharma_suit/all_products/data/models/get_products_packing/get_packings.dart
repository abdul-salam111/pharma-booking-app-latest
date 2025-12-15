import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_packings.freezed.dart';
part 'get_packings.g.dart';

@freezed
abstract class GetPackings with _$GetPackings {
  const factory GetPackings({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "packingName") String? packingName,
    @JsonKey(name: "abbrevation") String? abbrevation,
  }) = _GetPackings;

  factory GetPackings.fromJson(Map<String, dynamic> json) =>
      _$GetPackingsFromJson(json);
}
