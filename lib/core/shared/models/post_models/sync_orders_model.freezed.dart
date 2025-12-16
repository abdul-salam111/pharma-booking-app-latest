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

@JsonKey(name: "DeviceOrderID") int? get deviceOrderId;@JsonKey(name: "CustomerId") int? get customerId;@JsonKey(name: "SalesmanId") int? get salesmanId;@JsonKey(name: "DeviceOrderDateTime") DateTime? get deviceOrderDateTime;@JsonKey(name: "OrderRows") List<SyncOrderRow>? get orderRows;
/// Create a copy of SyncOrdersModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncOrdersModelCopyWith<SyncOrdersModel> get copyWith => _$SyncOrdersModelCopyWithImpl<SyncOrdersModel>(this as SyncOrdersModel, _$identity);

  /// Serializes this SyncOrdersModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncOrdersModel&&(identical(other.deviceOrderId, deviceOrderId) || other.deviceOrderId == deviceOrderId)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.salesmanId, salesmanId) || other.salesmanId == salesmanId)&&(identical(other.deviceOrderDateTime, deviceOrderDateTime) || other.deviceOrderDateTime == deviceOrderDateTime)&&const DeepCollectionEquality().equals(other.orderRows, orderRows));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceOrderId,customerId,salesmanId,deviceOrderDateTime,const DeepCollectionEquality().hash(orderRows));

@override
String toString() {
  return 'SyncOrdersModel(deviceOrderId: $deviceOrderId, customerId: $customerId, salesmanId: $salesmanId, deviceOrderDateTime: $deviceOrderDateTime, orderRows: $orderRows)';
}


}

/// @nodoc
abstract mixin class $SyncOrdersModelCopyWith<$Res>  {
  factory $SyncOrdersModelCopyWith(SyncOrdersModel value, $Res Function(SyncOrdersModel) _then) = _$SyncOrdersModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "DeviceOrderID") int? deviceOrderId,@JsonKey(name: "CustomerId") int? customerId,@JsonKey(name: "SalesmanId") int? salesmanId,@JsonKey(name: "DeviceOrderDateTime") DateTime? deviceOrderDateTime,@JsonKey(name: "OrderRows") List<SyncOrderRow>? orderRows
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
@pragma('vm:prefer-inline') @override $Res call({Object? deviceOrderId = freezed,Object? customerId = freezed,Object? salesmanId = freezed,Object? deviceOrderDateTime = freezed,Object? orderRows = freezed,}) {
  return _then(_self.copyWith(
deviceOrderId: freezed == deviceOrderId ? _self.deviceOrderId : deviceOrderId // ignore: cast_nullable_to_non_nullable
as int?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int?,salesmanId: freezed == salesmanId ? _self.salesmanId : salesmanId // ignore: cast_nullable_to_non_nullable
as int?,deviceOrderDateTime: freezed == deviceOrderDateTime ? _self.deviceOrderDateTime : deviceOrderDateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,orderRows: freezed == orderRows ? _self.orderRows : orderRows // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "DeviceOrderID")  int? deviceOrderId, @JsonKey(name: "CustomerId")  int? customerId, @JsonKey(name: "SalesmanId")  int? salesmanId, @JsonKey(name: "DeviceOrderDateTime")  DateTime? deviceOrderDateTime, @JsonKey(name: "OrderRows")  List<SyncOrderRow>? orderRows)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SyncOrdersModel() when $default != null:
return $default(_that.deviceOrderId,_that.customerId,_that.salesmanId,_that.deviceOrderDateTime,_that.orderRows);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "DeviceOrderID")  int? deviceOrderId, @JsonKey(name: "CustomerId")  int? customerId, @JsonKey(name: "SalesmanId")  int? salesmanId, @JsonKey(name: "DeviceOrderDateTime")  DateTime? deviceOrderDateTime, @JsonKey(name: "OrderRows")  List<SyncOrderRow>? orderRows)  $default,) {final _that = this;
switch (_that) {
case _SyncOrdersModel():
return $default(_that.deviceOrderId,_that.customerId,_that.salesmanId,_that.deviceOrderDateTime,_that.orderRows);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "DeviceOrderID")  int? deviceOrderId, @JsonKey(name: "CustomerId")  int? customerId, @JsonKey(name: "SalesmanId")  int? salesmanId, @JsonKey(name: "DeviceOrderDateTime")  DateTime? deviceOrderDateTime, @JsonKey(name: "OrderRows")  List<SyncOrderRow>? orderRows)?  $default,) {final _that = this;
switch (_that) {
case _SyncOrdersModel() when $default != null:
return $default(_that.deviceOrderId,_that.customerId,_that.salesmanId,_that.deviceOrderDateTime,_that.orderRows);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SyncOrdersModel implements SyncOrdersModel {
  const _SyncOrdersModel({@JsonKey(name: "DeviceOrderID") this.deviceOrderId, @JsonKey(name: "CustomerId") this.customerId, @JsonKey(name: "SalesmanId") this.salesmanId, @JsonKey(name: "DeviceOrderDateTime") this.deviceOrderDateTime, @JsonKey(name: "OrderRows") final  List<SyncOrderRow>? orderRows}): _orderRows = orderRows;
  factory _SyncOrdersModel.fromJson(Map<String, dynamic> json) => _$SyncOrdersModelFromJson(json);

@override@JsonKey(name: "DeviceOrderID") final  int? deviceOrderId;
@override@JsonKey(name: "CustomerId") final  int? customerId;
@override@JsonKey(name: "SalesmanId") final  int? salesmanId;
@override@JsonKey(name: "DeviceOrderDateTime") final  DateTime? deviceOrderDateTime;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SyncOrdersModel&&(identical(other.deviceOrderId, deviceOrderId) || other.deviceOrderId == deviceOrderId)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.salesmanId, salesmanId) || other.salesmanId == salesmanId)&&(identical(other.deviceOrderDateTime, deviceOrderDateTime) || other.deviceOrderDateTime == deviceOrderDateTime)&&const DeepCollectionEquality().equals(other._orderRows, _orderRows));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceOrderId,customerId,salesmanId,deviceOrderDateTime,const DeepCollectionEquality().hash(_orderRows));

