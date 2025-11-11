// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_salesman_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetSalesmanModel {

@JsonKey(name: "SalesmanId") String? get salesmanId;@JsonKey(name: "SalesmanName") String? get salesmanName;@JsonKey(name: "City") String? get city;@JsonKey(name: "MobileNumber") String? get mobileNumber;@JsonKey(name: "Password") String? get password;@JsonKey(name: "AllowChangePrice") bool? get allowChangePrice;@JsonKey(name: "AllowChangeDiscount") bool? get allowChangeDiscount;@JsonKey(name: "AllowChangeBonus") bool? get allowChangeBonus;@JsonKey(name: "ID") int? get id;@JsonKey(name: "TenantID") int? get tenantId;
/// Create a copy of GetSalesmanModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetSalesmanModelCopyWith<GetSalesmanModel> get copyWith => _$GetSalesmanModelCopyWithImpl<GetSalesmanModel>(this as GetSalesmanModel, _$identity);

  /// Serializes this GetSalesmanModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetSalesmanModel&&(identical(other.salesmanId, salesmanId) || other.salesmanId == salesmanId)&&(identical(other.salesmanName, salesmanName) || other.salesmanName == salesmanName)&&(identical(other.city, city) || other.city == city)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.password, password) || other.password == password)&&(identical(other.allowChangePrice, allowChangePrice) || other.allowChangePrice == allowChangePrice)&&(identical(other.allowChangeDiscount, allowChangeDiscount) || other.allowChangeDiscount == allowChangeDiscount)&&(identical(other.allowChangeBonus, allowChangeBonus) || other.allowChangeBonus == allowChangeBonus)&&(identical(other.id, id) || other.id == id)&&(identical(other.tenantId, tenantId) || other.tenantId == tenantId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,salesmanId,salesmanName,city,mobileNumber,password,allowChangePrice,allowChangeDiscount,allowChangeBonus,id,tenantId);

@override
String toString() {
  return 'GetSalesmanModel(salesmanId: $salesmanId, salesmanName: $salesmanName, city: $city, mobileNumber: $mobileNumber, password: $password, allowChangePrice: $allowChangePrice, allowChangeDiscount: $allowChangeDiscount, allowChangeBonus: $allowChangeBonus, id: $id, tenantId: $tenantId)';
}


}

