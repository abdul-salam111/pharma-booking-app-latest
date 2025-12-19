// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sync_orders_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SyncOrdersModel {

@JsonKey(name: "DeviceOrderGuid") String? get deviceOrderGuid;@JsonKey(name: "CustomerId") int? get customerId;@JsonKey(name: "SalesmanId") int? get salesmanId;@JsonKey(name: "DeviceOrderDateTime") DateTime? get deviceOrderDateTime;@JsonKey(name: "OrderTotalAmt") double? get orderTotalAmt;@JsonKey(name: "OrderRows") List<SyncOrderRow>? get orderRows;
/// Create a copy of SyncOrdersModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncOrdersModelCopyWith<SyncOrdersModel> get copyWith => _$SyncOrdersModelCopyWithImpl<SyncOrdersModel>(this as SyncOrdersModel, _$identity);

  /// Serializes this SyncOrdersModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncOrdersModel&&(identical(other.deviceOrderGuid, deviceOrderGuid) || other.deviceOrderGuid == deviceOrderGuid)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.salesmanId, salesmanId) || other.salesmanId == salesmanId)&&(identical(other.deviceOrderDateTime, deviceOrderDateTime) || other.deviceOrderDateTime == deviceOrderDateTime)&&(identical(other.orderTotalAmt, orderTotalAmt) || other.orderTotalAmt == orderTotalAmt)&&const DeepCollectionEquality().equals(other.orderRows, orderRows));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceOrderGuid,customerId,salesmanId,deviceOrderDateTime,orderTotalAmt,const DeepCollectionEquality().hash(orderRows));

@override
String toString() {
  return 'SyncOrdersModel(deviceOrderGuid: $deviceOrderGuid, customerId: $customerId, salesmanId: $salesmanId, deviceOrderDateTime: $deviceOrderDateTime, orderTotalAmt: $orderTotalAmt, orderRows: $orderRows)';
}


}

