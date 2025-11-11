// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_towns_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetTownsModel {

@JsonKey(name: 'ActualSectorId') int? get actualSectorId;@JsonKey(name: 'ActualTownId') int? get actualTownId;@JsonKey(name: 'TownName') String? get townName;@JsonKey(name: 'ID') int? get id;@JsonKey(name: 'TenantID') int? get tenantId;
/// Create a copy of GetTownsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetTownsModelCopyWith<GetTownsModel> get copyWith => _$GetTownsModelCopyWithImpl<GetTownsModel>(this as GetTownsModel, _$identity);

  /// Serializes this GetTownsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetTownsModel&&(identical(other.actualSectorId, actualSectorId) || other.actualSectorId == actualSectorId)&&(identical(other.actualTownId, actualTownId) || other.actualTownId == actualTownId)&&(identical(other.townName, townName) || other.townName == townName)&&(identical(other.id, id) || other.id == id)&&(identical(other.tenantId, tenantId) || other.tenantId == tenantId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,actualSectorId,actualTownId,townName,id,tenantId);

@override
String toString() {
  return 'GetTownsModel(actualSectorId: $actualSectorId, actualTownId: $actualTownId, townName: $townName, id: $id, tenantId: $tenantId)';
}


}

/// @nodoc
abstract mixin class $GetTownsModelCopyWith<$Res>  {
  factory $GetTownsModelCopyWith(GetTownsModel value, $Res Function(GetTownsModel) _then) = _$GetTownsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ActualSectorId') int? actualSectorId,@JsonKey(name: 'ActualTownId') int? actualTownId,@JsonKey(name: 'TownName') String? townName,@JsonKey(name: 'ID') int? id,@JsonKey(name: 'TenantID') int? tenantId
});




}
/// @nodoc
class _$GetTownsModelCopyWithImpl<$Res>
    implements $GetTownsModelCopyWith<$Res> {
  _$GetTownsModelCopyWithImpl(this._self, this._then);

  final GetTownsModel _self;
  final $Res Function(GetTownsModel) _then;

/// Create a copy of GetTownsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? actualSectorId = freezed,Object? actualTownId = freezed,Object? townName = freezed,Object? id = freezed,Object? tenantId = freezed,}) {
  return _then(_self.copyWith(
actualSectorId: freezed == actualSectorId ? _self.actualSectorId : actualSectorId // ignore: cast_nullable_to_non_nullable
as int?,actualTownId: freezed == actualTownId ? _self.actualTownId : actualTownId // ignore: cast_nullable_to_non_nullable
as int?,townName: freezed == townName ? _self.townName : townName // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,tenantId: freezed == tenantId ? _self.tenantId : tenantId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetTownsModel].
extension GetTownsModelPatterns on GetTownsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetTownsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetTownsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetTownsModel value)  $default,){
final _that = this;
switch (_that) {
case _GetTownsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetTownsModel value)?  $default,){
final _that = this;
switch (_that) {
case _GetTownsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ActualSectorId')  int? actualSectorId, @JsonKey(name: 'ActualTownId')  int? actualTownId, @JsonKey(name: 'TownName')  String? townName, @JsonKey(name: 'ID')  int? id, @JsonKey(name: 'TenantID')  int? tenantId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetTownsModel() when $default != null:
return $default(_that.actualSectorId,_that.actualTownId,_that.townName,_that.id,_that.tenantId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ActualSectorId')  int? actualSectorId, @JsonKey(name: 'ActualTownId')  int? actualTownId, @JsonKey(name: 'TownName')  String? townName, @JsonKey(name: 'ID')  int? id, @JsonKey(name: 'TenantID')  int? tenantId)  $default,) {final _that = this;
switch (_that) {
case _GetTownsModel():
return $default(_that.actualSectorId,_that.actualTownId,_that.townName,_that.id,_that.tenantId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ActualSectorId')  int? actualSectorId, @JsonKey(name: 'ActualTownId')  int? actualTownId, @JsonKey(name: 'TownName')  String? townName, @JsonKey(name: 'ID')  int? id, @JsonKey(name: 'TenantID')  int? tenantId)?  $default,) {final _that = this;
switch (_that) {
case _GetTownsModel() when $default != null:
return $default(_that.actualSectorId,_that.actualTownId,_that.townName,_that.id,_that.tenantId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetTownsModel implements GetTownsModel {
  const _GetTownsModel({@JsonKey(name: 'ActualSectorId') this.actualSectorId, @JsonKey(name: 'ActualTownId') this.actualTownId, @JsonKey(name: 'TownName') this.townName, @JsonKey(name: 'ID') this.id, @JsonKey(name: 'TenantID') this.tenantId});
  factory _GetTownsModel.fromJson(Map<String, dynamic> json) => _$GetTownsModelFromJson(json);

@override@JsonKey(name: 'ActualSectorId') final  int? actualSectorId;
@override@JsonKey(name: 'ActualTownId') final  int? actualTownId;
@override@JsonKey(name: 'TownName') final  String? townName;
@override@JsonKey(name: 'ID') final  int? id;
@override@JsonKey(name: 'TenantID') final  int? tenantId;

/// Create a copy of GetTownsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetTownsModelCopyWith<_GetTownsModel> get copyWith => __$GetTownsModelCopyWithImpl<_GetTownsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetTownsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTownsModel&&(identical(other.actualSectorId, actualSectorId) || other.actualSectorId == actualSectorId)&&(identical(other.actualTownId, actualTownId) || other.actualTownId == actualTownId)&&(identical(other.townName, townName) || other.townName == townName)&&(identical(other.id, id) || other.id == id)&&(identical(other.tenantId, tenantId) || other.tenantId == tenantId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,actualSectorId,actualTownId,townName,id,tenantId);

@override
String toString() {
  return 'GetTownsModel(actualSectorId: $actualSectorId, actualTownId: $actualTownId, townName: $townName, id: $id, tenantId: $tenantId)';
}


}

/// @nodoc
abstract mixin class _$GetTownsModelCopyWith<$Res> implements $GetTownsModelCopyWith<$Res> {
  factory _$GetTownsModelCopyWith(_GetTownsModel value, $Res Function(_GetTownsModel) _then) = __$GetTownsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ActualSectorId') int? actualSectorId,@JsonKey(name: 'ActualTownId') int? actualTownId,@JsonKey(name: 'TownName') String? townName,@JsonKey(name: 'ID') int? id,@JsonKey(name: 'TenantID') int? tenantId
});




}
/// @nodoc
class __$GetTownsModelCopyWithImpl<$Res>
    implements _$GetTownsModelCopyWith<$Res> {
  __$GetTownsModelCopyWithImpl(this._self, this._then);

  final _GetTownsModel _self;
  final $Res Function(_GetTownsModel) _then;

/// Create a copy of GetTownsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? actualSectorId = freezed,Object? actualTownId = freezed,Object? townName = freezed,Object? id = freezed,Object? tenantId = freezed,}) {
  return _then(_GetTownsModel(
actualSectorId: freezed == actualSectorId ? _self.actualSectorId : actualSectorId // ignore: cast_nullable_to_non_nullable
as int?,actualTownId: freezed == actualTownId ? _self.actualTownId : actualTownId // ignore: cast_nullable_to_non_nullable
as int?,townName: freezed == townName ? _self.townName : townName // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,tenantId: freezed == tenantId ? _self.tenantId : tenantId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
