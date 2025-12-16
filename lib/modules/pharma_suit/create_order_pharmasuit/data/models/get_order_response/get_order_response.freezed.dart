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

 int? get id; int? get tenantOrderId; DateTime? get orderDateTime; int? get deviceOrderID; List<String>? get errors;
/// Create a copy of GetOrderResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetOrderResponseCopyWith<GetOrderResponse> get copyWith => _$GetOrderResponseCopyWithImpl<GetOrderResponse>(this as GetOrderResponse, _$identity);

  /// Serializes this GetOrderResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetOrderResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.tenantOrderId, tenantOrderId) || other.tenantOrderId == tenantOrderId)&&(identical(other.orderDateTime, orderDateTime) || other.orderDateTime == orderDateTime)&&(identical(other.deviceOrderID, deviceOrderID) || other.deviceOrderID == deviceOrderID)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,tenantOrderId,orderDateTime,deviceOrderID,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'GetOrderResponse(id: $id, tenantOrderId: $tenantOrderId, orderDateTime: $orderDateTime, deviceOrderID: $deviceOrderID, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $GetOrderResponseCopyWith<$Res>  {
  factory $GetOrderResponseCopyWith(GetOrderResponse value, $Res Function(GetOrderResponse) _then) = _$GetOrderResponseCopyWithImpl;
@useResult
$Res call({
 int? id, int? tenantOrderId, DateTime? orderDateTime, int? deviceOrderID, List<String>? errors
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? tenantOrderId = freezed,Object? orderDateTime = freezed,Object? deviceOrderID = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,tenantOrderId: freezed == tenantOrderId ? _self.tenantOrderId : tenantOrderId // ignore: cast_nullable_to_non_nullable
as int?,orderDateTime: freezed == orderDateTime ? _self.orderDateTime : orderDateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,deviceOrderID: freezed == deviceOrderID ? _self.deviceOrderID : deviceOrderID // ignore: cast_nullable_to_non_nullable
as int?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? tenantOrderId,  DateTime? orderDateTime,  int? deviceOrderID,  List<String>? errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetOrderResponse() when $default != null:
return $default(_that.id,_that.tenantOrderId,_that.orderDateTime,_that.deviceOrderID,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? tenantOrderId,  DateTime? orderDateTime,  int? deviceOrderID,  List<String>? errors)  $default,) {final _that = this;
switch (_that) {
case _GetOrderResponse():
return $default(_that.id,_that.tenantOrderId,_that.orderDateTime,_that.deviceOrderID,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? tenantOrderId,  DateTime? orderDateTime,  int? deviceOrderID,  List<String>? errors)?  $default,) {final _that = this;
switch (_that) {
case _GetOrderResponse() when $default != null:
return $default(_that.id,_that.tenantOrderId,_that.orderDateTime,_that.deviceOrderID,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetOrderResponse implements GetOrderResponse {
  const _GetOrderResponse({this.id, this.tenantOrderId, this.orderDateTime, this.deviceOrderID, final  List<String>? errors}): _errors = errors;
  factory _GetOrderResponse.fromJson(Map<String, dynamic> json) => _$GetOrderResponseFromJson(json);

@override final  int? id;
@override final  int? tenantOrderId;
@override final  DateTime? orderDateTime;
@override final  int? deviceOrderID;
 final  List<String>? _errors;
@override List<String>? get errors {
  final value = _errors;
  if (value == null) return null;
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetOrderResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.tenantOrderId, tenantOrderId) || other.tenantOrderId == tenantOrderId)&&(identical(other.orderDateTime, orderDateTime) || other.orderDateTime == orderDateTime)&&(identical(other.deviceOrderID, deviceOrderID) || other.deviceOrderID == deviceOrderID)&&const DeepCollectionEquality().equals(other._errors, _errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,tenantOrderId,orderDateTime,deviceOrderID,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'GetOrderResponse(id: $id, tenantOrderId: $tenantOrderId, orderDateTime: $orderDateTime, deviceOrderID: $deviceOrderID, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$GetOrderResponseCopyWith<$Res> implements $GetOrderResponseCopyWith<$Res> {
  factory _$GetOrderResponseCopyWith(_GetOrderResponse value, $Res Function(_GetOrderResponse) _then) = __$GetOrderResponseCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? tenantOrderId, DateTime? orderDateTime, int? deviceOrderID, List<String>? errors
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? tenantOrderId = freezed,Object? orderDateTime = freezed,Object? deviceOrderID = freezed,Object? errors = freezed,}) {
  return _then(_GetOrderResponse(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,tenantOrderId: freezed == tenantOrderId ? _self.tenantOrderId : tenantOrderId // ignore: cast_nullable_to_non_nullable
as int?,orderDateTime: freezed == orderDateTime ? _self.orderDateTime : orderDateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,deviceOrderID: freezed == deviceOrderID ? _self.deviceOrderID : deviceOrderID // ignore: cast_nullable_to_non_nullable
as int?,errors: freezed == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