/// @nodoc
abstract mixin class $SyncOrdersModelCopyWith<$Res>  {
  factory $SyncOrdersModelCopyWith(SyncOrdersModel value, $Res Function(SyncOrdersModel) _then) = _$SyncOrdersModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "DeviceOrderGuid") String? deviceOrderGuid,@JsonKey(name: "CustomerId") int? customerId,@JsonKey(name: "SalesmanId") int? salesmanId,@JsonKey(name: "DeviceOrderDateTime") DateTime? deviceOrderDateTime,@JsonKey(name: "OrderTotalAmt") double? orderTotalAmt,@JsonKey(name: "OrderRows") List<SyncOrderRow>? orderRows
});




}
/// @nodoc
class _$SyncOrdersModelCopyWithImpl<$Res>
    implements $SyncOrdersModelCopyWith<$Res> {
  _$SyncOrdersModelCopyWithImpl(this._self, this._then);

  final SyncOrdersModel _self;
  final $Res Function(SyncOrdersModel) _then;

/// Create a copy of SyncOrdersModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deviceOrderGuid = freezed,Object? customerId = freezed,Object? salesmanId = freezed,Object? deviceOrderDateTime = freezed,Object? orderTotalAmt = freezed,Object? orderRows = freezed,}) {
  return _then(_self.copyWith(
deviceOrderGuid: freezed == deviceOrderGuid ? _self.deviceOrderGuid : deviceOrderGuid // ignore: cast_nullable_to_non_nullable
as String?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int?,salesmanId: freezed == salesmanId ? _self.salesmanId : salesmanId // ignore: cast_nullable_to_non_nullable
as int?,deviceOrderDateTime: freezed == deviceOrderDateTime ? _self.deviceOrderDateTime : deviceOrderDateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,orderTotalAmt: freezed == orderTotalAmt ? _self.orderTotalAmt : orderTotalAmt // ignore: cast_nullable_to_non_nullable
as double?,orderRows: freezed == orderRows ? _self.orderRows : orderRows // ignore: cast_nullable_to_non_nullable
as List<SyncOrderRow>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SyncOrdersModel].
extension SyncOrdersModelPatterns on SyncOrdersModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SyncOrdersModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SyncOrdersModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SyncOrdersModel value)  $default,){
final _that = this;
switch (_that) {
case _SyncOrdersModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SyncOrdersModel value)?  $default,){
final _that = this;
switch (_that) {
case _SyncOrdersModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "DeviceOrderGuid")  String? deviceOrderGuid, @JsonKey(name: "CustomerId")  int? customerId, @JsonKey(name: "SalesmanId")  int? salesmanId, @JsonKey(name: "DeviceOrderDateTime")  DateTime? deviceOrderDateTime, @JsonKey(name: "OrderTotalAmt")  double? orderTotalAmt, @JsonKey(name: "OrderRows")  List<SyncOrderRow>? orderRows)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SyncOrdersModel() when $default != null:
return $default(_that.deviceOrderGuid,_that.customerId,_that.salesmanId,_that.deviceOrderDateTime,_that.orderTotalAmt,_that.orderRows);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "DeviceOrderGuid")  String? deviceOrderGuid, @JsonKey(name: "CustomerId")  int? customerId, @JsonKey(name: "SalesmanId")  int? salesmanId, @JsonKey(name: "DeviceOrderDateTime")  DateTime? deviceOrderDateTime, @JsonKey(name: "OrderTotalAmt")  double? orderTotalAmt, @JsonKey(name: "OrderRows")  List<SyncOrderRow>? orderRows)  $default,) {final _that = this;
switch (_that) {
case _SyncOrdersModel():
return $default(_that.deviceOrderGuid,_that.customerId,_that.salesmanId,_that.deviceOrderDateTime,_that.orderTotalAmt,_that.orderRows);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "DeviceOrderGuid")  String? deviceOrderGuid, @JsonKey(name: "CustomerId")  int? customerId, @JsonKey(name: "SalesmanId")  int? salesmanId, @JsonKey(name: "DeviceOrderDateTime")  DateTime? deviceOrderDateTime, @JsonKey(name: "OrderTotalAmt")  double? orderTotalAmt, @JsonKey(name: "OrderRows")  List<SyncOrderRow>? orderRows)?  $default,) {final _that = this;
switch (_that) {
case _SyncOrdersModel() when $default != null:
return $default(_that.deviceOrderGuid,_that.customerId,_that.salesmanId,_that.deviceOrderDateTime,_that.orderTotalAmt,_that.orderRows);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SyncOrdersModel implements SyncOrdersModel {
  const _SyncOrdersModel({@JsonKey(name: "DeviceOrderGuid") this.deviceOrderGuid, @JsonKey(name: "CustomerId") this.customerId, @JsonKey(name: "SalesmanId") this.salesmanId, @JsonKey(name: "DeviceOrderDateTime") this.deviceOrderDateTime, @JsonKey(name: "OrderTotalAmt") this.orderTotalAmt, @JsonKey(name: "OrderRows") final  List<SyncOrderRow>? orderRows}): _orderRows = orderRows;
  factory _SyncOrdersModel.fromJson(Map<String, dynamic> json) => _$SyncOrdersModelFromJson(json);

@override@JsonKey(name: "DeviceOrderGuid") final  String? deviceOrderGuid;
@override@JsonKey(name: "CustomerId") final  int? customerId;
@override@JsonKey(name: "SalesmanId") final  int? salesmanId;
@override@JsonKey(name: "DeviceOrderDateTime") final  DateTime? deviceOrderDateTime;
@override@JsonKey(name: "OrderTotalAmt") final  double? orderTotalAmt;
 final  List<SyncOrderRow>? _orderRows;
@override@JsonKey(name: "OrderRows") List<SyncOrderRow>? get orderRows {
  final value = _orderRows;
  if (value == null) return null;
  if (_orderRows is EqualUnmodifiableListView) return _orderRows;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SyncOrdersModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SyncOrdersModelCopyWith<_SyncOrdersModel> get copyWith => __$SyncOrdersModelCopyWithImpl<_SyncOrdersModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SyncOrdersModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SyncOrdersModel&&(identical(other.deviceOrderGuid, deviceOrderGuid) || other.deviceOrderGuid == deviceOrderGuid)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.salesmanId, salesmanId) || other.salesmanId == salesmanId)&&(identical(other.deviceOrderDateTime, deviceOrderDateTime) || other.deviceOrderDateTime == deviceOrderDateTime)&&(identical(other.orderTotalAmt, orderTotalAmt) || other.orderTotalAmt == orderTotalAmt)&&const DeepCollectionEquality().equals(other._orderRows, _orderRows));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceOrderGuid,customerId,salesmanId,deviceOrderDateTime,orderTotalAmt,const DeepCollectionEquality().hash(_orderRows));

