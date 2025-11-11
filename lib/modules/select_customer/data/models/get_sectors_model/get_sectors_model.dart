import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_sectors_model.freezed.dart';
part 'get_sectors_model.g.dart';

@freezed
abstract class GetSectorsModel with _$GetSectorsModel {
  const factory GetSectorsModel({
    @JsonKey(name: "ActualSectorId") int? actualSectorId,
    @JsonKey(name: "SectorName") String? sectorName,
    @JsonKey(name: "ID") int? id,
    @JsonKey(name: "TenantID") int? tenantId,
  }) = _GetSectorsModel;

  factory GetSectorsModel.fromJson(Map<String, dynamic> json) =>
      _$GetSectorsModelFromJson(json);
}

extension GetSectorsModelList on List<dynamic> {
  /// Converts a list of JSON objects into a list of [GetSectorsModel].
  List<GetSectorsModel> toGetSectorsModelList() =>
      map((json) => GetSectorsModel.fromJson(json)).toList();
}
