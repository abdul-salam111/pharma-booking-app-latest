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
    );

Map<String, dynamic> _$LoginResponseModelToJson(_LoginResponseModel instance) =>
    <String, dynamic>{'token': instance.token, 'user': instance.user};

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  userId: json['userId'] as String?,
  userName: json['userName'] as String?,
  displayName: json['displayName'] as String?,
  tenantId: (json['tenantId'] as num?)?.toInt(),
  tenantBusinessId: (json['tenantBusinessId'] as num?)?.toInt(),
  salesmanId: (json['salesmanId'] as num?)?.toInt(),
  isSystemUser: json['isSystemUser'] as bool?,
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'userId': instance.userId,
  'userName': instance.userName,
  'displayName': instance.displayName,
  'tenantId': instance.tenantId,
  'tenantBusinessId': instance.tenantBusinessId,
  'salesmanId': instance.salesmanId,
  'isSystemUser': instance.isSystemUser,
};