@override
String toString() {
  return 'SyncOrdersModel(deviceOrderGuid: $deviceOrderGuid, customerId: $customerId, salesmanId: $salesmanId, deviceOrderDateTime: $deviceOrderDateTime, orderTotalAmt: $orderTotalAmt, orderRows: $orderRows)';
}


}

/// @nodoc
abstract mixin class _$SyncOrdersModelCopyWith<$Res> implements $SyncOrdersModelCopyWith<$Res> {
  factory _$SyncOrdersModelCopyWith(_SyncOrdersModel value, $Res Function(_SyncOrdersModel) _then) = __$SyncOrdersModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "DeviceOrderGuid") String? deviceOrderGuid,@JsonKey(name: "CustomerId") int? customerId,@JsonKey(name: "SalesmanId") int? salesmanId,@JsonKey(name: "DeviceOrderDateTime") DateTime? deviceOrderDateTime,@JsonKey(name: "OrderTotalAmt") double? orderTotalAmt,@JsonKey(name: "OrderRows") List<SyncOrderRow>? orderRows
});




}
/// @nodoc
class __$SyncOrdersModelCopyWithImpl<$Res>
    implements _$SyncOrdersModelCopyWith<$Res> {
  __$SyncOrdersModelCopyWithImpl(this._self, this._then);

  final _SyncOrdersModel _self;
  final $Res Function(_SyncOrdersModel) _then;

/// Create a copy of SyncOrdersModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deviceOrderGuid = freezed,Object? customerId = freezed,Object? salesmanId = freezed,Object? deviceOrderDateTime = freezed,Object? orderTotalAmt = freezed,Object? orderRows = freezed,}) {
  return _then(_SyncOrdersModel(
deviceOrderGuid: freezed == deviceOrderGuid ? _self.deviceOrderGuid : deviceOrderGuid // ignore: cast_nullable_to_non_nullable
as String?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int?,salesmanId: freezed == salesmanId ? _self.salesmanId : salesmanId // ignore: cast_nullable_to_non_nullable
as int?,deviceOrderDateTime: freezed == deviceOrderDateTime ? _self.deviceOrderDateTime : deviceOrderDateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,orderTotalAmt: freezed == orderTotalAmt ? _self.orderTotalAmt : orderTotalAmt // ignore: cast_nullable_to_non_nullable
as double?,orderRows: freezed == orderRows ? _self._orderRows : orderRows // ignore: cast_nullable_to_non_nullable
as List<SyncOrderRow>?,
  ));
}


}


/// @nodoc
mixin _$SyncOrderRow {

@JsonKey(name: "ProductId") int? get productId;@JsonKey(name: "PackingId") int? get packingId;@JsonKey(name: "QtyPack") int? get qtyPack;@JsonKey(name: "QtyLose") int? get qtyLose;@JsonKey(name: "Bonus") int? get bonus;@JsonKey(name: "DiscRatio") double? get discRatio;@JsonKey(name: "DiscValuePack") double? get discValuePack;@JsonKey(name: "PricePack") double? get pricePack;@JsonKey(name: "STaxRatio") double? get sTaxRatio;@JsonKey(name: "RowTotal") double? get rowTotal;
/// Create a copy of SyncOrderRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncOrderRowCopyWith<SyncOrderRow> get copyWith => _$SyncOrderRowCopyWithImpl<SyncOrderRow>(this as SyncOrderRow, _$identity);

  /// Serializes this SyncOrderRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncOrderRow&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.packingId, packingId) || other.packingId == packingId)&&(identical(other.qtyPack, qtyPack) || other.qtyPack == qtyPack)&&(identical(other.qtyLose, qtyLose) || other.qtyLose == qtyLose)&&(identical(other.bonus, bonus) || other.bonus == bonus)&&(identical(other.discRatio, discRatio) || other.discRatio == discRatio)&&(identical(other.discValuePack, discValuePack) || other.discValuePack == discValuePack)&&(identical(other.pricePack, pricePack) || other.pricePack == pricePack)&&(identical(other.sTaxRatio, sTaxRatio) || other.sTaxRatio == sTaxRatio)&&(identical(other.rowTotal, rowTotal) || other.rowTotal == rowTotal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,packingId,qtyPack,qtyLose,bonus,discRatio,discValuePack,pricePack,sTaxRatio,rowTotal);

@override
String toString() {
  return 'SyncOrderRow(productId: $productId, packingId: $packingId, qtyPack: $qtyPack, qtyLose: $qtyLose, bonus: $bonus, discRatio: $discRatio, discValuePack: $discValuePack, pricePack: $pricePack, sTaxRatio: $sTaxRatio, rowTotal: $rowTotal)';
}


}

