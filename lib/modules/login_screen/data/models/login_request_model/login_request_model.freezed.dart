// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginRequestModel {

@JsonKey(name: "TenantId") int? get tenantId;@JsonKey(name: "Password") String? get password;@JsonKey(name: "CustomerKey") String get customerKey;@JsonKey(name: "MobileNo") String get mobileNo;
/// Create a copy of LoginRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginRequestModelCopyWith<LoginRequestModel> get copyWith => _$LoginRequestModelCopyWithImpl<LoginRequestModel>(this as LoginRequestModel, _$identity);

  /// Serializes this LoginRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginRequestModel&&(identical(other.tenantId, tenantId) || other.tenantId == tenantId)&&(identical(other.password, password) || other.password == password)&&(identical(other.customerKey, customerKey) || other.customerKey == customerKey)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tenantId,password,customerKey,mobileNo);

@override
String toString() {
  return 'LoginRequestModel(tenantId: $tenantId, password: $password, customerKey: $customerKey, mobileNo: $mobileNo)';
}


}

/// @nodoc
abstract mixin class $LoginRequestModelCopyWith<$Res>  {
  factory $LoginRequestModelCopyWith(LoginRequestModel value, $Res Function(LoginRequestModel) _then) = _$LoginRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "TenantId") int? tenantId,@JsonKey(name: "Password") String? password,@JsonKey(name: "CustomerKey") String customerKey,@JsonKey(name: "MobileNo") String mobileNo
});




}
/// @nodoc
class _$LoginRequestModelCopyWithImpl<$Res>
    implements $LoginRequestModelCopyWith<$Res> {
  _$LoginRequestModelCopyWithImpl(this._self, this._then);

  final LoginRequestModel _self;
  final $Res Function(LoginRequestModel) _then;

/// Create a copy of LoginRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tenantId = freezed,Object? password = freezed,Object? customerKey = null,Object? mobileNo = null,}) {
  return _then(_self.copyWith(
tenantId: freezed == tenantId ? _self.tenantId : tenantId // ignore: cast_nullable_to_non_nullable
as int?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,customerKey: null == customerKey ? _self.customerKey : customerKey // ignore: cast_nullable_to_non_nullable
as String,mobileNo: null == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginRequestModel].
extension LoginRequestModelPatterns on LoginRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _LoginRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _LoginRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "TenantId")  int? tenantId, @JsonKey(name: "Password")  String? password, @JsonKey(name: "CustomerKey")  String customerKey, @JsonKey(name: "MobileNo")  String mobileNo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginRequestModel() when $default != null:
return $default(_that.tenantId,_that.password,_that.customerKey,_that.mobileNo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "TenantId")  int? tenantId, @JsonKey(name: "Password")  String? password, @JsonKey(name: "CustomerKey")  String customerKey, @JsonKey(name: "MobileNo")  String mobileNo)  $default,) {final _that = this;
switch (_that) {
case _LoginRequestModel():
return $default(_that.tenantId,_that.password,_that.customerKey,_that.mobileNo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "TenantId")  int? tenantId, @JsonKey(name: "Password")  String? password, @JsonKey(name: "CustomerKey")  String customerKey, @JsonKey(name: "MobileNo")  String mobileNo)?  $default,) {final _that = this;
switch (_that) {
case _LoginRequestModel() when $default != null:
return $default(_that.tenantId,_that.password,_that.customerKey,_that.mobileNo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginRequestModel implements LoginRequestModel {
  const _LoginRequestModel({@JsonKey(name: "TenantId") this.tenantId, @JsonKey(name: "Password") this.password, @JsonKey(name: "CustomerKey") required this.customerKey, @JsonKey(name: "MobileNo") required this.mobileNo});
  factory _LoginRequestModel.fromJson(Map<String, dynamic> json) => _$LoginRequestModelFromJson(json);

@override@JsonKey(name: "TenantId") final  int? tenantId;
@override@JsonKey(name: "Password") final  String? password;
@override@JsonKey(name: "CustomerKey") final  String customerKey;
@override@JsonKey(name: "MobileNo") final  String mobileNo;

/// Create a copy of LoginRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginRequestModelCopyWith<_LoginRequestModel> get copyWith => __$LoginRequestModelCopyWithImpl<_LoginRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginRequestModel&&(identical(other.tenantId, tenantId) || other.tenantId == tenantId)&&(identical(other.password, password) || other.password == password)&&(identical(other.customerKey, customerKey) || other.customerKey == customerKey)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tenantId,password,customerKey,mobileNo);

@override
String toString() {
  return 'LoginRequestModel(tenantId: $tenantId, password: $password, customerKey: $customerKey, mobileNo: $mobileNo)';
}


}

/// @nodoc
abstract mixin class _$LoginRequestModelCopyWith<$Res> implements $LoginRequestModelCopyWith<$Res> {
  factory _$LoginRequestModelCopyWith(_LoginRequestModel value, $Res Function(_LoginRequestModel) _then) = __$LoginRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "TenantId") int? tenantId,@JsonKey(name: "Password") String? password,@JsonKey(name: "CustomerKey") String customerKey,@JsonKey(name: "MobileNo") String mobileNo
});




}
/// @nodoc
class __$LoginRequestModelCopyWithImpl<$Res>
    implements _$LoginRequestModelCopyWith<$Res> {
  __$LoginRequestModelCopyWithImpl(this._self, this._then);

  final _LoginRequestModel _self;
  final $Res Function(_LoginRequestModel) _then;

/// Create a copy of LoginRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tenantId = freezed,Object? password = freezed,Object? customerKey = null,Object? mobileNo = null,}) {
  return _then(_LoginRequestModel(
tenantId: freezed == tenantId ? _self.tenantId : tenantId // ignore: cast_nullable_to_non_nullable
as int?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,customerKey: null == customerKey ? _self.customerKey : customerKey // ignore: cast_nullable_to_non_nullable
as String,mobileNo: null == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
