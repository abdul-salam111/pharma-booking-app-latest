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

@JsonKey(name: "success") bool? get success;@JsonKey(name: "message") String? get message;@JsonKey(name: "totalOrders") int? get totalOrders;@JsonKey(name: "successfulOrders") int? get successfulOrders;@JsonKey(name: "failedOrders") int? get failedOrders;@JsonKey(name: "results") List<Result>? get results;
/// Create a copy of GetOrderResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetOrderResponseCopyWith<GetOrderResponse> get copyWith => _$GetOrderResponseCopyWithImpl<GetOrderResponse>(this as GetOrderResponse, _$identity);

  /// Serializes this GetOrderResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetOrderResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.totalOrders, totalOrders) || other.totalOrders == totalOrders)&&(identical(other.successfulOrders, successfulOrders) || other.successfulOrders == successfulOrders)&&(identical(other.failedOrders, failedOrders) || other.failedOrders == failedOrders)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,totalOrders,successfulOrders,failedOrders,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'GetOrderResponse(success: $success, message: $message, totalOrders: $totalOrders, successfulOrders: $successfulOrders, failedOrders: $failedOrders, results: $results)';
}


}

/// @nodoc
abstract mixin class $GetOrderResponseCopyWith<$Res>  {
  factory $GetOrderResponseCopyWith(GetOrderResponse value, $Res Function(GetOrderResponse) _then) = _$GetOrderResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "success") bool? success,@JsonKey(name: "message") String? message,@JsonKey(name: "totalOrders") int? totalOrders,@JsonKey(name: "successfulOrders") int? successfulOrders,@JsonKey(name: "failedOrders") int? failedOrders,@JsonKey(name: "results") List<Result>? results
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
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? message = freezed,Object? totalOrders = freezed,Object? successfulOrders = freezed,Object? failedOrders = freezed,Object? results = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,totalOrders: freezed == totalOrders ? _self.totalOrders : totalOrders // ignore: cast_nullable_to_non_nullable
as int?,successfulOrders: freezed == successfulOrders ? _self.successfulOrders : successfulOrders // ignore: cast_nullable_to_non_nullable
as int?,failedOrders: freezed == failedOrders ? _self.failedOrders : failedOrders // ignore: cast_nullable_to_non_nullable
as int?,results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<Result>?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  bool? success, @JsonKey(name: "message")  String? message, @JsonKey(name: "totalOrders")  int? totalOrders, @JsonKey(name: "successfulOrders")  int? successfulOrders, @JsonKey(name: "failedOrders")  int? failedOrders, @JsonKey(name: "results")  List<Result>? results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetOrderResponse() when $default != null:
return $default(_that.success,_that.message,_that.totalOrders,_that.successfulOrders,_that.failedOrders,_that.results);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  bool? success, @JsonKey(name: "message")  String? message, @JsonKey(name: "totalOrders")  int? totalOrders, @JsonKey(name: "successfulOrders")  int? successfulOrders, @JsonKey(name: "failedOrders")  int? failedOrders, @JsonKey(name: "results")  List<Result>? results)  $default,) {final _that = this;
switch (_that) {
case _GetOrderResponse():
return $default(_that.success,_that.message,_that.totalOrders,_that.successfulOrders,_that.failedOrders,_that.results);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "success")  bool? success, @JsonKey(name: "message")  String? message, @JsonKey(name: "totalOrders")  int? totalOrders, @JsonKey(name: "successfulOrders")  int? successfulOrders, @JsonKey(name: "failedOrders")  int? failedOrders, @JsonKey(name: "results")  List<Result>? results)?  $default,) {final _that = this;
switch (_that) {
case _GetOrderResponse() when $default != null:
return $default(_that.success,_that.message,_that.totalOrders,_that.successfulOrders,_that.failedOrders,_that.results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetOrderResponse implements GetOrderResponse {
  const _GetOrderResponse({@JsonKey(name: "success") this.success, @JsonKey(name: "message") this.message, @JsonKey(name: "totalOrders") this.totalOrders, @JsonKey(name: "successfulOrders") this.successfulOrders, @JsonKey(name: "failedOrders") this.failedOrders, @JsonKey(name: "results") final  List<Result>? results}): _results = results;
  factory _GetOrderResponse.fromJson(Map<String, dynamic> json) => _$GetOrderResponseFromJson(json);

@override@JsonKey(name: "success") final  bool? success;
@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "totalOrders") final  int? totalOrders;
@override@JsonKey(name: "successfulOrders") final  int? successfulOrders;
@override@JsonKey(name: "failedOrders") final  int? failedOrders;
 final  List<Result>? _results;
@override@JsonKey(name: "results") List<Result>? get results {
  final value = _results;
  if (value == null) return null;
  if (_results is EqualUnmodifiableListView) return _results;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetOrderResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.totalOrders, totalOrders) || other.totalOrders == totalOrders)&&(identical(other.successfulOrders, successfulOrders) || other.successfulOrders == successfulOrders)&&(identical(other.failedOrders, failedOrders) || other.failedOrders == failedOrders)&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,totalOrders,successfulOrders,failedOrders,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'GetOrderResponse(success: $success, message: $message, totalOrders: $totalOrders, successfulOrders: $successfulOrders, failedOrders: $failedOrders, results: $results)';
}


}