/// @nodoc
abstract mixin class $SyncOrderRowCopyWith<$Res>  {
  factory $SyncOrderRowCopyWith(SyncOrderRow value, $Res Function(SyncOrderRow) _then) = _$SyncOrderRowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "ProductId") int? productId,@JsonKey(name: "PackingId") int? packingId,@JsonKey(name: "QtyPack") int? qtyPack,@JsonKey(name: "QtyLose") int? qtyLose,@JsonKey(name: "Bonus") int? bonus,@JsonKey(name: "DiscRatio") double? discRatio,@JsonKey(name: "DiscValuePack") double? discValuePack,@JsonKey(name: "PricePack") double? pricePack,@JsonKey(name: "STaxRatio") double? sTaxRatio,@JsonKey(name: "RowTotal") double? rowTotal
});




}
/// @nodoc
class _$SyncOrderRowCopyWithImpl<$Res>
    implements $SyncOrderRowCopyWith<$Res> {
  _$SyncOrderRowCopyWithImpl(this._self, this._then);

  final SyncOrderRow _self;
  final $Res Function(SyncOrderRow) _then;

/// Create a copy of SyncOrderRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = freezed,Object? packingId = freezed,Object? qtyPack = freezed,Object? qtyLose = freezed,Object? bonus = freezed,Object? discRatio = freezed,Object? discValuePack = freezed,Object? pricePack = freezed,Object? sTaxRatio = freezed,Object? rowTotal = freezed,}) {
  return _then(_self.copyWith(
productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,packingId: freezed == packingId ? _self.packingId : packingId // ignore: cast_nullable_to_non_nullable
as int?,qtyPack: freezed == qtyPack ? _self.qtyPack : qtyPack // ignore: cast_nullable_to_non_nullable
as int?,qtyLose: freezed == qtyLose ? _self.qtyLose : qtyLose // ignore: cast_nullable_to_non_nullable
as int?,bonus: freezed == bonus ? _self.bonus : bonus // ignore: cast_nullable_to_non_nullable
as int?,discRatio: freezed == discRatio ? _self.discRatio : discRatio // ignore: cast_nullable_to_non_nullable
as double?,discValuePack: freezed == discValuePack ? _self.discValuePack : discValuePack // ignore: cast_nullable_to_non_nullable
as double?,pricePack: freezed == pricePack ? _self.pricePack : pricePack // ignore: cast_nullable_to_non_nullable
as double?,sTaxRatio: freezed == sTaxRatio ? _self.sTaxRatio : sTaxRatio // ignore: cast_nullable_to_non_nullable
as double?,rowTotal: freezed == rowTotal ? _self.rowTotal : rowTotal // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [SyncOrderRow].
extension SyncOrderRowPatterns on SyncOrderRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SyncOrderRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SyncOrderRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SyncOrderRow value)  $default,){
final _that = this;
switch (_that) {
case _SyncOrderRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SyncOrderRow value)?  $default,){
final _that = this;
switch (_that) {
case _SyncOrderRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "ProductId")  int? productId, @JsonKey(name: "PackingId")  int? packingId, @JsonKey(name: "QtyPack")  int? qtyPack, @JsonKey(name: "QtyLose")  int? qtyLose, @JsonKey(name: "Bonus")  int? bonus, @JsonKey(name: "DiscRatio")  double? discRatio, @JsonKey(name: "DiscValuePack")  double? discValuePack, @JsonKey(name: "PricePack")  double? pricePack, @JsonKey(name: "STaxRatio")  double? sTaxRatio, @JsonKey(name: "RowTotal")  double? rowTotal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SyncOrderRow() when $default != null:
return $default(_that.productId,_that.packingId,_that.qtyPack,_that.qtyLose,_that.bonus,_that.discRatio,_that.discValuePack,_that.pricePack,_that.sTaxRatio,_that.rowTotal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "ProductId")  int? productId, @JsonKey(name: "PackingId")  int? packingId, @JsonKey(name: "QtyPack")  int? qtyPack, @JsonKey(name: "QtyLose")  int? qtyLose, @JsonKey(name: "Bonus")  int? bonus, @JsonKey(name: "DiscRatio")  double? discRatio, @JsonKey(name: "DiscValuePack")  double? discValuePack, @JsonKey(name: "PricePack")  double? pricePack, @JsonKey(name: "STaxRatio")  double? sTaxRatio, @JsonKey(name: "RowTotal")  double? rowTotal)  $default,) {final _that = this;
switch (_that) {
case _SyncOrderRow():
return $default(_that.productId,_that.packingId,_that.qtyPack,_that.qtyLose,_that.bonus,_that.discRatio,_that.discValuePack,_that.pricePack,_that.sTaxRatio,_that.rowTotal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "ProductId")  int? productId, @JsonKey(name: "PackingId")  int? packingId, @JsonKey(name: "QtyPack")  int? qtyPack, @JsonKey(name: "QtyLose")  int? qtyLose, @JsonKey(name: "Bonus")  int? bonus, @JsonKey(name: "DiscRatio")  double? discRatio, @JsonKey(name: "DiscValuePack")  double? discValuePack, @JsonKey(name: "PricePack")  double? pricePack, @JsonKey(name: "STaxRatio")  double? sTaxRatio, @JsonKey(name: "RowTotal")  double? rowTotal)?  $default,) {final _that = this;
switch (_that) {
case _SyncOrderRow() when $default != null:
return $default(_that.productId,_that.packingId,_that.qtyPack,_that.qtyLose,_that.bonus,_that.discRatio,_that.discValuePack,_that.pricePack,_that.sTaxRatio,_that.rowTotal);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SyncOrderRow implements SyncOrderRow {
  const _SyncOrderRow({@JsonKey(name: "ProductId") this.productId, @JsonKey(name: "PackingId") this.packingId, @JsonKey(name: "QtyPack") this.qtyPack, @JsonKey(name: "QtyLose") this.qtyLose, @JsonKey(name: "Bonus") this.bonus, @JsonKey(name: "DiscRatio") this.discRatio, @JsonKey(name: "DiscValuePack") this.discValuePack, @JsonKey(name: "PricePack") this.pricePack, @JsonKey(name: "STaxRatio") this.sTaxRatio, @JsonKey(name: "RowTotal") this.rowTotal});
  factory _SyncOrderRow.fromJson(Map<String, dynamic> json) => _$SyncOrderRowFromJson(json);

@override@JsonKey(name: "ProductId") final  int? productId;
@override@JsonKey(name: "PackingId") final  int? packingId;
@override@JsonKey(name: "QtyPack") final  int? qtyPack;
@override@JsonKey(name: "QtyLose") final  int? qtyLose;
@override@JsonKey(name: "Bonus") final  int? bonus;
@override@JsonKey(name: "DiscRatio") final  double? discRatio;
@override@JsonKey(name: "DiscValuePack") final  double? discValuePack;
@override@JsonKey(name: "PricePack") final  double? pricePack;
@override@JsonKey(name: "STaxRatio") final  double? sTaxRatio;
@override@JsonKey(name: "RowTotal") final  double? rowTotal;

/// Create a copy of SyncOrderRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SyncOrderRowCopyWith<_SyncOrderRow> get copyWith => __$SyncOrderRowCopyWithImpl<_SyncOrderRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SyncOrderRowToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SyncOrderRow&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.packingId, packingId) || other.packingId == packingId)&&(identical(other.qtyPack, qtyPack) || other.qtyPack == qtyPack)&&(identical(other.qtyLose, qtyLose) || other.qtyLose == qtyLose)&&(identical(other.bonus, bonus) || other.bonus == bonus)&&(identical(other.discRatio, discRatio) || other.discRatio == discRatio)&&(identical(other.discValuePack, discValuePack) || other.discValuePack == discValuePack)&&(identical(other.pricePack, pricePack) || other.pricePack == pricePack)&&(identical(other.sTaxRatio, sTaxRatio) || other.sTaxRatio == sTaxRatio)&&(identical(other.rowTotal, rowTotal) || other.rowTotal == rowTotal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,packingId,qtyPack,qtyLose,bonus,discRatio,discValuePack,pricePack,sTaxRatio,rowTotal);

@override
String toString() {
  return 'SyncOrderRow(productId: $productId, packingId: $packingId, qtyPack: $qtyPack, qtyLose: $qtyLose, bonus: $bonus, discRatio: $discRatio, discValuePack: $discValuePack, pricePack: $pricePack, sTaxRatio: $sTaxRatio, rowTotal: $rowTotal)';
}


}

/// @nodoc
abstract mixin class _$SyncOrderRowCopyWith<$Res> implements $SyncOrderRowCopyWith<$Res> {
  factory _$SyncOrderRowCopyWith(_SyncOrderRow value, $Res Function(_SyncOrderRow) _then) = __$SyncOrderRowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "ProductId") int? productId,@JsonKey(name: "PackingId") int? packingId,@JsonKey(name: "QtyPack") int? qtyPack,@JsonKey(name: "QtyLose") int? qtyLose,@JsonKey(name: "Bonus") int? bonus,@JsonKey(name: "DiscRatio") double? discRatio,@JsonKey(name: "DiscValuePack") double? discValuePack,@JsonKey(name: "PricePack") double? pricePack,@JsonKey(name: "STaxRatio") double? sTaxRatio,@JsonKey(name: "RowTotal") double? rowTotal
});




}
/// @nodoc
class __$SyncOrderRowCopyWithImpl<$Res>
    implements _$SyncOrderRowCopyWith<$Res> {
  __$SyncOrderRowCopyWithImpl(this._self, this._then);

  final _SyncOrderRow _self;
  final $Res Function(_SyncOrderRow) _then;

/// Create a copy of SyncOrderRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = freezed,Object? packingId = freezed,Object? qtyPack = freezed,Object? qtyLose = freezed,Object? bonus = freezed,Object? discRatio = freezed,Object? discValuePack = freezed,Object? pricePack = freezed,Object? sTaxRatio = freezed,Object? rowTotal = freezed,}) {
  return _then(_SyncOrderRow(
productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,packingId: freezed == packingId ? _self.packingId : packingId // ignore: cast_nullable_to_non_nullable
as int?,qtyPack: freezed == qtyPack ? _self.qtyPack : qtyPack // ignore: cast_nullable_to_non_nullable
as int?,qtyLose: freezed == qtyLose ? _self.qtyLose : qtyLose // ignore: cast_nullable_to_non_nullable
as int?,bonus: freezed == bonus ? _self.bonus : bonus // ignore: cast_nullable_to_non_nullable
as int?,discRatio: freezed == discRatio ? _self.discRatio : discRatio // ignore: cast_nullable_to_non_nullable
as double?,discValuePack: freezed == discValuePack ? _self.discValuePack : discValuePack // ignore: cast_nullable_to_non_nullable
as double?,pricePack: freezed == pricePack ? _self.pricePack : pricePack // ignore: cast_nullable_to_non_nullable
as double?,sTaxRatio: freezed == sTaxRatio ? _self.sTaxRatio : sTaxRatio // ignore: cast_nullable_to_non_nullable
as double?,rowTotal: freezed == rowTotal ? _self.rowTotal : rowTotal // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
