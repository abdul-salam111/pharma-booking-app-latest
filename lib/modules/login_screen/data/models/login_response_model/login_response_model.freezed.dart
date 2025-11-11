// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginResponseModel {

@JsonKey(name: "UserId") String? get userId;@JsonKey(name: "SalesmanId") String? get salesmanId;@JsonKey(name: "UserName") String? get userName;@JsonKey(name: "CustomerKey") String? get customerKey;@JsonKey(name: "MaxDeviceOrderId") int? get maxDeviceOrderId;@JsonKey(name: "TenantID") String? get tenantId;@JsonKey(name: "Result") String? get result;
/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginResponseModelCopyWith<LoginResponseModel> get copyWith => _$LoginResponseModelCopyWithImpl<LoginResponseModel>(this as LoginResponseModel, _$identity);

  /// Serializes this LoginResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginResponseModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.salesmanId, salesmanId) || other.salesmanId == salesmanId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.customerKey, customerKey) || other.customerKey == customerKey)&&(identical(other.maxDeviceOrderId, maxDeviceOrderId) || other.maxDeviceOrderId == maxDeviceOrderId)&&(identical(other.tenantId, tenantId) || other.tenantId == tenantId)&&(identical(other.result, result) || other.result == result));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,salesmanId,userName,customerKey,maxDeviceOrderId,tenantId,result);

@override
String toString() {
  return 'LoginResponseModel(userId: $userId, salesmanId: $salesmanId, userName: $userName, customerKey: $customerKey, maxDeviceOrderId: $maxDeviceOrderId, tenantId: $tenantId, result: $result)';
}


}

/// @nodoc
abstract mixin class $LoginResponseModelCopyWith<$Res>  {
  factory $LoginResponseModelCopyWith(LoginResponseModel value, $Res Function(LoginResponseModel) _then) = _$LoginResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "UserId") String? userId,@JsonKey(name: "SalesmanId") String? salesmanId,@JsonKey(name: "UserName") String? userName,@JsonKey(name: "CustomerKey") String? customerKey,@JsonKey(name: "MaxDeviceOrderId") int? maxDeviceOrderId,@JsonKey(name: "TenantID") String? tenantId,@JsonKey(name: "Result") String? result
});




}
/// @nodoc
class _$LoginResponseModelCopyWithImpl<$Res>
    implements $LoginResponseModelCopyWith<$Res> {
  _$LoginResponseModelCopyWithImpl(this._self, this._then);

  final LoginResponseModel _self;
  final $Res Function(LoginResponseModel) _then;

/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = freezed,Object? salesmanId = freezed,Object? userName = freezed,Object? customerKey = freezed,Object? maxDeviceOrderId = freezed,Object? tenantId = freezed,Object? result = freezed,}) {
  return _then(_self.copyWith(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,salesmanId: freezed == salesmanId ? _self.salesmanId : salesmanId // ignore: cast_nullable_to_non_nullable
as String?,userName: freezed == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String?,customerKey: freezed == customerKey ? _self.customerKey : customerKey // ignore: cast_nullable_to_non_nullable
as String?,maxDeviceOrderId: freezed == maxDeviceOrderId ? _self.maxDeviceOrderId : maxDeviceOrderId // ignore: cast_nullable_to_non_nullable
as int?,tenantId: freezed == tenantId ? _self.tenantId : tenantId // ignore: cast_nullable_to_non_nullable
as String?,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginResponseModel].
extension LoginResponseModelPatterns on LoginResponseModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginResponseModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _LoginResponseModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _LoginResponseModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "UserId")  String? userId, @JsonKey(name: "SalesmanId")  String? salesmanId, @JsonKey(name: "UserName")  String? userName, @JsonKey(name: "CustomerKey")  String? customerKey, @JsonKey(name: "MaxDeviceOrderId")  int? maxDeviceOrderId, @JsonKey(name: "TenantID")  String? tenantId, @JsonKey(name: "Result")  String? result)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginResponseModel() when $default != null:
return $default(_that.userId,_that.salesmanId,_that.userName,_that.customerKey,_that.maxDeviceOrderId,_that.tenantId,_that.result);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "UserId")  String? userId, @JsonKey(name: "SalesmanId")  String? salesmanId, @JsonKey(name: "UserName")  String? userName, @JsonKey(name: "CustomerKey")  String? customerKey, @JsonKey(name: "MaxDeviceOrderId")  int? maxDeviceOrderId, @JsonKey(name: "TenantID")  String? tenantId, @JsonKey(name: "Result")  String? result)  $default,) {final _that = this;
switch (_that) {
case _LoginResponseModel():
return $default(_that.userId,_that.salesmanId,_that.userName,_that.customerKey,_that.maxDeviceOrderId,_that.tenantId,_that.result);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "UserId")  String? userId, @JsonKey(name: "SalesmanId")  String? salesmanId, @JsonKey(name: "UserName")  String? userName, @JsonKey(name: "CustomerKey")  String? customerKey, @JsonKey(name: "MaxDeviceOrderId")  int? maxDeviceOrderId, @JsonKey(name: "TenantID")  String? tenantId, @JsonKey(name: "Result")  String? result)?  $default,) {final _that = this;
switch (_that) {
case _LoginResponseModel() when $default != null:
return $default(_that.userId,_that.salesmanId,_that.userName,_that.customerKey,_that.maxDeviceOrderId,_that.tenantId,_that.result);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginResponseModel implements LoginResponseModel {
  const _LoginResponseModel({@JsonKey(name: "UserId") this.userId, @JsonKey(name: "SalesmanId") this.salesmanId, @JsonKey(name: "UserName") this.userName, @JsonKey(name: "CustomerKey") this.customerKey, @JsonKey(name: "MaxDeviceOrderId") this.maxDeviceOrderId, @JsonKey(name: "TenantID") this.tenantId, @JsonKey(name: "Result") this.result});
  factory _LoginResponseModel.fromJson(Map<String, dynamic> json) => _$LoginResponseModelFromJson(json);

@override@JsonKey(name: "UserId") final  String? userId;
@override@JsonKey(name: "SalesmanId") final  String? salesmanId;
@override@JsonKey(name: "UserName") final  String? userName;
@override@JsonKey(name: "CustomerKey") final  String? customerKey;
@override@JsonKey(name: "MaxDeviceOrderId") final  int? maxDeviceOrderId;
@override@JsonKey(name: "TenantID") final  String? tenantId;
@override@JsonKey(name: "Result") final  String? result;

/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginResponseModelCopyWith<_LoginResponseModel> get copyWith => __$LoginResponseModelCopyWithImpl<_LoginResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginResponseModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.salesmanId, salesmanId) || other.salesmanId == salesmanId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.customerKey, customerKey) || other.customerKey == customerKey)&&(identical(other.maxDeviceOrderId, maxDeviceOrderId) || other.maxDeviceOrderId == maxDeviceOrderId)&&(identical(other.tenantId, tenantId) || other.tenantId == tenantId)&&(identical(other.result, result) || other.result == result));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,salesmanId,userName,customerKey,maxDeviceOrderId,tenantId,result);

