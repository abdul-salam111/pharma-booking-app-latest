// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) =>
    _LoginResponseModel(
      token: json['token'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      salesman: json['salesman'] == null
          ? null
          : Salesman.fromJson(json['salesman'] as Map<String, dynamic>),
      tenantBusiness: json['tenantBusiness'] == null
          ? null
          : TenantBusiness.fromJson(
              json['tenantBusiness'] as Map<String, dynamic>,
            ),
      software: json['software'] == null
          ? null
          : Software.fromJson(json['software'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseModelToJson(_LoginResponseModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
      'salesman': instance.salesman,
      'tenantBusiness': instance.tenantBusiness,
      'software': instance.software,
    };

_Salesman _$SalesmanFromJson(Map<String, dynamic> json) => _Salesman(
  importAccountNo: json['importAccountNo'] as String?,
  salesmanName: json['salesmanName'] as String?,
  mobileNo: json['mobileNo'] as String?,
  cnic: json['cnic'] as String?,
  address: json['address'] as String?,
  city: json['city'] as String?,
  email: json['email'] as String?,
  isStockHolder: json['isStockHolder'] as bool?,
  commission: (json['commission'] as num?)?.toInt(),
  creditLimit: (json['creditLimit'] as num?)?.toInt(),
  isShowCurrentStock: json['isShowCurrentStock'] as bool?,
  password: json['password'] as String?,
  isAllowChangeBookingPrice: json['isAllowChangeBookingPrice'] as bool?,
  isAllowChangeBookingDisc: json['isAllowChangeBookingDisc'] as bool?,
  isAllowChangeBookingBonus: json['isAllowChangeBookingBonus'] as bool?,
  tenantBusinessId: (json['tenantBusinessId'] as num?)?.toInt(),
  id: (json['id'] as num?)?.toInt(),
);

Map<String, dynamic> _$SalesmanToJson(_Salesman instance) => <String, dynamic>{
  'importAccountNo': instance.importAccountNo,
  'salesmanName': instance.salesmanName,
  'mobileNo': instance.mobileNo,
  'cnic': instance.cnic,
  'address': instance.address,
  'city': instance.city,
  'email': instance.email,
  'isStockHolder': instance.isStockHolder,
  'commission': instance.commission,
  'creditLimit': instance.creditLimit,
  'isShowCurrentStock': instance.isShowCurrentStock,
  'password': instance.password,
  'isAllowChangeBookingPrice': instance.isAllowChangeBookingPrice,
  'isAllowChangeBookingDisc': instance.isAllowChangeBookingDisc,
  'isAllowChangeBookingBonus': instance.isAllowChangeBookingBonus,
  'tenantBusinessId': instance.tenantBusinessId,
  'id': instance.id,
};

_Software _$SoftwareFromJson(Map<String, dynamic> json) => _Software(
  softwareName: json['softwareName'] as String?,
  softwareKey: json['softwareKey'] as String?,
  dbPrefix: json['dbPrefix'] as String?,
  id: (json['id'] as num?)?.toInt(),
);

Map<String, dynamic> _$SoftwareToJson(_Software instance) => <String, dynamic>{
  'softwareName': instance.softwareName,
  'softwareKey': instance.softwareKey,
  'dbPrefix': instance.dbPrefix,
  'id': instance.id,
};

_TenantBusiness _$TenantBusinessFromJson(Map<String, dynamic> json) =>
    _TenantBusiness(
      businessName: json['businessName'] as String?,
      tenantId: (json['tenantId'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TenantBusinessToJson(_TenantBusiness instance) =>
    <String, dynamic>{
      'businessName': instance.businessName,
      'tenantId': instance.tenantId,
      'id': instance.id,
    };

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  userId: json['userId'] as String?,
  userName: json['userName'] as String?,
  displayName: json['displayName'] as String?,
  email: json['email'] as String?,
  emailConfirmed: json['emailConfirmed'] as bool?,
  phoneNumber: json['phoneNumber'] as String?,
  phoneNumberConfirmed: json['phoneNumberConfirmed'] as bool?,
  tenantId: (json['tenantId'] as num?)?.toInt(),
  salesmanId: (json['salesmanId'] as num?)?.toInt(),
  isSystemUser: json['isSystemUser'] as bool?,
  roles: json['roles'] as List<dynamic>?,
  permissions: json['permissions'] as List<dynamic>?,
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'userId': instance.userId,
  'userName': instance.userName,
  'displayName': instance.displayName,
  'email': instance.email,
  'emailConfirmed': instance.emailConfirmed,
  'phoneNumber': instance.phoneNumber,
  'phoneNumberConfirmed': instance.phoneNumberConfirmed,
  'tenantId': instance.tenantId,
  'salesmanId': instance.salesmanId,
  'isSystemUser': instance.isSystemUser,
  'roles': instance.roles,
  'permissions': instance.permissions,
};