/// @nodoc
abstract mixin class $GetSalesmanModelCopyWith<$Res>  {
  factory $GetSalesmanModelCopyWith(GetSalesmanModel value, $Res Function(GetSalesmanModel) _then) = _$GetSalesmanModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "SalesmanId") String? salesmanId,@JsonKey(name: "SalesmanName") String? salesmanName,@JsonKey(name: "City") String? city,@JsonKey(name: "MobileNumber") String? mobileNumber,@JsonKey(name: "Password") String? password,@JsonKey(name: "AllowChangePrice") bool? allowChangePrice,@JsonKey(name: "AllowChangeDiscount") bool? allowChangeDiscount,@JsonKey(name: "AllowChangeBonus") bool? allowChangeBonus,@JsonKey(name: "ID") int? id,@JsonKey(name: "TenantID") int? tenantId
});




}
/// @nodoc
class _$GetSalesmanModelCopyWithImpl<$Res>
    implements $GetSalesmanModelCopyWith<$Res> {
  _$GetSalesmanModelCopyWithImpl(this._self, this._then);

  final GetSalesmanModel _self;
  final $Res Function(GetSalesmanModel) _then;

/// Create a copy of GetSalesmanModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? salesmanId = freezed,Object? salesmanName = freezed,Object? city = freezed,Object? mobileNumber = freezed,Object? password = freezed,Object? allowChangePrice = freezed,Object? allowChangeDiscount = freezed,Object? allowChangeBonus = freezed,Object? id = freezed,Object? tenantId = freezed,}) {
  return _then(_self.copyWith(
salesmanId: freezed == salesmanId ? _self.salesmanId : salesmanId // ignore: cast_nullable_to_non_nullable
as String?,salesmanName: freezed == salesmanName ? _self.salesmanName : salesmanName // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,mobileNumber: freezed == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,allowChangePrice: freezed == allowChangePrice ? _self.allowChangePrice : allowChangePrice // ignore: cast_nullable_to_non_nullable
as bool?,allowChangeDiscount: freezed == allowChangeDiscount ? _self.allowChangeDiscount : allowChangeDiscount // ignore: cast_nullable_to_non_nullable
as bool?,allowChangeBonus: freezed == allowChangeBonus ? _self.allowChangeBonus : allowChangeBonus // ignore: cast_nullable_to_non_nullable
as bool?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,tenantId: freezed == tenantId ? _self.tenantId : tenantId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetSalesmanModel].
extension GetSalesmanModelPatterns on GetSalesmanModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetSalesmanModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetSalesmanModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetSalesmanModel value)  $default,){
final _that = this;
switch (_that) {
case _GetSalesmanModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetSalesmanModel value)?  $default,){
final _that = this;
switch (_that) {
case _GetSalesmanModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "SalesmanId")  String? salesmanId, @JsonKey(name: "SalesmanName")  String? salesmanName, @JsonKey(name: "City")  String? city, @JsonKey(name: "MobileNumber")  String? mobileNumber, @JsonKey(name: "Password")  String? password, @JsonKey(name: "AllowChangePrice")  bool? allowChangePrice, @JsonKey(name: "AllowChangeDiscount")  bool? allowChangeDiscount, @JsonKey(name: "AllowChangeBonus")  bool? allowChangeBonus, @JsonKey(name: "ID")  int? id, @JsonKey(name: "TenantID")  int? tenantId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetSalesmanModel() when $default != null:
return $default(_that.salesmanId,_that.salesmanName,_that.city,_that.mobileNumber,_that.password,_that.allowChangePrice,_that.allowChangeDiscount,_that.allowChangeBonus,_that.id,_that.tenantId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "SalesmanId")  String? salesmanId, @JsonKey(name: "SalesmanName")  String? salesmanName, @JsonKey(name: "City")  String? city, @JsonKey(name: "MobileNumber")  String? mobileNumber, @JsonKey(name: "Password")  String? password, @JsonKey(name: "AllowChangePrice")  bool? allowChangePrice, @JsonKey(name: "AllowChangeDiscount")  bool? allowChangeDiscount, @JsonKey(name: "AllowChangeBonus")  bool? allowChangeBonus, @JsonKey(name: "ID")  int? id, @JsonKey(name: "TenantID")  int? tenantId)  $default,) {final _that = this;
switch (_that) {
case _GetSalesmanModel():
return $default(_that.salesmanId,_that.salesmanName,_that.city,_that.mobileNumber,_that.password,_that.allowChangePrice,_that.allowChangeDiscount,_that.allowChangeBonus,_that.id,_that.tenantId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "SalesmanId")  String? salesmanId, @JsonKey(name: "SalesmanName")  String? salesmanName, @JsonKey(name: "City")  String? city, @JsonKey(name: "MobileNumber")  String? mobileNumber, @JsonKey(name: "Password")  String? password, @JsonKey(name: "AllowChangePrice")  bool? allowChangePrice, @JsonKey(name: "AllowChangeDiscount")  bool? allowChangeDiscount, @JsonKey(name: "AllowChangeBonus")  bool? allowChangeBonus, @JsonKey(name: "ID")  int? id, @JsonKey(name: "TenantID")  int? tenantId)?  $default,) {final _that = this;
switch (_that) {
case _GetSalesmanModel() when $default != null:
return $default(_that.salesmanId,_that.salesmanName,_that.city,_that.mobileNumber,_that.password,_that.allowChangePrice,_that.allowChangeDiscount,_that.allowChangeBonus,_that.id,_that.tenantId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetSalesmanModel implements GetSalesmanModel {
  const _GetSalesmanModel({@JsonKey(name: "SalesmanId") this.salesmanId, @JsonKey(name: "SalesmanName") this.salesmanName, @JsonKey(name: "City") this.city, @JsonKey(name: "MobileNumber") this.mobileNumber, @JsonKey(name: "Password") this.password, @JsonKey(name: "AllowChangePrice") this.allowChangePrice, @JsonKey(name: "AllowChangeDiscount") this.allowChangeDiscount, @JsonKey(name: "AllowChangeBonus") this.allowChangeBonus, @JsonKey(name: "ID") this.id, @JsonKey(name: "TenantID") this.tenantId});
  factory _GetSalesmanModel.fromJson(Map<String, dynamic> json) => _$GetSalesmanModelFromJson(json);

@override@JsonKey(name: "SalesmanId") final  String? salesmanId;
@override@JsonKey(name: "SalesmanName") final  String? salesmanName;
@override@JsonKey(name: "City") final  String? city;
@override@JsonKey(name: "MobileNumber") final  String? mobileNumber;
@override@JsonKey(name: "Password") final  String? password;
@override@JsonKey(name: "AllowChangePrice") final  bool? allowChangePrice;
@override@JsonKey(name: "AllowChangeDiscount") final  bool? allowChangeDiscount;
@override@JsonKey(name: "AllowChangeBonus") final  bool? allowChangeBonus;
@override@JsonKey(name: "ID") final  int? id;
@override@JsonKey(name: "TenantID") final  int? tenantId;

/// Create a copy of GetSalesmanModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetSalesmanModelCopyWith<_GetSalesmanModel> get copyWith => __$GetSalesmanModelCopyWithImpl<_GetSalesmanModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetSalesmanModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSalesmanModel&&(identical(other.salesmanId, salesmanId) || other.salesmanId == salesmanId)&&(identical(other.salesmanName, salesmanName) || other.salesmanName == salesmanName)&&(identical(other.city, city) || other.city == city)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.password, password) || other.password == password)&&(identical(other.allowChangePrice, allowChangePrice) || other.allowChangePrice == allowChangePrice)&&(identical(other.allowChangeDiscount, allowChangeDiscount) || other.allowChangeDiscount == allowChangeDiscount)&&(identical(other.allowChangeBonus, allowChangeBonus) || other.allowChangeBonus == allowChangeBonus)&&(identical(other.id, id) || other.id == id)&&(identical(other.tenantId, tenantId) || other.tenantId == tenantId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,salesmanId,salesmanName,city,mobileNumber,password,allowChangePrice,allowChangeDiscount,allowChangeBonus,id,tenantId);

@override
String toString() {
  return 'GetSalesmanModel(salesmanId: $salesmanId, salesmanName: $salesmanName, city: $city, mobileNumber: $mobileNumber, password: $password, allowChangePrice: $allowChangePrice, allowChangeDiscount: $allowChangeDiscount, allowChangeBonus: $allowChangeBonus, id: $id, tenantId: $tenantId)';
}


}

/// @nodoc
abstract mixin class _$GetSalesmanModelCopyWith<$Res> implements $GetSalesmanModelCopyWith<$Res> {
  factory _$GetSalesmanModelCopyWith(_GetSalesmanModel value, $Res Function(_GetSalesmanModel) _then) = __$GetSalesmanModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "SalesmanId") String? salesmanId,@JsonKey(name: "SalesmanName") String? salesmanName,@JsonKey(name: "City") String? city,@JsonKey(name: "MobileNumber") String? mobileNumber,@JsonKey(name: "Password") String? password,@JsonKey(name: "AllowChangePrice") bool? allowChangePrice,@JsonKey(name: "AllowChangeDiscount") bool? allowChangeDiscount,@JsonKey(name: "AllowChangeBonus") bool? allowChangeBonus,@JsonKey(name: "ID") int? id,@JsonKey(name: "TenantID") int? tenantId
});




}
/// @nodoc
class __$GetSalesmanModelCopyWithImpl<$Res>
    implements _$GetSalesmanModelCopyWith<$Res> {
  __$GetSalesmanModelCopyWithImpl(this._self, this._then);

  final _GetSalesmanModel _self;
  final $Res Function(_GetSalesmanModel) _then;

/// Create a copy of GetSalesmanModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? salesmanId = freezed,Object? salesmanName = freezed,Object? city = freezed,Object? mobileNumber = freezed,Object? password = freezed,Object? allowChangePrice = freezed,Object? allowChangeDiscount = freezed,Object? allowChangeBonus = freezed,Object? id = freezed,Object? tenantId = freezed,}) {
  return _then(_GetSalesmanModel(
salesmanId: freezed == salesmanId ? _self.salesmanId : salesmanId // ignore: cast_nullable_to_non_nullable
as String?,salesmanName: freezed == salesmanName ? _self.salesmanName : salesmanName // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,mobileNumber: freezed == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,allowChangePrice: freezed == allowChangePrice ? _self.allowChangePrice : allowChangePrice // ignore: cast_nullable_to_non_nullable
as bool?,allowChangeDiscount: freezed == allowChangeDiscount ? _self.allowChangeDiscount : allowChangeDiscount // ignore: cast_nullable_to_non_nullable
as bool?,allowChangeBonus: freezed == allowChangeBonus ? _self.allowChangeBonus : allowChangeBonus // ignore: cast_nullable_to_non_nullable
as bool?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,tenantId: freezed == tenantId ? _self.tenantId : tenantId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
