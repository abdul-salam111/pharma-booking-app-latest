// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_order_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetOrderResponse {

// ✅ Map PascalCase API keys to camelCase Dart fields
@JsonKey(name: 'TenantOrderId') int? get tenantOrderId;@JsonKey(name: 'SalesmanOrderId') int? get salesmanOrderId;@JsonKey(name: 'DeviceOrderID') int? get deviceOrderId;// Note: ID not Id
@JsonKey(name: 'CustomerId') int? get customerId;@JsonKey(name: 'SalesmanId') int? get salesmanId;@JsonKey(name: 'OrderTime') DateTime? get orderTime;@JsonKey(name: 'SyncDate') DateTime? get syncDate;@JsonKey(name: 'OrderRows') List<OrderRow> get orderRows;@JsonKey(name: 'ID') int? get id;// API uses 'ID' not 'Id'
@JsonKey(name: 'TenantID') int? get tenantId;
/// Create a copy of GetOrderResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetOrderResponseCopyWith<GetOrderResponse> get copyWith => _$GetOrderResponseCopyWithImpl<GetOrderResponse>(this as GetOrderResponse, _$identity);

  /// Serializes this GetOrderResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetOrderResponse&&(identical(other.tenantOrderId, tenantOrderId) || other.tenantOrderId == tenantOrderId)&&(identical(other.salesmanOrderId, salesmanOrderId) || other.salesmanOrderId == salesmanOrderId)&&(identical(other.deviceOrderId, deviceOrderId) || other.deviceOrderId == deviceOrderId)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.salesmanId, salesmanId) || other.salesmanId == salesmanId)&&(identical(other.orderTime, orderTime) || other.orderTime == orderTime)&&(identical(other.syncDate, syncDate) || other.syncDate == syncDate)&&const DeepCollectionEquality().equals(other.orderRows, orderRows)&&(identical(other.id, id) || other.id == id)&&(identical(other.tenantId, tenantId) || other.tenantId == tenantId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tenantOrderId,salesmanOrderId,deviceOrderId,customerId,salesmanId,orderTime,syncDate,const DeepCollectionEquality().hash(orderRows),id,tenantId);

@override
String toString() {
  return 'GetOrderResponse(tenantOrderId: $tenantOrderId, salesmanOrderId: $salesmanOrderId, deviceOrderId: $deviceOrderId, customerId: $customerId, salesmanId: $salesmanId, orderTime: $orderTime, syncDate: $syncDate, orderRows: $orderRows, id: $id, tenantId: $tenantId)';
}


}

