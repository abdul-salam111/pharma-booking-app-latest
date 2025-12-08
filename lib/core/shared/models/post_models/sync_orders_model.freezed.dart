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

@JsonKey(name: "SalesmanOrderId") int? get salesmanOrderId;@JsonKey(name: "DeviceOrderID") int? get deviceOrderId;@JsonKey(name: "CustomerId") int? get customerId;@JsonKey(name: "SalesmanId") int? get salesmanId;@JsonKey(name: "DeviceOrderTime") DateTime? get deviceOrderTime;@JsonKey(name: "OrderRows") List<OrderRow>? get orderRows;@JsonKey(name: "DeviceOrderDateTime") DateTime? get deviceOrderDateTime;
/// Create a copy of SyncOrdersModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncOrdersModelCopyWith<SyncOrdersModel> get copyWith => _$SyncOrdersModelCopyWithImpl<SyncOrdersModel>(this as SyncOrdersModel, _$identity);

  /// Serializes this SyncOrdersModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncOrdersModel&&(identical(other.salesmanOrderId, salesmanOrderId) || other.salesmanOrderId == salesmanOrderId)&&(identical(other.deviceOrderId, deviceOrderId) || other.deviceOrderId == deviceOrderId)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.salesmanId, salesmanId) || other.salesmanId == salesmanId)&&(identical(other.deviceOrderTime, deviceOrderTime) || other.deviceOrderTime == deviceOrderTime)&&const DeepCollectionEquality().equals(other.orderRows, orderRows)&&(identical(other.deviceOrderDateTime, deviceOrderDateTime) || other.deviceOrderDateTime == deviceOrderDateTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,salesmanOrderId,deviceOrderId,customerId,salesmanId,deviceOrderTime,const DeepCollectionEquality().hash(orderRows),deviceOrderDateTime);

@override
String toString() {
  return 'SyncOrdersModel(salesmanOrderId: $salesmanOrderId, deviceOrderId: $deviceOrderId, customerId: $customerId, salesmanId: $salesmanId, deviceOrderTime: $deviceOrderTime, orderRows: $orderRows, deviceOrderDateTime: $deviceOrderDateTime)';
}


}

