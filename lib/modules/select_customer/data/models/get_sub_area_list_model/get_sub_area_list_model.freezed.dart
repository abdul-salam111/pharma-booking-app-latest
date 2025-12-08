// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_sub_area_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetSubAreaListModel {

@JsonKey(name: "id") int? get id;@JsonKey(name: "name") String? get name;@JsonKey(name: "areaId") int? get areaId;
/// Create a copy of GetSubAreaListModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetSubAreaListModelCopyWith<GetSubAreaListModel> get copyWith => _$GetSubAreaListModelCopyWithImpl<GetSubAreaListModel>(this as GetSubAreaListModel, _$identity);

  /// Serializes this GetSubAreaListModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetSubAreaListModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.areaId, areaId) || other.areaId == areaId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,areaId);

@override
String toString() {
  return 'GetSubAreaListModel(id: $id, name: $name, areaId: $areaId)';
}


}

/// @nodoc
abstract mixin class $GetSubAreaListModelCopyWith<$Res>  {
  factory $GetSubAreaListModelCopyWith(GetSubAreaListModel value, $Res Function(GetSubAreaListModel) _then) = _$GetSubAreaListModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name,@JsonKey(name: "areaId") int? areaId
});




}
/// @nodoc
class _$GetSubAreaListModelCopyWithImpl<$Res>
    implements $GetSubAreaListModelCopyWith<$Res> {
  _$GetSubAreaListModelCopyWithImpl(this._self, this._then);

  final GetSubAreaListModel _self;
  final $Res Function(GetSubAreaListModel) _then;

/// Create a copy of GetSubAreaListModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? areaId = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,areaId: freezed == areaId ? _self.areaId : areaId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetSubAreaListModel].
extension GetSubAreaListModelPatterns on GetSubAreaListModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetSubAreaListModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetSubAreaListModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetSubAreaListModel value)  $default,){
final _that = this;
switch (_that) {
case _GetSubAreaListModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetSubAreaListModel value)?  $default,){
final _that = this;
switch (_that) {
case _GetSubAreaListModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "areaId")  int? areaId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetSubAreaListModel() when $default != null:
return $default(_that.id,_that.name,_that.areaId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "areaId")  int? areaId)  $default,) {final _that = this;
switch (_that) {
case _GetSubAreaListModel():
return $default(_that.id,_that.name,_that.areaId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "areaId")  int? areaId)?  $default,) {final _that = this;
switch (_that) {
case _GetSubAreaListModel() when $default != null:
return $default(_that.id,_that.name,_that.areaId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetSubAreaListModel implements GetSubAreaListModel {
  const _GetSubAreaListModel({@JsonKey(name: "id") this.id, @JsonKey(name: "name") this.name, @JsonKey(name: "areaId") this.areaId});
  factory _GetSubAreaListModel.fromJson(Map<String, dynamic> json) => _$GetSubAreaListModelFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "areaId") final  int? areaId;

/// Create a copy of GetSubAreaListModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetSubAreaListModelCopyWith<_GetSubAreaListModel> get copyWith => __$GetSubAreaListModelCopyWithImpl<_GetSubAreaListModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetSubAreaListModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSubAreaListModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.areaId, areaId) || other.areaId == areaId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,areaId);

@override
String toString() {
  return 'GetSubAreaListModel(id: $id, name: $name, areaId: $areaId)';
}


}

/// @nodoc
abstract mixin class _$GetSubAreaListModelCopyWith<$Res> implements $GetSubAreaListModelCopyWith<$Res> {
  factory _$GetSubAreaListModelCopyWith(_GetSubAreaListModel value, $Res Function(_GetSubAreaListModel) _then) = __$GetSubAreaListModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name,@JsonKey(name: "areaId") int? areaId
});




}
/// @nodoc
class __$GetSubAreaListModelCopyWithImpl<$Res>
    implements _$GetSubAreaListModelCopyWith<$Res> {
  __$GetSubAreaListModelCopyWithImpl(this._self, this._then);

  final _GetSubAreaListModel _self;
  final $Res Function(_GetSubAreaListModel) _then;

/// Create a copy of GetSubAreaListModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? areaId = freezed,}) {
  return _then(_GetSubAreaListModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,areaId: freezed == areaId ? _self.areaId : areaId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
