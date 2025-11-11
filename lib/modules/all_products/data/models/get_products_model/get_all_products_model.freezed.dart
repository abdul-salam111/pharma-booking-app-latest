// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_products_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetAllProductsModel {

@JsonKey(name: 'CompanyId') int? get companyId;@JsonKey(name: 'StrCompanyId') String? get strCompanyId;@JsonKey(name: 'ProductId') String? get productId;@JsonKey(name: 'GroupId') int? get groupId;@JsonKey(name: 'ProductName') String? get productName;@JsonKey(name: 'Packing') String? get packing;@JsonKey(name: 'TradePrice') double? get tradePrice;@JsonKey(name: 'SaleDiscRatio') double? get saleDiscRatio;@JsonKey(name: 'CurrentStock') int? get currentStock;@JsonKey(name: 'IsInActive') bool? get isInActive;@JsonKey(name: 'ID') int? get id;@JsonKey(name: 'TenantID') int? get tenantId;
/// Create a copy of GetAllProductsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllProductsModelCopyWith<GetAllProductsModel> get copyWith => _$GetAllProductsModelCopyWithImpl<GetAllProductsModel>(this as GetAllProductsModel, _$identity);

  /// Serializes this GetAllProductsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllProductsModel&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.strCompanyId, strCompanyId) || other.strCompanyId == strCompanyId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.packing, packing) || other.packing == packing)&&(identical(other.tradePrice, tradePrice) || other.tradePrice == tradePrice)&&(identical(other.saleDiscRatio, saleDiscRatio) || other.saleDiscRatio == saleDiscRatio)&&(identical(other.currentStock, currentStock) || other.currentStock == currentStock)&&(identical(other.isInActive, isInActive) || other.isInActive == isInActive)&&(identical(other.id, id) || other.id == id)&&(identical(other.tenantId, tenantId) || other.tenantId == tenantId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,companyId,strCompanyId,productId,groupId,productName,packing,tradePrice,saleDiscRatio,currentStock,isInActive,id,tenantId);

@override
String toString() {
  return 'GetAllProductsModel(companyId: $companyId, strCompanyId: $strCompanyId, productId: $productId, groupId: $groupId, productName: $productName, packing: $packing, tradePrice: $tradePrice, saleDiscRatio: $saleDiscRatio, currentStock: $currentStock, isInActive: $isInActive, id: $id, tenantId: $tenantId)';
}


}