/// @nodoc
abstract mixin class $SyncOrdersModelCopyWith<$Res>  {
  factory $SyncOrdersModelCopyWith(SyncOrdersModel value, $Res Function(SyncOrdersModel) _then) = _$SyncOrdersModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "SalesmanOrderId") int? salesmanOrderId,@JsonKey(name: "DeviceOrderID") int? deviceOrderId,@JsonKey(name: "CustomerId") int? customerId,@JsonKey(name: "SalesmanId") int? salesmanId,@JsonKey(name: "DeviceOrderTime") DateTime? deviceOrderTime,@JsonKey(name: "OrderRows") List<OrderRow>? orderRows,@JsonKey(name: "DeviceOrderDateTime") DateTime? deviceOrderDateTime
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
@pragma('vm:prefer-inline') @override $Res call({Object? salesmanOrderId = freezed,Object? deviceOrderId = freezed,Object? customerId = freezed,Object? salesmanId = freezed,Object? deviceOrderTime = freezed,Object? orderRows = freezed,Object? deviceOrderDateTime = freezed,}) {
  return _then(_self.copyWith(
salesmanOrderId: freezed == salesmanOrderId ? _self.salesmanOrderId : salesmanOrderId // ignore: cast_nullable_to_non_nullable
as int?,deviceOrderId: freezed == deviceOrderId ? _self.deviceOrderId : deviceOrderId // ignore: cast_nullable_to_non_nullable
as int?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int?,salesmanId: freezed == salesmanId ? _self.salesmanId : salesmanId // ignore: cast_nullable_to_non_nullable
as int?,deviceOrderTime: freezed == deviceOrderTime ? _self.deviceOrderTime : deviceOrderTime // ignore: cast_nullable_to_non_nullable
as DateTime?,orderRows: freezed == orderRows ? _self.orderRows : orderRows // ignore: cast_nullable_to_non_nullable
as List<OrderRow>?,deviceOrderDateTime: freezed == deviceOrderDateTime ? _self.deviceOrderDateTime : deviceOrderDateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "SalesmanOrderId")  int? salesmanOrderId, @JsonKey(name: "DeviceOrderID")  int? deviceOrderId, @JsonKey(name: "CustomerId")  int? customerId, @JsonKey(name: "SalesmanId")  int? salesmanId, @JsonKey(name: "DeviceOrderTime")  DateTime? deviceOrderTime, @JsonKey(name: "OrderRows")  List<OrderRow>? orderRows, @JsonKey(name: "DeviceOrderDateTime")  DateTime? deviceOrderDateTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SyncOrdersModel() when $default != null:
return $default(_that.salesmanOrderId,_that.deviceOrderId,_that.customerId,_that.salesmanId,_that.deviceOrderTime,_that.orderRows,_that.deviceOrderDateTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "SalesmanOrderId")  int? salesmanOrderId, @JsonKey(name: "DeviceOrderID")  int? deviceOrderId, @JsonKey(name: "CustomerId")  int? customerId, @JsonKey(name: "SalesmanId")  int? salesmanId, @JsonKey(name: "DeviceOrderTime")  DateTime? deviceOrderTime, @JsonKey(name: "OrderRows")  List<OrderRow>? orderRows, @JsonKey(name: "DeviceOrderDateTime")  DateTime? deviceOrderDateTime)  $default,) {final _that = this;
switch (_that) {
case _SyncOrdersModel():
return $default(_that.salesmanOrderId,_that.deviceOrderId,_that.customerId,_that.salesmanId,_that.deviceOrderTime,_that.orderRows,_that.deviceOrderDateTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "SalesmanOrderId")  int? salesmanOrderId, @JsonKey(name: "DeviceOrderID")  int? deviceOrderId, @JsonKey(name: "CustomerId")  int? customerId, @JsonKey(name: "SalesmanId")  int? salesmanId, @JsonKey(name: "DeviceOrderTime")  DateTime? deviceOrderTime, @JsonKey(name: "OrderRows")  List<OrderRow>? orderRows, @JsonKey(name: "DeviceOrderDateTime")  DateTime? deviceOrderDateTime)?  $default,) {final _that = this;
switch (_that) {
case _SyncOrdersModel() when $default != null:
return $default(_that.salesmanOrderId,_that.deviceOrderId,_that.customerId,_that.salesmanId,_that.deviceOrderTime,_that.orderRows,_that.deviceOrderDateTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SyncOrdersModel implements SyncOrdersModel {
  const _SyncOrdersModel({@JsonKey(name: "SalesmanOrderId") this.salesmanOrderId, @JsonKey(name: "DeviceOrderID") this.deviceOrderId, @JsonKey(name: "CustomerId") this.customerId, @JsonKey(name: "SalesmanId") this.salesmanId, @JsonKey(name: "DeviceOrderTime") this.deviceOrderTime, @JsonKey(name: "OrderRows") final  List<OrderRow>? orderRows, @JsonKey(name: "DeviceOrderDateTime") this.deviceOrderDateTime}): _orderRows = orderRows;
  factory _SyncOrdersModel.fromJson(Map<String, dynamic> json) => _$SyncOrdersModelFromJson(json);

@override@JsonKey(name: "SalesmanOrderId") final  int? salesmanOrderId;
@override@JsonKey(name: "DeviceOrderID") final  int? deviceOrderId;
@override@JsonKey(name: "CustomerId") final  int? customerId;
@override@JsonKey(name: "SalesmanId") final  int? salesmanId;
@override@JsonKey(name: "DeviceOrderTime") final  DateTime? deviceOrderTime;
 final  List<OrderRow>? _orderRows;
@override@JsonKey(name: "OrderRows") List<OrderRow>? get orderRows {
  final value = _orderRows;
  if (value == null) return null;
  if (_orderRows is EqualUnmodifiableListView) return _orderRows;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "DeviceOrderDateTime") final  DateTime? deviceOrderDateTime;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SyncOrdersModel&&(identical(other.salesmanOrderId, salesmanOrderId) || other.salesmanOrderId == salesmanOrderId)&&(identical(other.deviceOrderId, deviceOrderId) || other.deviceOrderId == deviceOrderId)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.salesmanId, salesmanId) || other.salesmanId == salesmanId)&&(identical(other.deviceOrderTime, deviceOrderTime) || other.deviceOrderTime == deviceOrderTime)&&const DeepCollectionEquality().equals(other._orderRows, _orderRows)&&(identical(other.deviceOrderDateTime, deviceOrderDateTime) || other.deviceOrderDateTime == deviceOrderDateTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,salesmanOrderId,deviceOrderId,customerId,salesmanId,deviceOrderTime,const DeepCollectionEquality().hash(_orderRows),deviceOrderDateTime);

@override
String toString() {
  return 'SyncOrdersModel(salesmanOrderId: $salesmanOrderId, deviceOrderId: $deviceOrderId, customerId: $customerId, salesmanId: $salesmanId, deviceOrderTime: $deviceOrderTime, orderRows: $orderRows, deviceOrderDateTime: $deviceOrderDateTime)';
}


}

/// @nodoc
abstract mixin class _$SyncOrdersModelCopyWith<$Res> implements $SyncOrdersModelCopyWith<$Res> {
  factory _$SyncOrdersModelCopyWith(_SyncOrdersModel value, $Res Function(_SyncOrdersModel) _then) = __$SyncOrdersModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "SalesmanOrderId") int? salesmanOrderId,@JsonKey(name: "DeviceOrderID") int? deviceOrderId,@JsonKey(name: "CustomerId") int? customerId,@JsonKey(name: "SalesmanId") int? salesmanId,@JsonKey(name: "DeviceOrderTime") DateTime? deviceOrderTime,@JsonKey(name: "OrderRows") List<OrderRow>? orderRows,@JsonKey(name: "DeviceOrderDateTime") DateTime? deviceOrderDateTime
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
@override @pragma('vm:prefer-inline') $Res call({Object? salesmanOrderId = freezed,Object? deviceOrderId = freezed,Object? customerId = freezed,Object? salesmanId = freezed,Object? deviceOrderTime = freezed,Object? orderRows = freezed,Object? deviceOrderDateTime = freezed,}) {
  return _then(_SyncOrdersModel(
salesmanOrderId: freezed == salesmanOrderId ? _self.salesmanOrderId : salesmanOrderId // ignore: cast_nullable_to_non_nullable
as int?,deviceOrderId: freezed == deviceOrderId ? _self.deviceOrderId : deviceOrderId // ignore: cast_nullable_to_non_nullable
as int?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int?,salesmanId: freezed == salesmanId ? _self.salesmanId : salesmanId // ignore: cast_nullable_to_non_nullable
as int?,deviceOrderTime: freezed == deviceOrderTime ? _self.deviceOrderTime : deviceOrderTime // ignore: cast_nullable_to_non_nullable
as DateTime?,orderRows: freezed == orderRows ? _self._orderRows : orderRows // ignore: cast_nullable_to_non_nullable
as List<OrderRow>?,deviceOrderDateTime: freezed == deviceOrderDateTime ? _self.deviceOrderDateTime : deviceOrderDateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$OrderRow {

@JsonKey(name: "OrderId") int? get orderId;@JsonKey(name: "ProductId") int? get productId;@JsonKey(name: "Qty") int? get qty;@JsonKey(name: "Bonus") int? get bonus;@JsonKey(name: "DiscRatio") double? get discRatio;@JsonKey(name: "Price") double? get price;@JsonKey(name: "ID") int? get id;
/// Create a copy of OrderRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderRowCopyWith<OrderRow> get copyWith => _$OrderRowCopyWithImpl<OrderRow>(this as OrderRow, _$identity);

  /// Serializes this OrderRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderRow&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.qty, qty) || other.qty == qty)&&(identical(other.bonus, bonus) || other.bonus == bonus)&&(identical(other.discRatio, discRatio) || other.discRatio == discRatio)&&(identical(other.price, price) || other.price == price)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderId,productId,qty,bonus,discRatio,price,id);

@override
String toString() {
  return 'OrderRow(orderId: $orderId, productId: $productId, qty: $qty, bonus: $bonus, discRatio: $discRatio, price: $price, id: $id)';
}


}

/// @nodoc
abstract mixin class $OrderRowCopyWith<$Res>  {
  factory $OrderRowCopyWith(OrderRow value, $Res Function(OrderRow) _then) = _$OrderRowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "OrderId") int? orderId,@JsonKey(name: "ProductId") int? productId,@JsonKey(name: "Qty") int? qty,@JsonKey(name: "Bonus") int? bonus,@JsonKey(name: "DiscRatio") double? discRatio,@JsonKey(name: "Price") double? price,@JsonKey(name: "ID") int? id
});




}
/// @nodoc
class _$OrderRowCopyWithImpl<$Res>
    implements $OrderRowCopyWith<$Res> {
  _$OrderRowCopyWithImpl(this._self, this._then);

  final OrderRow _self;
  final $Res Function(OrderRow) _then;

/// Create a copy of OrderRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = freezed,Object? productId = freezed,Object? qty = freezed,Object? bonus = freezed,Object? discRatio = freezed,Object? price = freezed,Object? id = freezed,}) {
  return _then(_self.copyWith(
orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,qty: freezed == qty ? _self.qty : qty // ignore: cast_nullable_to_non_nullable
as int?,bonus: freezed == bonus ? _self.bonus : bonus // ignore: cast_nullable_to_non_nullable
as int?,discRatio: freezed == discRatio ? _self.discRatio : discRatio // ignore: cast_nullable_to_non_nullable
as double?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderRow].
extension OrderRowPatterns on OrderRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderRow value)  $default,){
final _that = this;
switch (_that) {
case _OrderRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderRow value)?  $default,){
final _that = this;
switch (_that) {
case _OrderRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "OrderId")  int? orderId, @JsonKey(name: "ProductId")  int? productId, @JsonKey(name: "Qty")  int? qty, @JsonKey(name: "Bonus")  int? bonus, @JsonKey(name: "DiscRatio")  double? discRatio, @JsonKey(name: "Price")  double? price, @JsonKey(name: "ID")  int? id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderRow() when $default != null:
return $default(_that.orderId,_that.productId,_that.qty,_that.bonus,_that.discRatio,_that.price,_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "OrderId")  int? orderId, @JsonKey(name: "ProductId")  int? productId, @JsonKey(name: "Qty")  int? qty, @JsonKey(name: "Bonus")  int? bonus, @JsonKey(name: "DiscRatio")  double? discRatio, @JsonKey(name: "Price")  double? price, @JsonKey(name: "ID")  int? id)  $default,) {final _that = this;
switch (_that) {
case _OrderRow():
return $default(_that.orderId,_that.productId,_that.qty,_that.bonus,_that.discRatio,_that.price,_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "OrderId")  int? orderId, @JsonKey(name: "ProductId")  int? productId, @JsonKey(name: "Qty")  int? qty, @JsonKey(name: "Bonus")  int? bonus, @JsonKey(name: "DiscRatio")  double? discRatio, @JsonKey(name: "Price")  double? price, @JsonKey(name: "ID")  int? id)?  $default,) {final _that = this;
switch (_that) {
case _OrderRow() when $default != null:
return $default(_that.orderId,_that.productId,_that.qty,_that.bonus,_that.discRatio,_that.price,_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderRow implements OrderRow {
  const _OrderRow({@JsonKey(name: "OrderId") this.orderId, @JsonKey(name: "ProductId") this.productId, @JsonKey(name: "Qty") this.qty, @JsonKey(name: "Bonus") this.bonus, @JsonKey(name: "DiscRatio") this.discRatio, @JsonKey(name: "Price") this.price, @JsonKey(name: "ID") this.id});
  factory _OrderRow.fromJson(Map<String, dynamic> json) => _$OrderRowFromJson(json);

@override@JsonKey(name: "OrderId") final  int? orderId;
@override@JsonKey(name: "ProductId") final  int? productId;
@override@JsonKey(name: "Qty") final  int? qty;
@override@JsonKey(name: "Bonus") final  int? bonus;
@override@JsonKey(name: "DiscRatio") final  double? discRatio;
@override@JsonKey(name: "Price") final  double? price;
@override@JsonKey(name: "ID") final  int? id;

/// Create a copy of OrderRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderRowCopyWith<_OrderRow> get copyWith => __$OrderRowCopyWithImpl<_OrderRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderRowToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderRow&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.qty, qty) || other.qty == qty)&&(identical(other.bonus, bonus) || other.bonus == bonus)&&(identical(other.discRatio, discRatio) || other.discRatio == discRatio)&&(identical(other.price, price) || other.price == price)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderId,productId,qty,bonus,discRatio,price,id);

@override
String toString() {
  return 'OrderRow(orderId: $orderId, productId: $productId, qty: $qty, bonus: $bonus, discRatio: $discRatio, price: $price, id: $id)';
}


}

/// @nodoc
abstract mixin class _$OrderRowCopyWith<$Res> implements $OrderRowCopyWith<$Res> {
  factory _$OrderRowCopyWith(_OrderRow value, $Res Function(_OrderRow) _then) = __$OrderRowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "OrderId") int? orderId,@JsonKey(name: "ProductId") int? productId,@JsonKey(name: "Qty") int? qty,@JsonKey(name: "Bonus") int? bonus,@JsonKey(name: "DiscRatio") double? discRatio,@JsonKey(name: "Price") double? price,@JsonKey(name: "ID") int? id
});




}
/// @nodoc
class __$OrderRowCopyWithImpl<$Res>
    implements _$OrderRowCopyWith<$Res> {
  __$OrderRowCopyWithImpl(this._self, this._then);

  final _OrderRow _self;
  final $Res Function(_OrderRow) _then;

/// Create a copy of OrderRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderId = freezed,Object? productId = freezed,Object? qty = freezed,Object? bonus = freezed,Object? discRatio = freezed,Object? price = freezed,Object? id = freezed,}) {
  return _then(_OrderRow(
orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,qty: freezed == qty ? _self.qty : qty // ignore: cast_nullable_to_non_nullable
as int?,bonus: freezed == bonus ? _self.bonus : bonus // ignore: cast_nullable_to_non_nullable
as int?,discRatio: freezed == discRatio ? _self.discRatio : discRatio // ignore: cast_nullable_to_non_nullable
as double?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