@override
String toString() {
  return 'SyncOrdersModel(deviceOrderId: $deviceOrderId, customerId: $customerId, salesmanId: $salesmanId, deviceOrderDateTime: $deviceOrderDateTime, orderRows: $orderRows)';
}


}

/// @nodoc
abstract mixin class _$SyncOrdersModelCopyWith<$Res> implements $SyncOrdersModelCopyWith<$Res> {
  factory _$SyncOrdersModelCopyWith(_SyncOrdersModel value, $Res Function(_SyncOrdersModel) _then) = __$SyncOrdersModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "DeviceOrderID") int? deviceOrderId,@JsonKey(name: "CustomerId") int? customerId,@JsonKey(name: "SalesmanId") int? salesmanId,@JsonKey(name: "DeviceOrderDateTime") DateTime? deviceOrderDateTime,@JsonKey(name: "OrderRows") List<SyncOrderRow>? orderRows
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
@override @pragma('vm:prefer-inline') $Res call({Object? deviceOrderId = freezed,Object? customerId = freezed,Object? salesmanId = freezed,Object? deviceOrderDateTime = freezed,Object? orderRows = freezed,}) {
  return _then(_SyncOrdersModel(
deviceOrderId: freezed == deviceOrderId ? _self.deviceOrderId : deviceOrderId // ignore: cast_nullable_to_non_nullable
as int?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int?,salesmanId: freezed == salesmanId ? _self.salesmanId : salesmanId // ignore: cast_nullable_to_non_nullable
as int?,deviceOrderDateTime: freezed == deviceOrderDateTime ? _self.deviceOrderDateTime : deviceOrderDateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,orderRows: freezed == orderRows ? _self._orderRows : orderRows // ignore: cast_nullable_to_non_nullable
as List<SyncOrderRow>?,
  ));
}


}


/// @nodoc
mixin _$SyncOrderRow {

@JsonKey(name: "OrderId") int? get orderId;@JsonKey(name: "ProductId") int? get productId;@JsonKey(name: "Qty") int? get qty;@JsonKey(name: "Bonus") int? get bonus;@JsonKey(name: "DiscRatio") double? get discRatio;@JsonKey(name: "Price") double? get price;
/// Create a copy of SyncOrderRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncOrderRowCopyWith<SyncOrderRow> get copyWith => _$SyncOrderRowCopyWithImpl<SyncOrderRow>(this as SyncOrderRow, _$identity);

  /// Serializes this SyncOrderRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncOrderRow&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.qty, qty) || other.qty == qty)&&(identical(other.bonus, bonus) || other.bonus == bonus)&&(identical(other.discRatio, discRatio) || other.discRatio == discRatio)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderId,productId,qty,bonus,discRatio,price);

@override
String toString() {
  return 'SyncOrderRow(orderId: $orderId, productId: $productId, qty: $qty, bonus: $bonus, discRatio: $discRatio, price: $price)';
}


}