@override
String toString() {
  return 'LoginResponseModel(userId: $userId, salesmanId: $salesmanId, userName: $userName, customerKey: $customerKey, maxDeviceOrderId: $maxDeviceOrderId, tenantId: $tenantId, result: $result)';
}


}

/// @nodoc
abstract mixin class _$LoginResponseModelCopyWith<$Res> implements $LoginResponseModelCopyWith<$Res> {
  factory _$LoginResponseModelCopyWith(_LoginResponseModel value, $Res Function(_LoginResponseModel) _then) = __$LoginResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "UserId") String? userId,@JsonKey(name: "SalesmanId") String? salesmanId,@JsonKey(name: "UserName") String? userName,@JsonKey(name: "CustomerKey") String? customerKey,@JsonKey(name: "MaxDeviceOrderId") int? maxDeviceOrderId,@JsonKey(name: "TenantID") String? tenantId,@JsonKey(name: "Result") String? result
});




}
/// @nodoc
class __$LoginResponseModelCopyWithImpl<$Res>
    implements _$LoginResponseModelCopyWith<$Res> {
  __$LoginResponseModelCopyWithImpl(this._self, this._then);

  final _LoginResponseModel _self;
  final $Res Function(_LoginResponseModel) _then;

/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = freezed,Object? salesmanId = freezed,Object? userName = freezed,Object? customerKey = freezed,Object? maxDeviceOrderId = freezed,Object? tenantId = freezed,Object? result = freezed,}) {
  return _then(_LoginResponseModel(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,salesmanId: freezed == salesmanId ? _self.salesmanId : salesmanId // ignore: cast_nullable_to_non_nullable
as String?,userName: freezed == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String?,customerKey: freezed == customerKey ? _self.customerKey : customerKey // ignore: cast_nullable_to_non_nullable
as String?,maxDeviceOrderId: freezed == maxDeviceOrderId ? _self.maxDeviceOrderId : maxDeviceOrderId // ignore: cast_nullable_to_non_nullable
as int?,tenantId: freezed == tenantId ? _self.tenantId : tenantId // ignore: cast_nullable_to_non_nullable
as String?,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