/// @nodoc
abstract mixin class _$GetOrderResponseCopyWith<$Res> implements $GetOrderResponseCopyWith<$Res> {
  factory _$GetOrderResponseCopyWith(_GetOrderResponse value, $Res Function(_GetOrderResponse) _then) = __$GetOrderResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "success") bool? success,@JsonKey(name: "message") String? message,@JsonKey(name: "totalOrders") int? totalOrders,@JsonKey(name: "successfulOrders") int? successfulOrders,@JsonKey(name: "failedOrders") int? failedOrders,@JsonKey(name: "results") List<Result>? results
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
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? message = freezed,Object? totalOrders = freezed,Object? successfulOrders = freezed,Object? failedOrders = freezed,Object? results = freezed,}) {
  return _then(_GetOrderResponse(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,totalOrders: freezed == totalOrders ? _self.totalOrders : totalOrders // ignore: cast_nullable_to_non_nullable
as int?,successfulOrders: freezed == successfulOrders ? _self.successfulOrders : successfulOrders // ignore: cast_nullable_to_non_nullable
as int?,failedOrders: freezed == failedOrders ? _self.failedOrders : failedOrders // ignore: cast_nullable_to_non_nullable
as int?,results: freezed == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<Result>?,
  ));
}


}


/// @nodoc
mixin _$Result {

@JsonKey(name: "id") int? get id;@JsonKey(name: "tenantOrderId") int? get tenantOrderId;@JsonKey(name: "deviceOrderGuid") String? get deviceOrderGuid;@JsonKey(name: "orderDateTime") DateTime? get orderDateTime;@JsonKey(name: "syncDateTime") DateTime? get syncDateTime;@JsonKey(name: "errors") List<dynamic>? get errors;
/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResultCopyWith<Result> get copyWith => _$ResultCopyWithImpl<Result>(this as Result, _$identity);

  /// Serializes this Result to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Result&&(identical(other.id, id) || other.id == id)&&(identical(other.tenantOrderId, tenantOrderId) || other.tenantOrderId == tenantOrderId)&&(identical(other.deviceOrderGuid, deviceOrderGuid) || other.deviceOrderGuid == deviceOrderGuid)&&(identical(other.orderDateTime, orderDateTime) || other.orderDateTime == orderDateTime)&&(identical(other.syncDateTime, syncDateTime) || other.syncDateTime == syncDateTime)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,tenantOrderId,deviceOrderGuid,orderDateTime,syncDateTime,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'Result(id: $id, tenantOrderId: $tenantOrderId, deviceOrderGuid: $deviceOrderGuid, orderDateTime: $orderDateTime, syncDateTime: $syncDateTime, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $ResultCopyWith<$Res>  {
  factory $ResultCopyWith(Result value, $Res Function(Result) _then) = _$ResultCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "tenantOrderId") int? tenantOrderId,@JsonKey(name: "deviceOrderGuid") String? deviceOrderGuid,@JsonKey(name: "orderDateTime") DateTime? orderDateTime,@JsonKey(name: "syncDateTime") DateTime? syncDateTime,@JsonKey(name: "errors") List<dynamic>? errors
});




}
/// @nodoc
class _$ResultCopyWithImpl<$Res>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._self, this._then);

  final Result _self;
  final $Res Function(Result) _then;

