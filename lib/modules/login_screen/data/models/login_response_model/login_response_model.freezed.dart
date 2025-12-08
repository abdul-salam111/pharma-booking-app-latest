// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginResponseModel {

@JsonKey(name: "token") String? get token;@JsonKey(name: "user") User? get user;
/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginResponseModelCopyWith<LoginResponseModel> get copyWith => _$LoginResponseModelCopyWithImpl<LoginResponseModel>(this as LoginResponseModel, _$identity);

  /// Serializes this LoginResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginResponseModel&&(identical(other.token, token) || other.token == token)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,user);

@override
String toString() {
  return 'LoginResponseModel(token: $token, user: $user)';
}


}

/// @nodoc
abstract mixin class $LoginResponseModelCopyWith<$Res>  {
  factory $LoginResponseModelCopyWith(LoginResponseModel value, $Res Function(LoginResponseModel) _then) = _$LoginResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "token") String? token,@JsonKey(name: "user") User? user
});


$UserCopyWith<$Res>? get user;

}
/// @nodoc
class _$LoginResponseModelCopyWithImpl<$Res>
    implements $LoginResponseModelCopyWith<$Res> {
  _$LoginResponseModelCopyWithImpl(this._self, this._then);

  final LoginResponseModel _self;
  final $Res Function(LoginResponseModel) _then;

/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = freezed,Object? user = freezed,}) {
  return _then(_self.copyWith(
token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}
/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginResponseModel].
extension LoginResponseModelPatterns on LoginResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _LoginResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _LoginResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "token")  String? token, @JsonKey(name: "user")  User? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginResponseModel() when $default != null:
return $default(_that.token,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "token")  String? token, @JsonKey(name: "user")  User? user)  $default,) {final _that = this;
switch (_that) {
case _LoginResponseModel():
return $default(_that.token,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "token")  String? token, @JsonKey(name: "user")  User? user)?  $default,) {final _that = this;
switch (_that) {
case _LoginResponseModel() when $default != null:
return $default(_that.token,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginResponseModel implements LoginResponseModel {
  const _LoginResponseModel({@JsonKey(name: "token") this.token, @JsonKey(name: "user") this.user});
  factory _LoginResponseModel.fromJson(Map<String, dynamic> json) => _$LoginResponseModelFromJson(json);

@override@JsonKey(name: "token") final  String? token;
@override@JsonKey(name: "user") final  User? user;

/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginResponseModelCopyWith<_LoginResponseModel> get copyWith => __$LoginResponseModelCopyWithImpl<_LoginResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginResponseModel&&(identical(other.token, token) || other.token == token)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,user);

@override
String toString() {
  return 'LoginResponseModel(token: $token, user: $user)';
}


}

/// @nodoc
abstract mixin class _$LoginResponseModelCopyWith<$Res> implements $LoginResponseModelCopyWith<$Res> {
  factory _$LoginResponseModelCopyWith(_LoginResponseModel value, $Res Function(_LoginResponseModel) _then) = __$LoginResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "token") String? token,@JsonKey(name: "user") User? user
});


@override $UserCopyWith<$Res>? get user;

}
/// @nodoc
class __$LoginResponseModelCopyWithImpl<$Res>
    implements _$LoginResponseModelCopyWith<$Res> {
  __$LoginResponseModelCopyWithImpl(this._self, this._then);

  final _LoginResponseModel _self;
  final $Res Function(_LoginResponseModel) _then;

/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = freezed,Object? user = freezed,}) {
  return _then(_LoginResponseModel(
token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}

/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$User {

@JsonKey(name: "userId") String? get userId;@JsonKey(name: "userName") String? get userName;@JsonKey(name: "displayName") String? get displayName;@JsonKey(name: "tenantId") int? get tenantId;@JsonKey(name: "tenantBusinessId") int? get tenantBusinessId;@JsonKey(name: "salesmanId") int? get salesmanId;@JsonKey(name: "isSystemUser") bool? get isSystemUser;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.tenantId, tenantId) || other.tenantId == tenantId)&&(identical(other.tenantBusinessId, tenantBusinessId) || other.tenantBusinessId == tenantBusinessId)&&(identical(other.salesmanId, salesmanId) || other.salesmanId == salesmanId)&&(identical(other.isSystemUser, isSystemUser) || other.isSystemUser == isSystemUser));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,userName,displayName,tenantId,tenantBusinessId,salesmanId,isSystemUser);