/// @nodoc
abstract mixin class $GetOrderResponseCopyWith<$Res>  {
  factory $GetOrderResponseCopyWith(GetOrderResponse value, $Res Function(GetOrderResponse) _then) = _$GetOrderResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'TenantOrderId') int? tenantOrderId,@JsonKey(name: 'SalesmanOrderId') int? salesmanOrderId,@JsonKey(name: 'DeviceOrderID') int? deviceOrderId,@JsonKey(name: 'CustomerId') int? customerId,@JsonKey(name: 'SalesmanId') int? salesmanId,@JsonKey(name: 'OrderTime') DateTime? orderTime,@JsonKey(name: 'SyncDate') DateTime? syncDate,@JsonKey(name: 'OrderRows') List<OrderRow> orderRows,@JsonKey(name: 'ID') int? id,@JsonKey(name: 'TenantID') int? tenantId
});




}
/// @nodoc
class _$GetOrderResponseCopyWithImpl<$Res>
    implements $GetOrderResponseCopyWith<$Res> {
  _$GetOrderResponseCopyWithImpl(this._self, this._then);

  final GetOrderResponse _self;
  final $Res Function(GetOrderResponse) _then;

/// Create a copy of GetOrderResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tenantOrderId = freezed,Object? salesmanOrderId = freezed,Object? deviceOrderId = freezed,Object? customerId = freezed,Object? salesmanId = freezed,Object? orderTime = freezed,Object? syncDate = freezed,Object? orderRows = null,Object? id = freezed,Object? tenantId = freezed,}) {
  return _then(_self.copyWith(
tenantOrderId: freezed == tenantOrderId ? _self.tenantOrderId : tenantOrderId // ignore: cast_nullable_to_non_nullable
as int?,salesmanOrderId: freezed == salesmanOrderId ? _self.salesmanOrderId : salesmanOrderId // ignore: cast_nullable_to_non_nullable
as int?,deviceOrderId: freezed == deviceOrderId ? _self.deviceOrderId : deviceOrderId // ignore: cast_nullable_to_non_nullable
as int?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int?,salesmanId: freezed == salesmanId ? _self.salesmanId : salesmanId // ignore: cast_nullable_to_non_nullable
as int?,orderTime: freezed == orderTime ? _self.orderTime : orderTime // ignore: cast_nullable_to_non_nullable
as DateTime?,syncDate: freezed == syncDate ? _self.syncDate : syncDate // ignore: cast_nullable_to_non_nullable
as DateTime?,orderRows: null == orderRows ? _self.orderRows : orderRows // ignore: cast_nullable_to_non_nullable
as List<OrderRow>,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,tenantId: freezed == tenantId ? _self.tenantId : tenantId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetOrderResponse].
extension GetOrderResponsePatterns on GetOrderResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetOrderResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetOrderResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetOrderResponse value)  $default,){
final _that = this;
switch (_that) {
case _GetOrderResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetOrderResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GetOrderResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'TenantOrderId')  int? tenantOrderId, @JsonKey(name: 'SalesmanOrderId')  int? salesmanOrderId, @JsonKey(name: 'DeviceOrderID')  int? deviceOrderId, @JsonKey(name: 'CustomerId')  int? customerId, @JsonKey(name: 'SalesmanId')  int? salesmanId, @JsonKey(name: 'OrderTime')  DateTime? orderTime, @JsonKey(name: 'SyncDate')  DateTime? syncDate, @JsonKey(name: 'OrderRows')  List<OrderRow> orderRows, @JsonKey(name: 'ID')  int? id, @JsonKey(name: 'TenantID')  int? tenantId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetOrderResponse() when $default != null:
return $default(_that.tenantOrderId,_that.salesmanOrderId,_that.deviceOrderId,_that.customerId,_that.salesmanId,_that.orderTime,_that.syncDate,_that.orderRows,_that.id,_that.tenantId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'TenantOrderId')  int? tenantOrderId, @JsonKey(name: 'SalesmanOrderId')  int? salesmanOrderId, @JsonKey(name: 'DeviceOrderID')  int? deviceOrderId, @JsonKey(name: 'CustomerId')  int? customerId, @JsonKey(name: 'SalesmanId')  int? salesmanId, @JsonKey(name: 'OrderTime')  DateTime? orderTime, @JsonKey(name: 'SyncDate')  DateTime? syncDate, @JsonKey(name: 'OrderRows')  List<OrderRow> orderRows, @JsonKey(name: 'ID')  int? id, @JsonKey(name: 'TenantID')  int? tenantId)  $default,) {final _that = this;
switch (_that) {
case _GetOrderResponse():
return $default(_that.tenantOrderId,_that.salesmanOrderId,_that.deviceOrderId,_that.customerId,_that.salesmanId,_that.orderTime,_that.syncDate,_that.orderRows,_that.id,_that.tenantId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'TenantOrderId')  int? tenantOrderId, @JsonKey(name: 'SalesmanOrderId')  int? salesmanOrderId, @JsonKey(name: 'DeviceOrderID')  int? deviceOrderId, @JsonKey(name: 'CustomerId')  int? customerId, @JsonKey(name: 'SalesmanId')  int? salesmanId, @JsonKey(name: 'OrderTime')  DateTime? orderTime, @JsonKey(name: 'SyncDate')  DateTime? syncDate, @JsonKey(name: 'OrderRows')  List<OrderRow> orderRows, @JsonKey(name: 'ID')  int? id, @JsonKey(name: 'TenantID')  int? tenantId)?  $default,) {final _that = this;
switch (_that) {
case _GetOrderResponse() when $default != null:
return $default(_that.tenantOrderId,_that.salesmanOrderId,_that.deviceOrderId,_that.customerId,_that.salesmanId,_that.orderTime,_that.syncDate,_that.orderRows,_that.id,_that.tenantId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetOrderResponse implements GetOrderResponse {
  const _GetOrderResponse({@JsonKey(name: 'TenantOrderId') this.tenantOrderId, @JsonKey(name: 'SalesmanOrderId') this.salesmanOrderId, @JsonKey(name: 'DeviceOrderID') this.deviceOrderId, @JsonKey(name: 'CustomerId') this.customerId, @JsonKey(name: 'SalesmanId') this.salesmanId, @JsonKey(name: 'OrderTime') this.orderTime, @JsonKey(name: 'SyncDate') this.syncDate, @JsonKey(name: 'OrderRows') final  List<OrderRow> orderRows = const [], @JsonKey(name: 'ID') this.id, @JsonKey(name: 'TenantID') this.tenantId}): _orderRows = orderRows;
  factory _GetOrderResponse.fromJson(Map<String, dynamic> json) => _$GetOrderResponseFromJson(json);

// ✅ Map PascalCase API keys to camelCase Dart fields
@override@JsonKey(name: 'TenantOrderId') final  int? tenantOrderId;
@override@JsonKey(name: 'SalesmanOrderId') final  int? salesmanOrderId;
@override@JsonKey(name: 'DeviceOrderID') final  int? deviceOrderId;
// Note: ID not Id
@override@JsonKey(name: 'CustomerId') final  int? customerId;
@override@JsonKey(name: 'SalesmanId') final  int? salesmanId;
@override@JsonKey(name: 'OrderTime') final  DateTime? orderTime;
@override@JsonKey(name: 'SyncDate') final  DateTime? syncDate;
 final  List<OrderRow> _orderRows;
@override@JsonKey(name: 'OrderRows') List<OrderRow> get orderRows {
  if (_orderRows is EqualUnmodifiableListView) return _orderRows;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_orderRows);
}

@override@JsonKey(name: 'ID') final  int? id;
// API uses 'ID' not 'Id'
@override@JsonKey(name: 'TenantID') final  int? tenantId;

/// Create a copy of GetOrderResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetOrderResponseCopyWith<_GetOrderResponse> get copyWith => __$GetOrderResponseCopyWithImpl<_GetOrderResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetOrderResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetOrderResponse&&(identical(other.tenantOrderId, tenantOrderId) || other.tenantOrderId == tenantOrderId)&&(identical(other.salesmanOrderId, salesmanOrderId) || other.salesmanOrderId == salesmanOrderId)&&(identical(other.deviceOrderId, deviceOrderId) || other.deviceOrderId == deviceOrderId)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.salesmanId, salesmanId) || other.salesmanId == salesmanId)&&(identical(other.orderTime, orderTime) || other.orderTime == orderTime)&&(identical(other.syncDate, syncDate) || other.syncDate == syncDate)&&const DeepCollectionEquality().equals(other._orderRows, _orderRows)&&(identical(other.id, id) || other.id == id)&&(identical(other.tenantId, tenantId) || other.tenantId == tenantId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tenantOrderId,salesmanOrderId,deviceOrderId,customerId,salesmanId,orderTime,syncDate,const DeepCollectionEquality().hash(_orderRows),id,tenantId);

@override
String toString() {
  return 'GetOrderResponse(tenantOrderId: $tenantOrderId, salesmanOrderId: $salesmanOrderId, deviceOrderId: $deviceOrderId, customerId: $customerId, salesmanId: $salesmanId, orderTime: $orderTime, syncDate: $syncDate, orderRows: $orderRows, id: $id, tenantId: $tenantId)';
}


}

/// @nodoc
abstract mixin class _$GetOrderResponseCopyWith<$Res> implements $GetOrderResponseCopyWith<$Res> {
  factory _$GetOrderResponseCopyWith(_GetOrderResponse value, $Res Function(_GetOrderResponse) _then) = __$GetOrderResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'TenantOrderId') int? tenantOrderId,@JsonKey(name: 'SalesmanOrderId') int? salesmanOrderId,@JsonKey(name: 'DeviceOrderID') int? deviceOrderId,@JsonKey(name: 'CustomerId') int? customerId,@JsonKey(name: 'SalesmanId') int? salesmanId,@JsonKey(name: 'OrderTime') DateTime? orderTime,@JsonKey(name: 'SyncDate') DateTime? syncDate,@JsonKey(name: 'OrderRows') List<OrderRow> orderRows,@JsonKey(name: 'ID') int? id,@JsonKey(name: 'TenantID') int? tenantId
});




}
/// @nodoc
class __$GetOrderResponseCopyWithImpl<$Res>
    implements _$GetOrderResponseCopyWith<$Res> {
  __$GetOrderResponseCopyWithImpl(this._self, this._then);

  final _GetOrderResponse _self;
  final $Res Function(_GetOrderResponse) _then;

/// Create a copy of GetOrderResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tenantOrderId = freezed,Object? salesmanOrderId = freezed,Object? deviceOrderId = freezed,Object? customerId = freezed,Object? salesmanId = freezed,Object? orderTime = freezed,Object? syncDate = freezed,Object? orderRows = null,Object? id = freezed,Object? tenantId = freezed,}) {
  return _then(_GetOrderResponse(
tenantOrderId: freezed == tenantOrderId ? _self.tenantOrderId : tenantOrderId // ignore: cast_nullable_to_non_nullable
as int?,salesmanOrderId: freezed == salesmanOrderId ? _self.salesmanOrderId : salesmanOrderId // ignore: cast_nullable_to_non_nullable
as int?,deviceOrderId: freezed == deviceOrderId ? _self.deviceOrderId : deviceOrderId // ignore: cast_nullable_to_non_nullable
as int?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int?,salesmanId: freezed == salesmanId ? _self.salesmanId : salesmanId // ignore: cast_nullable_to_non_nullable
as int?,orderTime: freezed == orderTime ? _self.orderTime : orderTime // ignore: cast_nullable_to_non_nullable
as DateTime?,syncDate: freezed == syncDate ? _self.syncDate : syncDate // ignore: cast_nullable_to_non_nullable
as DateTime?,orderRows: null == orderRows ? _self._orderRows : orderRows // ignore: cast_nullable_to_non_nullable
as List<OrderRow>,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,tenantId: freezed == tenantId ? _self.tenantId : tenantId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$OrderRow {

// ✅ Map PascalCase API keys to camelCase Dart fields
@JsonKey(name: 'OrderId') int? get orderId;@JsonKey(name: 'ProductId') int? get productId;@JsonKey(name: 'TenantProdId') int? get tenantProdId;@JsonKey(name: 'Qty') int? get qty;@JsonKey(name: 'Bonus') int? get bonus;@JsonKey(name: 'DiscRatio') double? get discRatio;@JsonKey(name: 'Price') double? get price;@JsonKey(name: 'ID') int? get id;// API uses 'ID' not 'Id'
@JsonKey(name: 'TenantID') int? get tenantId;
/// Create a copy of OrderRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderRowCopyWith<OrderRow> get copyWith => _$OrderRowCopyWithImpl<OrderRow>(this as OrderRow, _$identity);

  /// Serializes this OrderRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderRow&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.tenantProdId, tenantProdId) || other.tenantProdId == tenantProdId)&&(identical(other.qty, qty) || other.qty == qty)&&(identical(other.bonus, bonus) || other.bonus == bonus)&&(identical(other.discRatio, discRatio) || other.discRatio == discRatio)&&(identical(other.price, price) || other.price == price)&&(identical(other.id, id) || other.id == id)&&(identical(other.tenantId, tenantId) || other.tenantId == tenantId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderId,productId,tenantProdId,qty,bonus,discRatio,price,id,tenantId);

@override
String toString() {
  return 'OrderRow(orderId: $orderId, productId: $productId, tenantProdId: $tenantProdId, qty: $qty, bonus: $bonus, discRatio: $discRatio, price: $price, id: $id, tenantId: $tenantId)';
}


}

/// @nodoc
abstract mixin class $OrderRowCopyWith<$Res>  {
  factory $OrderRowCopyWith(OrderRow value, $Res Function(OrderRow) _then) = _$OrderRowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'OrderId') int? orderId,@JsonKey(name: 'ProductId') int? productId,@JsonKey(name: 'TenantProdId') int? tenantProdId,@JsonKey(name: 'Qty') int? qty,@JsonKey(name: 'Bonus') int? bonus,@JsonKey(name: 'DiscRatio') double? discRatio,@JsonKey(name: 'Price') double? price,@JsonKey(name: 'ID') int? id,@JsonKey(name: 'TenantID') int? tenantId
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
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = freezed,Object? productId = freezed,Object? tenantProdId = freezed,Object? qty = freezed,Object? bonus = freezed,Object? discRatio = freezed,Object? price = freezed,Object? id = freezed,Object? tenantId = freezed,}) {
  return _then(_self.copyWith(
orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,tenantProdId: freezed == tenantProdId ? _self.tenantProdId : tenantProdId // ignore: cast_nullable_to_non_nullable
as int?,qty: freezed == qty ? _self.qty : qty // ignore: cast_nullable_to_non_nullable
as int?,bonus: freezed == bonus ? _self.bonus : bonus // ignore: cast_nullable_to_non_nullable
as int?,discRatio: freezed == discRatio ? _self.discRatio : discRatio // ignore: cast_nullable_to_non_nullable
as double?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,tenantId: freezed == tenantId ? _self.tenantId : tenantId // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'OrderId')  int? orderId, @JsonKey(name: 'ProductId')  int? productId, @JsonKey(name: 'TenantProdId')  int? tenantProdId, @JsonKey(name: 'Qty')  int? qty, @JsonKey(name: 'Bonus')  int? bonus, @JsonKey(name: 'DiscRatio')  double? discRatio, @JsonKey(name: 'Price')  double? price, @JsonKey(name: 'ID')  int? id, @JsonKey(name: 'TenantID')  int? tenantId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderRow() when $default != null:
return $default(_that.orderId,_that.productId,_that.tenantProdId,_that.qty,_that.bonus,_that.discRatio,_that.price,_that.id,_that.tenantId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'OrderId')  int? orderId, @JsonKey(name: 'ProductId')  int? productId, @JsonKey(name: 'TenantProdId')  int? tenantProdId, @JsonKey(name: 'Qty')  int? qty, @JsonKey(name: 'Bonus')  int? bonus, @JsonKey(name: 'DiscRatio')  double? discRatio, @JsonKey(name: 'Price')  double? price, @JsonKey(name: 'ID')  int? id, @JsonKey(name: 'TenantID')  int? tenantId)  $default,) {final _that = this;
switch (_that) {
case _OrderRow():
return $default(_that.orderId,_that.productId,_that.tenantProdId,_that.qty,_that.bonus,_that.discRatio,_that.price,_that.id,_that.tenantId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'OrderId')  int? orderId, @JsonKey(name: 'ProductId')  int? productId, @JsonKey(name: 'TenantProdId')  int? tenantProdId, @JsonKey(name: 'Qty')  int? qty, @JsonKey(name: 'Bonus')  int? bonus, @JsonKey(name: 'DiscRatio')  double? discRatio, @JsonKey(name: 'Price')  double? price, @JsonKey(name: 'ID')  int? id, @JsonKey(name: 'TenantID')  int? tenantId)?  $default,) {final _that = this;
switch (_that) {
case _OrderRow() when $default != null:
return $default(_that.orderId,_that.productId,_that.tenantProdId,_that.qty,_that.bonus,_that.discRatio,_that.price,_that.id,_that.tenantId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderRow implements OrderRow {
  const _OrderRow({@JsonKey(name: 'OrderId') this.orderId, @JsonKey(name: 'ProductId') this.productId, @JsonKey(name: 'TenantProdId') this.tenantProdId, @JsonKey(name: 'Qty') this.qty, @JsonKey(name: 'Bonus') this.bonus, @JsonKey(name: 'DiscRatio') this.discRatio, @JsonKey(name: 'Price') this.price, @JsonKey(name: 'ID') this.id, @JsonKey(name: 'TenantID') this.tenantId});
  factory _OrderRow.fromJson(Map<String, dynamic> json) => _$OrderRowFromJson(json);

// ✅ Map PascalCase API keys to camelCase Dart fields
@override@JsonKey(name: 'OrderId') final  int? orderId;
@override@JsonKey(name: 'ProductId') final  int? productId;
@override@JsonKey(name: 'TenantProdId') final  int? tenantProdId;
@override@JsonKey(name: 'Qty') final  int? qty;
@override@JsonKey(name: 'Bonus') final  int? bonus;
@override@JsonKey(name: 'DiscRatio') final  double? discRatio;
@override@JsonKey(name: 'Price') final  double? price;
@override@JsonKey(name: 'ID') final  int? id;
// API uses 'ID' not 'Id'
@override@JsonKey(name: 'TenantID') final  int? tenantId;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderRow&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.tenantProdId, tenantProdId) || other.tenantProdId == tenantProdId)&&(identical(other.qty, qty) || other.qty == qty)&&(identical(other.bonus, bonus) || other.bonus == bonus)&&(identical(other.discRatio, discRatio) || other.discRatio == discRatio)&&(identical(other.price, price) || other.price == price)&&(identical(other.id, id) || other.id == id)&&(identical(other.tenantId, tenantId) || other.tenantId == tenantId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderId,productId,tenantProdId,qty,bonus,discRatio,price,id,tenantId);

@override
String toString() {
  return 'OrderRow(orderId: $orderId, productId: $productId, tenantProdId: $tenantProdId, qty: $qty, bonus: $bonus, discRatio: $discRatio, price: $price, id: $id, tenantId: $tenantId)';
}


}

/// @nodoc
abstract mixin class _$OrderRowCopyWith<$Res> implements $OrderRowCopyWith<$Res> {
  factory _$OrderRowCopyWith(_OrderRow value, $Res Function(_OrderRow) _then) = __$OrderRowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'OrderId') int? orderId,@JsonKey(name: 'ProductId') int? productId,@JsonKey(name: 'TenantProdId') int? tenantProdId,@JsonKey(name: 'Qty') int? qty,@JsonKey(name: 'Bonus') int? bonus,@JsonKey(name: 'DiscRatio') double? discRatio,@JsonKey(name: 'Price') double? price,@JsonKey(name: 'ID') int? id,@JsonKey(name: 'TenantID') int? tenantId
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
@override @pragma('vm:prefer-inline') $Res call({Object? orderId = freezed,Object? productId = freezed,Object? tenantProdId = freezed,Object? qty = freezed,Object? bonus = freezed,Object? discRatio = freezed,Object? price = freezed,Object? id = freezed,Object? tenantId = freezed,}) {
  return _then(_OrderRow(
orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,tenantProdId: freezed == tenantProdId ? _self.tenantProdId : tenantProdId // ignore: cast_nullable_to_non_nullable
as int?,qty: freezed == qty ? _self.qty : qty // ignore: cast_nullable_to_non_nullable
as int?,bonus: freezed == bonus ? _self.bonus : bonus // ignore: cast_nullable_to_non_nullable
as int?,discRatio: freezed == discRatio ? _self.discRatio : discRatio // ignore: cast_nullable_to_non_nullable
as double?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,tenantId: freezed == tenantId ? _self.tenantId : tenantId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