/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? tenantOrderId = freezed,Object? deviceOrderGuid = freezed,Object? orderDateTime = freezed,Object? syncDateTime = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,tenantOrderId: freezed == tenantOrderId ? _self.tenantOrderId : tenantOrderId // ignore: cast_nullable_to_non_nullable
as int?,deviceOrderGuid: freezed == deviceOrderGuid ? _self.deviceOrderGuid : deviceOrderGuid // ignore: cast_nullable_to_non_nullable
as String?,orderDateTime: freezed == orderDateTime ? _self.orderDateTime : orderDateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,syncDateTime: freezed == syncDateTime ? _self.syncDateTime : syncDateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Result].
extension ResultPatterns on Result {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Result value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Result() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Result value)  $default,){
final _that = this;
switch (_that) {
case _Result():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Result value)?  $default,){
final _that = this;
switch (_that) {
case _Result() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "tenantOrderId")  int? tenantOrderId, @JsonKey(name: "deviceOrderGuid")  String? deviceOrderGuid, @JsonKey(name: "orderDateTime")  DateTime? orderDateTime, @JsonKey(name: "syncDateTime")  DateTime? syncDateTime, @JsonKey(name: "errors")  List<dynamic>? errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Result() when $default != null:
return $default(_that.id,_that.tenantOrderId,_that.deviceOrderGuid,_that.orderDateTime,_that.syncDateTime,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "tenantOrderId")  int? tenantOrderId, @JsonKey(name: "deviceOrderGuid")  String? deviceOrderGuid, @JsonKey(name: "orderDateTime")  DateTime? orderDateTime, @JsonKey(name: "syncDateTime")  DateTime? syncDateTime, @JsonKey(name: "errors")  List<dynamic>? errors)  $default,) {final _that = this;
switch (_that) {
case _Result():
return $default(_that.id,_that.tenantOrderId,_that.deviceOrderGuid,_that.orderDateTime,_that.syncDateTime,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "tenantOrderId")  int? tenantOrderId, @JsonKey(name: "deviceOrderGuid")  String? deviceOrderGuid, @JsonKey(name: "orderDateTime")  DateTime? orderDateTime, @JsonKey(name: "syncDateTime")  DateTime? syncDateTime, @JsonKey(name: "errors")  List<dynamic>? errors)?  $default,) {final _that = this;
switch (_that) {
case _Result() when $default != null:
return $default(_that.id,_that.tenantOrderId,_that.deviceOrderGuid,_that.orderDateTime,_that.syncDateTime,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Result implements Result {
  const _Result({@JsonKey(name: "id") this.id, @JsonKey(name: "tenantOrderId") this.tenantOrderId, @JsonKey(name: "deviceOrderGuid") this.deviceOrderGuid, @JsonKey(name: "orderDateTime") this.orderDateTime, @JsonKey(name: "syncDateTime") this.syncDateTime, @JsonKey(name: "errors") final  List<dynamic>? errors}): _errors = errors;
  factory _Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "tenantOrderId") final  int? tenantOrderId;
@override@JsonKey(name: "deviceOrderGuid") final  String? deviceOrderGuid;
@override@JsonKey(name: "orderDateTime") final  DateTime? orderDateTime;
@override@JsonKey(name: "syncDateTime") final  DateTime? syncDateTime;
 final  List<dynamic>? _errors;
@override@JsonKey(name: "errors") List<dynamic>? get errors {
  final value = _errors;
  if (value == null) return null;
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResultCopyWith<_Result> get copyWith => __$ResultCopyWithImpl<_Result>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Result&&(identical(other.id, id) || other.id == id)&&(identical(other.tenantOrderId, tenantOrderId) || other.tenantOrderId == tenantOrderId)&&(identical(other.deviceOrderGuid, deviceOrderGuid) || other.deviceOrderGuid == deviceOrderGuid)&&(identical(other.orderDateTime, orderDateTime) || other.orderDateTime == orderDateTime)&&(identical(other.syncDateTime, syncDateTime) || other.syncDateTime == syncDateTime)&&const DeepCollectionEquality().equals(other._errors, _errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,tenantOrderId,deviceOrderGuid,orderDateTime,syncDateTime,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'Result(id: $id, tenantOrderId: $tenantOrderId, deviceOrderGuid: $deviceOrderGuid, orderDateTime: $orderDateTime, syncDateTime: $syncDateTime, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$ResultCopyWith(_Result value, $Res Function(_Result) _then) = __$ResultCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "tenantOrderId") int? tenantOrderId,@JsonKey(name: "deviceOrderGuid") String? deviceOrderGuid,@JsonKey(name: "orderDateTime") DateTime? orderDateTime,@JsonKey(name: "syncDateTime") DateTime? syncDateTime,@JsonKey(name: "errors") List<dynamic>? errors
});




}
/// @nodoc
class __$ResultCopyWithImpl<$Res>
    implements _$ResultCopyWith<$Res> {
  __$ResultCopyWithImpl(this._self, this._then);

  final _Result _self;
  final $Res Function(_Result) _then;

/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? tenantOrderId = freezed,Object? deviceOrderGuid = freezed,Object? orderDateTime = freezed,Object? syncDateTime = freezed,Object? errors = freezed,}) {
  return _then(_Result(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,tenantOrderId: freezed == tenantOrderId ? _self.tenantOrderId : tenantOrderId // ignore: cast_nullable_to_non_nullable
as int?,deviceOrderGuid: freezed == deviceOrderGuid ? _self.deviceOrderGuid : deviceOrderGuid // ignore: cast_nullable_to_non_nullable
as String?,orderDateTime: freezed == orderDateTime ? _self.orderDateTime : orderDateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,syncDateTime: freezed == syncDateTime ? _self.syncDateTime : syncDateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,errors: freezed == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}


}

// dart format on