@override
String toString() {
  return 'User(userId: $userId, userName: $userName, displayName: $displayName, tenantId: $tenantId, tenantBusinessId: $tenantBusinessId, salesmanId: $salesmanId, isSystemUser: $isSystemUser)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "userId") String? userId,@JsonKey(name: "userName") String? userName,@JsonKey(name: "displayName") String? displayName,@JsonKey(name: "tenantId") int? tenantId,@JsonKey(name: "tenantBusinessId") int? tenantBusinessId,@JsonKey(name: "salesmanId") int? salesmanId,@JsonKey(name: "isSystemUser") bool? isSystemUser
});




}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = freezed,Object? userName = freezed,Object? displayName = freezed,Object? tenantId = freezed,Object? tenantBusinessId = freezed,Object? salesmanId = freezed,Object? isSystemUser = freezed,}) {
  return _then(_self.copyWith(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,userName: freezed == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,tenantId: freezed == tenantId ? _self.tenantId : tenantId // ignore: cast_nullable_to_non_nullable
as int?,tenantBusinessId: freezed == tenantBusinessId ? _self.tenantBusinessId : tenantBusinessId // ignore: cast_nullable_to_non_nullable
as int?,salesmanId: freezed == salesmanId ? _self.salesmanId : salesmanId // ignore: cast_nullable_to_non_nullable
as int?,isSystemUser: freezed == isSystemUser ? _self.isSystemUser : isSystemUser // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User value)  $default,){
final _that = this;
switch (_that) {
case _User():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User value)?  $default,){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "userId")  String? userId, @JsonKey(name: "userName")  String? userName, @JsonKey(name: "displayName")  String? displayName, @JsonKey(name: "tenantId")  int? tenantId, @JsonKey(name: "tenantBusinessId")  int? tenantBusinessId, @JsonKey(name: "salesmanId")  int? salesmanId, @JsonKey(name: "isSystemUser")  bool? isSystemUser)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.userId,_that.userName,_that.displayName,_that.tenantId,_that.tenantBusinessId,_that.salesmanId,_that.isSystemUser);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "userId")  String? userId, @JsonKey(name: "userName")  String? userName, @JsonKey(name: "displayName")  String? displayName, @JsonKey(name: "tenantId")  int? tenantId, @JsonKey(name: "tenantBusinessId")  int? tenantBusinessId, @JsonKey(name: "salesmanId")  int? salesmanId, @JsonKey(name: "isSystemUser")  bool? isSystemUser)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.userId,_that.userName,_that.displayName,_that.tenantId,_that.tenantBusinessId,_that.salesmanId,_that.isSystemUser);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "userId")  String? userId, @JsonKey(name: "userName")  String? userName, @JsonKey(name: "displayName")  String? displayName, @JsonKey(name: "tenantId")  int? tenantId, @JsonKey(name: "tenantBusinessId")  int? tenantBusinessId, @JsonKey(name: "salesmanId")  int? salesmanId, @JsonKey(name: "isSystemUser")  bool? isSystemUser)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.userId,_that.userName,_that.displayName,_that.tenantId,_that.tenantBusinessId,_that.salesmanId,_that.isSystemUser);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User implements User {
  const _User({@JsonKey(name: "userId") this.userId, @JsonKey(name: "userName") this.userName, @JsonKey(name: "displayName") this.displayName, @JsonKey(name: "tenantId") this.tenantId, @JsonKey(name: "tenantBusinessId") this.tenantBusinessId, @JsonKey(name: "salesmanId") this.salesmanId, @JsonKey(name: "isSystemUser") this.isSystemUser});
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override@JsonKey(name: "userId") final  String? userId;
@override@JsonKey(name: "userName") final  String? userName;
@override@JsonKey(name: "displayName") final  String? displayName;
@override@JsonKey(name: "tenantId") final  int? tenantId;
@override@JsonKey(name: "tenantBusinessId") final  int? tenantBusinessId;
@override@JsonKey(name: "salesmanId") final  int? salesmanId;
@override@JsonKey(name: "isSystemUser") final  bool? isSystemUser;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.tenantId, tenantId) || other.tenantId == tenantId)&&(identical(other.tenantBusinessId, tenantBusinessId) || other.tenantBusinessId == tenantBusinessId)&&(identical(other.salesmanId, salesmanId) || other.salesmanId == salesmanId)&&(identical(other.isSystemUser, isSystemUser) || other.isSystemUser == isSystemUser));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,userName,displayName,tenantId,tenantBusinessId,salesmanId,isSystemUser);

@override
String toString() {
  return 'User(userId: $userId, userName: $userName, displayName: $displayName, tenantId: $tenantId, tenantBusinessId: $tenantBusinessId, salesmanId: $salesmanId, isSystemUser: $isSystemUser)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "userId") String? userId,@JsonKey(name: "userName") String? userName,@JsonKey(name: "displayName") String? displayName,@JsonKey(name: "tenantId") int? tenantId,@JsonKey(name: "tenantBusinessId") int? tenantBusinessId,@JsonKey(name: "salesmanId") int? salesmanId,@JsonKey(name: "isSystemUser") bool? isSystemUser
});




}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = freezed,Object? userName = freezed,Object? displayName = freezed,Object? tenantId = freezed,Object? tenantBusinessId = freezed,Object? salesmanId = freezed,Object? isSystemUser = freezed,}) {
  return _then(_User(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,userName: freezed == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,tenantId: freezed == tenantId ? _self.tenantId : tenantId // ignore: cast_nullable_to_non_nullable
as int?,tenantBusinessId: freezed == tenantBusinessId ? _self.tenantBusinessId : tenantBusinessId // ignore: cast_nullable_to_non_nullable
as int?,salesmanId: freezed == salesmanId ? _self.salesmanId : salesmanId // ignore: cast_nullable_to_non_nullable
as int?,isSystemUser: freezed == isSystemUser ? _self.isSystemUser : isSystemUser // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
