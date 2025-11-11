// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_sectors_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetSectorsModel {

@JsonKey(name: "ActualSectorId") int? get actualSectorId;@JsonKey(name: "SectorName") String? get sectorName;@JsonKey(name: "ID") int? get id;@JsonKey(name: "TenantID") int? get tenantId;
/// Create a copy of GetSectorsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetSectorsModelCopyWith<GetSectorsModel> get copyWith => _$GetSectorsModelCopyWithImpl<GetSectorsModel>(this as GetSectorsModel, _$identity);

  /// Serializes this GetSectorsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetSectorsModel&&(identical(other.actualSectorId, actualSectorId) || other.actualSectorId == actualSectorId)&&(identical(other.sectorName, sectorName) || other.sectorName == sectorName)&&(identical(other.id, id) || other.id == id)&&(identical(other.tenantId, tenantId) || other.tenantId == tenantId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,actualSectorId,sectorName,id,tenantId);

@override
String toString() {
  return 'GetSectorsModel(actualSectorId: $actualSectorId, sectorName: $sectorName, id: $id, tenantId: $tenantId)';
}


}

/// @nodoc
abstract mixin class $GetSectorsModelCopyWith<$Res>  {
  factory $GetSectorsModelCopyWith(GetSectorsModel value, $Res Function(GetSectorsModel) _then) = _$GetSectorsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "ActualSectorId") int? actualSectorId,@JsonKey(name: "SectorName") String? sectorName,@JsonKey(name: "ID") int? id,@JsonKey(name: "TenantID") int? tenantId
});




}
/// @nodoc
class _$GetSectorsModelCopyWithImpl<$Res>
    implements $GetSectorsModelCopyWith<$Res> {
  _$GetSectorsModelCopyWithImpl(this._self, this._then);

  final GetSectorsModel _self;
  final $Res Function(GetSectorsModel) _then;

/// Create a copy of GetSectorsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? actualSectorId = freezed,Object? sectorName = freezed,Object? id = freezed,Object? tenantId = freezed,}) {
  return _then(_self.copyWith(
actualSectorId: freezed == actualSectorId ? _self.actualSectorId : actualSectorId // ignore: cast_nullable_to_non_nullable
as int?,sectorName: freezed == sectorName ? _self.sectorName : sectorName // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,tenantId: freezed == tenantId ? _self.tenantId : tenantId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetSectorsModel].
extension GetSectorsModelPatterns on GetSectorsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetSectorsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetSectorsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetSectorsModel value)  $default,){
final _that = this;
switch (_that) {
case _GetSectorsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetSectorsModel value)?  $default,){
final _that = this;
switch (_that) {
case _GetSectorsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "ActualSectorId")  int? actualSectorId, @JsonKey(name: "SectorName")  String? sectorName, @JsonKey(name: "ID")  int? id, @JsonKey(name: "TenantID")  int? tenantId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetSectorsModel() when $default != null:
return $default(_that.actualSectorId,_that.sectorName,_that.id,_that.tenantId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "ActualSectorId")  int? actualSectorId, @JsonKey(name: "SectorName")  String? sectorName, @JsonKey(name: "ID")  int? id, @JsonKey(name: "TenantID")  int? tenantId)  $default,) {final _that = this;
switch (_that) {
case _GetSectorsModel():
return $default(_that.actualSectorId,_that.sectorName,_that.id,_that.tenantId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "ActualSectorId")  int? actualSectorId, @JsonKey(name: "SectorName")  String? sectorName, @JsonKey(name: "ID")  int? id, @JsonKey(name: "TenantID")  int? tenantId)?  $default,) {final _that = this;
switch (_that) {
case _GetSectorsModel() when $default != null:
return $default(_that.actualSectorId,_that.sectorName,_that.id,_that.tenantId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetSectorsModel implements GetSectorsModel {
  const _GetSectorsModel({@JsonKey(name: "ActualSectorId") this.actualSectorId, @JsonKey(name: "SectorName") this.sectorName, @JsonKey(name: "ID") this.id, @JsonKey(name: "TenantID") this.tenantId});
  factory _GetSectorsModel.fromJson(Map<String, dynamic> json) => _$GetSectorsModelFromJson(json);

@override@JsonKey(name: "ActualSectorId") final  int? actualSectorId;
@override@JsonKey(name: "SectorName") final  String? sectorName;
@override@JsonKey(name: "ID") final  int? id;
@override@JsonKey(name: "TenantID") final  int? tenantId;

/// Create a copy of GetSectorsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetSectorsModelCopyWith<_GetSectorsModel> get copyWith => __$GetSectorsModelCopyWithImpl<_GetSectorsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetSectorsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSectorsModel&&(identical(other.actualSectorId, actualSectorId) || other.actualSectorId == actualSectorId)&&(identical(other.sectorName, sectorName) || other.sectorName == sectorName)&&(identical(other.id, id) || other.id == id)&&(identical(other.tenantId, tenantId) || other.tenantId == tenantId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,actualSectorId,sectorName,id,tenantId);

@override
String toString() {
  return 'GetSectorsModel(actualSectorId: $actualSectorId, sectorName: $sectorName, id: $id, tenantId: $tenantId)';
}


}

/// @nodoc
abstract mixin class _$GetSectorsModelCopyWith<$Res> implements $GetSectorsModelCopyWith<$Res> {
  factory _$GetSectorsModelCopyWith(_GetSectorsModel value, $Res Function(_GetSectorsModel) _then) = __$GetSectorsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "ActualSectorId") int? actualSectorId,@JsonKey(name: "SectorName") String? sectorName,@JsonKey(name: "ID") int? id,@JsonKey(name: "TenantID") int? tenantId
});




}
/// @nodoc
class __$GetSectorsModelCopyWithImpl<$Res>
    implements _$GetSectorsModelCopyWith<$Res> {
  __$GetSectorsModelCopyWithImpl(this._self, this._then);

  final _GetSectorsModel _self;
  final $Res Function(_GetSectorsModel) _then;

/// Create a copy of GetSectorsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? actualSectorId = freezed,Object? sectorName = freezed,Object? id = freezed,Object? tenantId = freezed,}) {
  return _then(_GetSectorsModel(
actualSectorId: freezed == actualSectorId ? _self.actualSectorId : actualSectorId // ignore: cast_nullable_to_non_nullable
as int?,sectorName: freezed == sectorName ? _self.sectorName : sectorName // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,tenantId: freezed == tenantId ? _self.tenantId : tenantId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
