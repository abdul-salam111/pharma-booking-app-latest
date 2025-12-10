import 'package:freezed_annotation/freezed_annotation.dart';


part 'get_customers_model.freezed.dart';
part 'get_customers_model.g.dart';

@freezed
abstract class GetCustomersModel with _$GetCustomersModel {
    const factory GetCustomersModel({
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "customerName")
        String? customerName,
        @JsonKey(name: "address")
        String? address,
        @JsonKey(name: "city")
        String? city,
        @JsonKey(name: "contactPerson")
        String? contactPerson,
        @JsonKey(name: "phone1")
        String? phone1,
        @JsonKey(name: "mobile")
        String? mobile,
        @JsonKey(name: "email")
        String? email,
        @JsonKey(name: "ntn")
        String? ntn,
        @JsonKey(name: "stn")
        String? stn,
        @JsonKey(name: "customerType")
        String? customerType,
        @JsonKey(name: "ordersCount")
        int? ordersCount,
        @JsonKey(name: "priceLevel")
        int? priceLevel,
        @JsonKey(name: "isActive")
        bool? isActive,
        @JsonKey(name: "creditDays")
        int? creditDays,
        @JsonKey(name: "creditLimit")
        int? creditLimit,
        @JsonKey(name: "currentBalance")
        int? currentBalance,
        @JsonKey(name: "lastOrderDate")
        DateTime? lastOrderDate,
        @JsonKey(name: "lastPaymentDate")
        DateTime? lastPaymentDate,
        @JsonKey(name: "isFiler")
        bool? isFiler,
        @JsonKey(name: "latitude")
        double? latitude,
        @JsonKey(name: "longitude")
        double? longitude,
        @JsonKey(name: "subArea")
        SubArea? subArea,
        @JsonKey(name: "defaultPrice")
        int? defaultPrice,
    }) = _GetCustomersModel;

    factory GetCustomersModel.fromJson(Map<String, dynamic> json) => _$GetCustomersModelFromJson(json);
}

@freezed
abstract class SubArea with _$SubArea {
    const factory SubArea({
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "areaId")
        int? areaId,
    }) = _SubArea;

    factory SubArea.fromJson(Map<String, dynamic> json) => _$SubAreaFromJson(json);
}
extension GetCustomersModelDbX on GetCustomersModel {
  /// Convert GetCustomersModel to database JSON format
  Map<String, dynamic> toDbJson() {
    return {
      'id': id,
      'customerName': customerName,
      'address': address,
      'city': city,
      'contactPerson': contactPerson,
      'phone1': phone1,
      'mobile': mobile,
      'email': email,
      'ntn': ntn,
      'stn': stn,
      'customerType': customerType,
      'ordersCount': ordersCount,
      'priceLevel': priceLevel,
      'isActive': isActive == true ? 1 : 0,
      'creditDays': creditDays,
      'creditLimit': creditLimit,
      'currentBalance': currentBalance,
      'lastOrderDate': lastOrderDate?.toIso8601String(),
      'lastPaymentDate': lastPaymentDate?.toIso8601String(),
      'isFiler': isFiler == true ? 1 : 0,
      'latitude': latitude,
      'longitude': longitude,
      'ordSubAreaId': subArea?.id,
      'subAreaName': subArea?.name,
      'areaId': subArea?.areaId,
      'defaultPrice': defaultPrice,
    };
  }

  /// Create GetCustomersModel from database JSON format
  static GetCustomersModel fromDbJson(Map<String, dynamic> json) {
    return GetCustomersModel(
      id: json['id'] as int?,
      customerName: json['customerName'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      contactPerson: json['contactPerson'] as String?,
      phone1: json['phone1'] as String?,
      mobile: json['mobile'] as String?,
      email: json['email'] as String?,
      ntn: json['ntn'] as String?,
      stn: json['stn'] as String?,
      customerType: json['customerType'] as String?,
      ordersCount: json['ordersCount'] as int?,
      priceLevel: json['priceLevel'] as int?,
      isActive: json['isActive'] == 1,
      creditDays: json['creditDays'] as int?,
      creditLimit: json['creditLimit'] as int?,
      currentBalance: json['currentBalance'] as int?,
      lastOrderDate: json['lastOrderDate'] != null
          ? DateTime.tryParse(json['lastOrderDate'] as String)
          : null,
      lastPaymentDate: json['lastPaymentDate'] != null
          ? DateTime.tryParse(json['lastPaymentDate'] as String)
          : null,
      isFiler: json['isFiler'] == 1,
      latitude: json['latitude'] as double?,
      longitude: json['longitude'] as double?,
      subArea: json['ordSubAreaId'] != null
          ? SubArea(
              id: json['ordSubAreaId'] as int?,
              name: json['subAreaName'] as String?,
              areaId: json['areaId'] as int?,
            )
          : null,
      defaultPrice: json['defaultPrice'] as int?,
    );
  }
}