/// @nodoc
abstract mixin class $GetAllProductsModelCopyWith<$Res>  {
  factory $GetAllProductsModelCopyWith(GetAllProductsModel value, $Res Function(GetAllProductsModel) _then) = _$GetAllProductsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'CompanyId') int? companyId,@JsonKey(name: 'StrCompanyId') String? strCompanyId,@JsonKey(name: 'ProductId') String? productId,@JsonKey(name: 'GroupId') int? groupId,@JsonKey(name: 'ProductName') String? productName,@JsonKey(name: 'Packing') String? packing,@JsonKey(name: 'TradePrice') double? tradePrice,@JsonKey(name: 'SaleDiscRatio') double? saleDiscRatio,@JsonKey(name: 'CurrentStock') int? currentStock,@JsonKey(name: 'IsInActive') bool? isInActive,@JsonKey(name: 'ID') int? id,@JsonKey(name: 'TenantID') int? tenantId
});




}
/// @nodoc
class _$GetAllProductsModelCopyWithImpl<$Res>
    implements $GetAllProductsModelCopyWith<$Res> {
  _$GetAllProductsModelCopyWithImpl(this._self, this._then);

  final GetAllProductsModel _self;
  final $Res Function(GetAllProductsModel) _then;

/// Create a copy of GetAllProductsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? companyId = freezed,Object? strCompanyId = freezed,Object? productId = freezed,Object? groupId = freezed,Object? productName = freezed,Object? packing = freezed,Object? tradePrice = freezed,Object? saleDiscRatio = freezed,Object? currentStock = freezed,Object? isInActive = freezed,Object? id = freezed,Object? tenantId = freezed,}) {
  return _then(_self.copyWith(
companyId: freezed == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int?,strCompanyId: freezed == strCompanyId ? _self.strCompanyId : strCompanyId // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,packing: freezed == packing ? _self.packing : packing // ignore: cast_nullable_to_non_nullable
as String?,tradePrice: freezed == tradePrice ? _self.tradePrice : tradePrice // ignore: cast_nullable_to_non_nullable
as double?,saleDiscRatio: freezed == saleDiscRatio ? _self.saleDiscRatio : saleDiscRatio // ignore: cast_nullable_to_non_nullable
as double?,currentStock: freezed == currentStock ? _self.currentStock : currentStock // ignore: cast_nullable_to_non_nullable
as int?,isInActive: freezed == isInActive ? _self.isInActive : isInActive // ignore: cast_nullable_to_non_nullable
as bool?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,tenantId: freezed == tenantId ? _self.tenantId : tenantId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetAllProductsModel].
extension GetAllProductsModelPatterns on GetAllProductsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetAllProductsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetAllProductsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetAllProductsModel value)  $default,){
final _that = this;
switch (_that) {
case _GetAllProductsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetAllProductsModel value)?  $default,){
final _that = this;
switch (_that) {
case _GetAllProductsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'CompanyId')  int? companyId, @JsonKey(name: 'StrCompanyId')  String? strCompanyId, @JsonKey(name: 'ProductId')  String? productId, @JsonKey(name: 'GroupId')  int? groupId, @JsonKey(name: 'ProductName')  String? productName, @JsonKey(name: 'Packing')  String? packing, @JsonKey(name: 'TradePrice')  double? tradePrice, @JsonKey(name: 'SaleDiscRatio')  double? saleDiscRatio, @JsonKey(name: 'CurrentStock')  int? currentStock, @JsonKey(name: 'IsInActive')  bool? isInActive, @JsonKey(name: 'ID')  int? id, @JsonKey(name: 'TenantID')  int? tenantId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetAllProductsModel() when $default != null:
return $default(_that.companyId,_that.strCompanyId,_that.productId,_that.groupId,_that.productName,_that.packing,_that.tradePrice,_that.saleDiscRatio,_that.currentStock,_that.isInActive,_that.id,_that.tenantId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'CompanyId')  int? companyId, @JsonKey(name: 'StrCompanyId')  String? strCompanyId, @JsonKey(name: 'ProductId')  String? productId, @JsonKey(name: 'GroupId')  int? groupId, @JsonKey(name: 'ProductName')  String? productName, @JsonKey(name: 'Packing')  String? packing, @JsonKey(name: 'TradePrice')  double? tradePrice, @JsonKey(name: 'SaleDiscRatio')  double? saleDiscRatio, @JsonKey(name: 'CurrentStock')  int? currentStock, @JsonKey(name: 'IsInActive')  bool? isInActive, @JsonKey(name: 'ID')  int? id, @JsonKey(name: 'TenantID')  int? tenantId)  $default,) {final _that = this;
switch (_that) {
case _GetAllProductsModel():
return $default(_that.companyId,_that.strCompanyId,_that.productId,_that.groupId,_that.productName,_that.packing,_that.tradePrice,_that.saleDiscRatio,_that.currentStock,_that.isInActive,_that.id,_that.tenantId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'CompanyId')  int? companyId, @JsonKey(name: 'StrCompanyId')  String? strCompanyId, @JsonKey(name: 'ProductId')  String? productId, @JsonKey(name: 'GroupId')  int? groupId, @JsonKey(name: 'ProductName')  String? productName, @JsonKey(name: 'Packing')  String? packing, @JsonKey(name: 'TradePrice')  double? tradePrice, @JsonKey(name: 'SaleDiscRatio')  double? saleDiscRatio, @JsonKey(name: 'CurrentStock')  int? currentStock, @JsonKey(name: 'IsInActive')  bool? isInActive, @JsonKey(name: 'ID')  int? id, @JsonKey(name: 'TenantID')  int? tenantId)?  $default,) {final _that = this;
switch (_that) {
case _GetAllProductsModel() when $default != null:
return $default(_that.companyId,_that.strCompanyId,_that.productId,_that.groupId,_that.productName,_that.packing,_that.tradePrice,_that.saleDiscRatio,_that.currentStock,_that.isInActive,_that.id,_that.tenantId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetAllProductsModel implements GetAllProductsModel {
  const _GetAllProductsModel({@JsonKey(name: 'CompanyId') this.companyId, @JsonKey(name: 'StrCompanyId') this.strCompanyId, @JsonKey(name: 'ProductId') this.productId, @JsonKey(name: 'GroupId') this.groupId, @JsonKey(name: 'ProductName') this.productName, @JsonKey(name: 'Packing') this.packing, @JsonKey(name: 'TradePrice') this.tradePrice, @JsonKey(name: 'SaleDiscRatio') this.saleDiscRatio, @JsonKey(name: 'CurrentStock') this.currentStock, @JsonKey(name: 'IsInActive') this.isInActive, @JsonKey(name: 'ID') this.id, @JsonKey(name: 'TenantID') this.tenantId});
  factory _GetAllProductsModel.fromJson(Map<String, dynamic> json) => _$GetAllProductsModelFromJson(json);

@override@JsonKey(name: 'CompanyId') final  int? companyId;
@override@JsonKey(name: 'StrCompanyId') final  String? strCompanyId;
@override@JsonKey(name: 'ProductId') final  String? productId;
@override@JsonKey(name: 'GroupId') final  int? groupId;
@override@JsonKey(name: 'ProductName') final  String? productName;
@override@JsonKey(name: 'Packing') final  String? packing;
@override@JsonKey(name: 'TradePrice') final  double? tradePrice;
@override@JsonKey(name: 'SaleDiscRatio') final  double? saleDiscRatio;
@override@JsonKey(name: 'CurrentStock') final  int? currentStock;
@override@JsonKey(name: 'IsInActive') final  bool? isInActive;
@override@JsonKey(name: 'ID') final  int? id;
@override@JsonKey(name: 'TenantID') final  int? tenantId;

/// Create a copy of GetAllProductsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAllProductsModelCopyWith<_GetAllProductsModel> get copyWith => __$GetAllProductsModelCopyWithImpl<_GetAllProductsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetAllProductsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllProductsModel&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.strCompanyId, strCompanyId) || other.strCompanyId == strCompanyId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.packing, packing) || other.packing == packing)&&(identical(other.tradePrice, tradePrice) || other.tradePrice == tradePrice)&&(identical(other.saleDiscRatio, saleDiscRatio) || other.saleDiscRatio == saleDiscRatio)&&(identical(other.currentStock, currentStock) || other.currentStock == currentStock)&&(identical(other.isInActive, isInActive) || other.isInActive == isInActive)&&(identical(other.id, id) || other.id == id)&&(identical(other.tenantId, tenantId) || other.tenantId == tenantId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,companyId,strCompanyId,productId,groupId,productName,packing,tradePrice,saleDiscRatio,currentStock,isInActive,id,tenantId);

@override
String toString() {
  return 'GetAllProductsModel(companyId: $companyId, strCompanyId: $strCompanyId, productId: $productId, groupId: $groupId, productName: $productName, packing: $packing, tradePrice: $tradePrice, saleDiscRatio: $saleDiscRatio, currentStock: $currentStock, isInActive: $isInActive, id: $id, tenantId: $tenantId)';
}


}

/// @nodoc
abstract mixin class _$GetAllProductsModelCopyWith<$Res> implements $GetAllProductsModelCopyWith<$Res> {
  factory _$GetAllProductsModelCopyWith(_GetAllProductsModel value, $Res Function(_GetAllProductsModel) _then) = __$GetAllProductsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'CompanyId') int? companyId,@JsonKey(name: 'StrCompanyId') String? strCompanyId,@JsonKey(name: 'ProductId') String? productId,@JsonKey(name: 'GroupId') int? groupId,@JsonKey(name: 'ProductName') String? productName,@JsonKey(name: 'Packing') String? packing,@JsonKey(name: 'TradePrice') double? tradePrice,@JsonKey(name: 'SaleDiscRatio') double? saleDiscRatio,@JsonKey(name: 'CurrentStock') int? currentStock,@JsonKey(name: 'IsInActive') bool? isInActive,@JsonKey(name: 'ID') int? id,@JsonKey(name: 'TenantID') int? tenantId
});




}
/// @nodoc
class __$GetAllProductsModelCopyWithImpl<$Res>
    implements _$GetAllProductsModelCopyWith<$Res> {
  __$GetAllProductsModelCopyWithImpl(this._self, this._then);

  final _GetAllProductsModel _self;
  final $Res Function(_GetAllProductsModel) _then;

/// Create a copy of GetAllProductsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? companyId = freezed,Object? strCompanyId = freezed,Object? productId = freezed,Object? groupId = freezed,Object? productName = freezed,Object? packing = freezed,Object? tradePrice = freezed,Object? saleDiscRatio = freezed,Object? currentStock = freezed,Object? isInActive = freezed,Object? id = freezed,Object? tenantId = freezed,}) {
  return _then(_GetAllProductsModel(
companyId: freezed == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int?,strCompanyId: freezed == strCompanyId ? _self.strCompanyId : strCompanyId // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,packing: freezed == packing ? _self.packing : packing // ignore: cast_nullable_to_non_nullable
as String?,tradePrice: freezed == tradePrice ? _self.tradePrice : tradePrice // ignore: cast_nullable_to_non_nullable
as double?,saleDiscRatio: freezed == saleDiscRatio ? _self.saleDiscRatio : saleDiscRatio // ignore: cast_nullable_to_non_nullable
as double?,currentStock: freezed == currentStock ? _self.currentStock : currentStock // ignore: cast_nullable_to_non_nullable
as int?,isInActive: freezed == isInActive ? _self.isInActive : isInActive // ignore: cast_nullable_to_non_nullable
as bool?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,tenantId: freezed == tenantId ? _self.tenantId : tenantId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
