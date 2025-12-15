// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_packings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetPackings {

@JsonKey(name: "id") int? get id;@JsonKey(name: "packingName") String? get packingName;@JsonKey(name: "abbrevation") String? get abbrevation;
/// Create a copy of GetPackings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetPackingsCopyWith<GetPackings> get copyWith => _$GetPackingsCopyWithImpl<GetPackings>(this as GetPackings, _$identity);

  /// Serializes this GetPackings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPackings&&(identical(other.id, id) || other.id == id)&&(identical(other.packingName, packingName) || other.packingName == packingName)&&(identical(other.abbrevation, abbrevation) || other.abbrevation == abbrevation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,packingName,abbrevation);

@override
String toString() {
  return 'GetPackings(id: $id, packingName: $packingName, abbrevation: $abbrevation)';
}


}

/// @nodoc
abstract mixin class $GetPackingsCopyWith<$Res>  {
  factory $GetPackingsCopyWith(GetPackings value, $Res Function(GetPackings) _then) = _$GetPackingsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "packingName") String? packingName,@JsonKey(name: "abbrevation") String? abbrevation
});




}
/// @nodoc
class _$GetPackingsCopyWithImpl<$Res>
    implements $GetPackingsCopyWith<$Res> {
  _$GetPackingsCopyWithImpl(this._self, this._then);

  final GetPackings _self;
  final $Res Function(GetPackings) _then;

/// Create a copy of GetPackings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? packingName = freezed,Object? abbrevation = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,packingName: freezed == packingName ? _self.packingName : packingName // ignore: cast_nullable_to_non_nullable
as String?,abbrevation: freezed == abbrevation ? _self.abbrevation : abbrevation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetPackings].
extension GetPackingsPatterns on GetPackings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetPackings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetPackings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetPackings value)  $default,){
final _that = this;
switch (_that) {
case _GetPackings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetPackings value)?  $default,){
final _that = this;
switch (_that) {
case _GetPackings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "packingName")  String? packingName, @JsonKey(name: "abbrevation")  String? abbrevation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetPackings() when $default != null:
return $default(_that.id,_that.packingName,_that.abbrevation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "packingName")  String? packingName, @JsonKey(name: "abbrevation")  String? abbrevation)  $default,) {final _that = this;
switch (_that) {
case _GetPackings():
return $default(_that.id,_that.packingName,_that.abbrevation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "packingName")  String? packingName, @JsonKey(name: "abbrevation")  String? abbrevation)?  $default,) {final _that = this;
switch (_that) {
case _GetPackings() when $default != null:
return $default(_that.id,_that.packingName,_that.abbrevation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetPackings implements GetPackings {
  const _GetPackings({@JsonKey(name: "id") this.id, @JsonKey(name: "packingName") this.packingName, @JsonKey(name: "abbrevation") this.abbrevation});
  factory _GetPackings.fromJson(Map<String, dynamic> json) => _$GetPackingsFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "packingName") final  String? packingName;
@override@JsonKey(name: "abbrevation") final  String? abbrevation;

/// Create a copy of GetPackings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetPackingsCopyWith<_GetPackings> get copyWith => __$GetPackingsCopyWithImpl<_GetPackings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetPackingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPackings&&(identical(other.id, id) || other.id == id)&&(identical(other.packingName, packingName) || other.packingName == packingName)&&(identical(other.abbrevation, abbrevation) || other.abbrevation == abbrevation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,packingName,abbrevation);

@override
String toString() {
  return 'GetPackings(id: $id, packingName: $packingName, abbrevation: $abbrevation)';
}


}

/// @nodoc
abstract mixin class _$GetPackingsCopyWith<$Res> implements $GetPackingsCopyWith<$Res> {
  factory _$GetPackingsCopyWith(_GetPackings value, $Res Function(_GetPackings) _then) = __$GetPackingsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "packingName") String? packingName,@JsonKey(name: "abbrevation") String? abbrevation
});




}
/// @nodoc
class __$GetPackingsCopyWithImpl<$Res>
    implements _$GetPackingsCopyWith<$Res> {
  __$GetPackingsCopyWithImpl(this._self, this._then);

  final _GetPackings _self;
  final $Res Function(_GetPackings) _then;

/// Create a copy of GetPackings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? packingName = freezed,Object? abbrevation = freezed,}) {
  return _then(_GetPackings(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,packingName: freezed == packingName ? _self.packingName : packingName // ignore: cast_nullable_to_non_nullable
as String?,abbrevation: freezed == abbrevation ? _self.abbrevation : abbrevation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