/// @nodoc
abstract mixin class $SyncOrderRowCopyWith<$Res>  {
  factory $SyncOrderRowCopyWith(SyncOrderRow value, $Res Function(SyncOrderRow) _then) = _$SyncOrderRowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "OrderId") int? orderId,@JsonKey(name: "ProductId") int? productId,@JsonKey(name: "Qty") int? qty,@JsonKey(name: "Bonus") int? bonus,@JsonKey(name: "DiscRatio") double? discRatio,@JsonKey(name: "Price") double? price
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
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = freezed,Object? productId = freezed,Object? qty = freezed,Object? bonus = freezed,Object? discRatio = freezed,Object? price = freezed,}) {
  return _then(_self.copyWith(
orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,qty: freezed == qty ? _self.qty : qty // ignore: cast_nullable_to_non_nullable
as int?,bonus: freezed == bonus ? _self.bonus : bonus // ignore: cast_nullable_to_non_nullable
as int?,discRatio: freezed == discRatio ? _self.discRatio : discRatio // ignore: cast_nullable_to_non_nullable
as double?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "OrderId")  int? orderId, @JsonKey(name: "ProductId")  int? productId, @JsonKey(name: "Qty")  int? qty, @JsonKey(name: "Bonus")  int? bonus, @JsonKey(name: "DiscRatio")  double? discRatio, @JsonKey(name: "Price")  double? price)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SyncOrderRow() when $default != null:
return $default(_that.orderId,_that.productId,_that.qty,_that.bonus,_that.discRatio,_that.price);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "OrderId")  int? orderId, @JsonKey(name: "ProductId")  int? productId, @JsonKey(name: "Qty")  int? qty, @JsonKey(name: "Bonus")  int? bonus, @JsonKey(name: "DiscRatio")  double? discRatio, @JsonKey(name: "Price")  double? price)  $default,) {final _that = this;
switch (_that) {
case _SyncOrderRow():
return $default(_that.orderId,_that.productId,_that.qty,_that.bonus,_that.discRatio,_that.price);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "OrderId")  int? orderId, @JsonKey(name: "ProductId")  int? productId, @JsonKey(name: "Qty")  int? qty, @JsonKey(name: "Bonus")  int? bonus, @JsonKey(name: "DiscRatio")  double? discRatio, @JsonKey(name: "Price")  double? price)?  $default,) {final _that = this;
switch (_that) {
case _SyncOrderRow() when $default != null:
return $default(_that.orderId,_that.productId,_that.qty,_that.bonus,_that.discRatio,_that.price);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SyncOrderRow implements SyncOrderRow {
  const _SyncOrderRow({@JsonKey(name: "OrderId") this.orderId, @JsonKey(name: "ProductId") this.productId, @JsonKey(name: "Qty") this.qty, @JsonKey(name: "Bonus") this.bonus, @JsonKey(name: "DiscRatio") this.discRatio, @JsonKey(name: "Price") this.price});
  factory _SyncOrderRow.fromJson(Map<String, dynamic> json) => _$SyncOrderRowFromJson(json);

@override@JsonKey(name: "OrderId") final  int? orderId;
@override@JsonKey(name: "ProductId") final  int? productId;
@override@JsonKey(name: "Qty") final  int? qty;
@override@JsonKey(name: "Bonus") final  int? bonus;
@override@JsonKey(name: "DiscRatio") final  double? discRatio;
@override@JsonKey(name: "Price") final  double? price;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SyncOrderRow&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.qty, qty) || other.qty == qty)&&(identical(other.bonus, bonus) || other.bonus == bonus)&&(identical(other.discRatio, discRatio) || other.discRatio == discRatio)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderId,productId,qty,bonus,discRatio,price);

@override
String toString() {
  return 'SyncOrderRow(orderId: $orderId, productId: $productId, qty: $qty, bonus: $bonus, discRatio: $discRatio, price: $price)';
}


}

/// @nodoc
abstract mixin class _$SyncOrderRowCopyWith<$Res> implements $SyncOrderRowCopyWith<$Res> {
  factory _$SyncOrderRowCopyWith(_SyncOrderRow value, $Res Function(_SyncOrderRow) _then) = __$SyncOrderRowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "OrderId") int? orderId,@JsonKey(name: "ProductId") int? productId,@JsonKey(name: "Qty") int? qty,@JsonKey(name: "Bonus") int? bonus,@JsonKey(name: "DiscRatio") double? discRatio,@JsonKey(name: "Price") double? price
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
@override @pragma('vm:prefer-inline') $Res call({Object? orderId = freezed,Object? productId = freezed,Object? qty = freezed,Object? bonus = freezed,Object? discRatio = freezed,Object? price = freezed,}) {
  return _then(_SyncOrderRow(
orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,qty: freezed == qty ? _self.qty : qty // ignore: cast_nullable_to_non_nullable
as int?,bonus: freezed == bonus ? _self.bonus : bonus // ignore: cast_nullable_to_non_nullable
as int?,discRatio: freezed == discRatio ? _self.discRatio : discRatio // ignore: cast_nullable_to_non_nullable
as double?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
