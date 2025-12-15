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

@JsonKey(name: "userId") String? get userId;@JsonKey(name: "userName") String? get userName;@JsonKey(name: "displayName") String? get displayName;@JsonKey(name: "email") String? get email;@JsonKey(name: "emailConfirmed") bool? get emailConfirmed;@JsonKey(name: "tenantId") int? get tenantId;@JsonKey(name: "tenantBusinessId") int? get tenantBusinessId;@JsonKey(name: "salesmanId") int? get salesmanId;@JsonKey(name: "isSystemUser") bool? get isSystemUser;@JsonKey(name: "roles") List<dynamic>? get roles;@JsonKey(name: "permissions") List<dynamic>? get permissions;@JsonKey(name: "salesman") Salesman? get salesman;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.email, email) || other.email == email)&&(identical(other.emailConfirmed, emailConfirmed) || other.emailConfirmed == emailConfirmed)&&(identical(other.tenantId, tenantId) || other.tenantId == tenantId)&&(identical(other.tenantBusinessId, tenantBusinessId) || other.tenantBusinessId == tenantBusinessId)&&(identical(other.salesmanId, salesmanId) || other.salesmanId == salesmanId)&&(identical(other.isSystemUser, isSystemUser) || other.isSystemUser == isSystemUser)&&const DeepCollectionEquality().equals(other.roles, roles)&&const DeepCollectionEquality().equals(other.permissions, permissions)&&(identical(other.salesman, salesman) || other.salesman == salesman));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,userName,displayName,email,emailConfirmed,tenantId,tenantBusinessId,salesmanId,isSystemUser,const DeepCollectionEquality().hash(roles),const DeepCollectionEquality().hash(permissions),salesman);

@override
String toString() {
  return 'User(userId: $userId, userName: $userName, displayName: $displayName, email: $email, emailConfirmed: $emailConfirmed, tenantId: $tenantId, tenantBusinessId: $tenantBusinessId, salesmanId: $salesmanId, isSystemUser: $isSystemUser, roles: $roles, permissions: $permissions, salesman: $salesman)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "userId") String? userId,@JsonKey(name: "userName") String? userName,@JsonKey(name: "displayName") String? displayName,@JsonKey(name: "email") String? email,@JsonKey(name: "emailConfirmed") bool? emailConfirmed,@JsonKey(name: "tenantId") int? tenantId,@JsonKey(name: "tenantBusinessId") int? tenantBusinessId,@JsonKey(name: "salesmanId") int? salesmanId,@JsonKey(name: "isSystemUser") bool? isSystemUser,@JsonKey(name: "roles") List<dynamic>? roles,@JsonKey(name: "permissions") List<dynamic>? permissions,@JsonKey(name: "salesman") Salesman? salesman
});


$SalesmanCopyWith<$Res>? get salesman;

}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = freezed,Object? userName = freezed,Object? displayName = freezed,Object? email = freezed,Object? emailConfirmed = freezed,Object? tenantId = freezed,Object? tenantBusinessId = freezed,Object? salesmanId = freezed,Object? isSystemUser = freezed,Object? roles = freezed,Object? permissions = freezed,Object? salesman = freezed,}) {
  return _then(_self.copyWith(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,userName: freezed == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,emailConfirmed: freezed == emailConfirmed ? _self.emailConfirmed : emailConfirmed // ignore: cast_nullable_to_non_nullable
as bool?,tenantId: freezed == tenantId ? _self.tenantId : tenantId // ignore: cast_nullable_to_non_nullable
as int?,tenantBusinessId: freezed == tenantBusinessId ? _self.tenantBusinessId : tenantBusinessId // ignore: cast_nullable_to_non_nullable
as int?,salesmanId: freezed == salesmanId ? _self.salesmanId : salesmanId // ignore: cast_nullable_to_non_nullable
as int?,isSystemUser: freezed == isSystemUser ? _self.isSystemUser : isSystemUser // ignore: cast_nullable_to_non_nullable
as bool?,roles: freezed == roles ? _self.roles : roles // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,permissions: freezed == permissions ? _self.permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,salesman: freezed == salesman ? _self.salesman : salesman // ignore: cast_nullable_to_non_nullable
as Salesman?,
  ));
}
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SalesmanCopyWith<$Res>? get salesman {
    if (_self.salesman == null) {
    return null;
  }

  return $SalesmanCopyWith<$Res>(_self.salesman!, (value) {
    return _then(_self.copyWith(salesman: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "userId")  String? userId, @JsonKey(name: "userName")  String? userName, @JsonKey(name: "displayName")  String? displayName, @JsonKey(name: "email")  String? email, @JsonKey(name: "emailConfirmed")  bool? emailConfirmed, @JsonKey(name: "tenantId")  int? tenantId, @JsonKey(name: "tenantBusinessId")  int? tenantBusinessId, @JsonKey(name: "salesmanId")  int? salesmanId, @JsonKey(name: "isSystemUser")  bool? isSystemUser, @JsonKey(name: "roles")  List<dynamic>? roles, @JsonKey(name: "permissions")  List<dynamic>? permissions, @JsonKey(name: "salesman")  Salesman? salesman)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.userId,_that.userName,_that.displayName,_that.email,_that.emailConfirmed,_that.tenantId,_that.tenantBusinessId,_that.salesmanId,_that.isSystemUser,_that.roles,_that.permissions,_that.salesman);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "userId")  String? userId, @JsonKey(name: "userName")  String? userName, @JsonKey(name: "displayName")  String? displayName, @JsonKey(name: "email")  String? email, @JsonKey(name: "emailConfirmed")  bool? emailConfirmed, @JsonKey(name: "tenantId")  int? tenantId, @JsonKey(name: "tenantBusinessId")  int? tenantBusinessId, @JsonKey(name: "salesmanId")  int? salesmanId, @JsonKey(name: "isSystemUser")  bool? isSystemUser, @JsonKey(name: "roles")  List<dynamic>? roles, @JsonKey(name: "permissions")  List<dynamic>? permissions, @JsonKey(name: "salesman")  Salesman? salesman)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.userId,_that.userName,_that.displayName,_that.email,_that.emailConfirmed,_that.tenantId,_that.tenantBusinessId,_that.salesmanId,_that.isSystemUser,_that.roles,_that.permissions,_that.salesman);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "userId")  String? userId, @JsonKey(name: "userName")  String? userName, @JsonKey(name: "displayName")  String? displayName, @JsonKey(name: "email")  String? email, @JsonKey(name: "emailConfirmed")  bool? emailConfirmed, @JsonKey(name: "tenantId")  int? tenantId, @JsonKey(name: "tenantBusinessId")  int? tenantBusinessId, @JsonKey(name: "salesmanId")  int? salesmanId, @JsonKey(name: "isSystemUser")  bool? isSystemUser, @JsonKey(name: "roles")  List<dynamic>? roles, @JsonKey(name: "permissions")  List<dynamic>? permissions, @JsonKey(name: "salesman")  Salesman? salesman)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.userId,_that.userName,_that.displayName,_that.email,_that.emailConfirmed,_that.tenantId,_that.tenantBusinessId,_that.salesmanId,_that.isSystemUser,_that.roles,_that.permissions,_that.salesman);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User implements User {
  const _User({@JsonKey(name: "userId") this.userId, @JsonKey(name: "userName") this.userName, @JsonKey(name: "displayName") this.displayName, @JsonKey(name: "email") this.email, @JsonKey(name: "emailConfirmed") this.emailConfirmed, @JsonKey(name: "tenantId") this.tenantId, @JsonKey(name: "tenantBusinessId") this.tenantBusinessId, @JsonKey(name: "salesmanId") this.salesmanId, @JsonKey(name: "isSystemUser") this.isSystemUser, @JsonKey(name: "roles") final  List<dynamic>? roles, @JsonKey(name: "permissions") final  List<dynamic>? permissions, @JsonKey(name: "salesman") this.salesman}): _roles = roles,_permissions = permissions;
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override@JsonKey(name: "userId") final  String? userId;
@override@JsonKey(name: "userName") final  String? userName;
@override@JsonKey(name: "displayName") final  String? displayName;
@override@JsonKey(name: "email") final  String? email;
@override@JsonKey(name: "emailConfirmed") final  bool? emailConfirmed;
@override@JsonKey(name: "tenantId") final  int? tenantId;
@override@JsonKey(name: "tenantBusinessId") final  int? tenantBusinessId;
@override@JsonKey(name: "salesmanId") final  int? salesmanId;
@override@JsonKey(name: "isSystemUser") final  bool? isSystemUser;
 final  List<dynamic>? _roles;
@override@JsonKey(name: "roles") List<dynamic>? get roles {
  final value = _roles;
  if (value == null) return null;
  if (_roles is EqualUnmodifiableListView) return _roles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _permissions;
@override@JsonKey(name: "permissions") List<dynamic>? get permissions {
  final value = _permissions;
  if (value == null) return null;
  if (_permissions is EqualUnmodifiableListView) return _permissions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "salesman") final  Salesman? salesman;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.email, email) || other.email == email)&&(identical(other.emailConfirmed, emailConfirmed) || other.emailConfirmed == emailConfirmed)&&(identical(other.tenantId, tenantId) || other.tenantId == tenantId)&&(identical(other.tenantBusinessId, tenantBusinessId) || other.tenantBusinessId == tenantBusinessId)&&(identical(other.salesmanId, salesmanId) || other.salesmanId == salesmanId)&&(identical(other.isSystemUser, isSystemUser) || other.isSystemUser == isSystemUser)&&const DeepCollectionEquality().equals(other._roles, _roles)&&const DeepCollectionEquality().equals(other._permissions, _permissions)&&(identical(other.salesman, salesman) || other.salesman == salesman));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,userName,displayName,email,emailConfirmed,tenantId,tenantBusinessId,salesmanId,isSystemUser,const DeepCollectionEquality().hash(_roles),const DeepCollectionEquality().hash(_permissions),salesman);

@override
String toString() {
  return 'User(userId: $userId, userName: $userName, displayName: $displayName, email: $email, emailConfirmed: $emailConfirmed, tenantId: $tenantId, tenantBusinessId: $tenantBusinessId, salesmanId: $salesmanId, isSystemUser: $isSystemUser, roles: $roles, permissions: $permissions, salesman: $salesman)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "userId") String? userId,@JsonKey(name: "userName") String? userName,@JsonKey(name: "displayName") String? displayName,@JsonKey(name: "email") String? email,@JsonKey(name: "emailConfirmed") bool? emailConfirmed,@JsonKey(name: "tenantId") int? tenantId,@JsonKey(name: "tenantBusinessId") int? tenantBusinessId,@JsonKey(name: "salesmanId") int? salesmanId,@JsonKey(name: "isSystemUser") bool? isSystemUser,@JsonKey(name: "roles") List<dynamic>? roles,@JsonKey(name: "permissions") List<dynamic>? permissions,@JsonKey(name: "salesman") Salesman? salesman
});


@override $SalesmanCopyWith<$Res>? get salesman;

}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = freezed,Object? userName = freezed,Object? displayName = freezed,Object? email = freezed,Object? emailConfirmed = freezed,Object? tenantId = freezed,Object? tenantBusinessId = freezed,Object? salesmanId = freezed,Object? isSystemUser = freezed,Object? roles = freezed,Object? permissions = freezed,Object? salesman = freezed,}) {
  return _then(_User(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,userName: freezed == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,emailConfirmed: freezed == emailConfirmed ? _self.emailConfirmed : emailConfirmed // ignore: cast_nullable_to_non_nullable
as bool?,tenantId: freezed == tenantId ? _self.tenantId : tenantId // ignore: cast_nullable_to_non_nullable
as int?,tenantBusinessId: freezed == tenantBusinessId ? _self.tenantBusinessId : tenantBusinessId // ignore: cast_nullable_to_non_nullable
as int?,salesmanId: freezed == salesmanId ? _self.salesmanId : salesmanId // ignore: cast_nullable_to_non_nullable
as int?,isSystemUser: freezed == isSystemUser ? _self.isSystemUser : isSystemUser // ignore: cast_nullable_to_non_nullable
as bool?,roles: freezed == roles ? _self._roles : roles // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,permissions: freezed == permissions ? _self._permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,salesman: freezed == salesman ? _self.salesman : salesman // ignore: cast_nullable_to_non_nullable
as Salesman?,
  ));
}

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SalesmanCopyWith<$Res>? get salesman {
    if (_self.salesman == null) {
    return null;
  }

  return $SalesmanCopyWith<$Res>(_self.salesman!, (value) {
    return _then(_self.copyWith(salesman: value));
  });
}
}


/// @nodoc
mixin _$Salesman {

@JsonKey(name: "id") int? get id;@JsonKey(name: "importAccountNo") String? get importAccountNo;@JsonKey(name: "salesmanName") String? get salesmanName;@JsonKey(name: "mobileNo") String? get mobileNo;@JsonKey(name: "cnic") String? get cnic;@JsonKey(name: "address") String? get address;@JsonKey(name: "city") String? get city;@JsonKey(name: "email") String? get email;@JsonKey(name: "tenantBusinessId") int? get tenantBusinessId;@JsonKey(name: "isStockHolder") bool? get isStockHolder;@JsonKey(name: "commission") int? get commission;@JsonKey(name: "creditLimit") int? get creditLimit;@JsonKey(name: "isShowCurrentStock") bool? get isShowCurrentStock;@JsonKey(name: "isAllowChangeBookingPrice") bool? get isAllowChangeBookingPrice;@JsonKey(name: "isAllowChangeBookingDisc") bool? get isAllowChangeBookingDisc;@JsonKey(name: "isAllowChangeBookingBonus") bool? get isAllowChangeBookingBonus;@JsonKey(name: "isActive") bool? get isActive;@JsonKey(name: "software") Software? get software;
/// Create a copy of Salesman
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalesmanCopyWith<Salesman> get copyWith => _$SalesmanCopyWithImpl<Salesman>(this as Salesman, _$identity);

  /// Serializes this Salesman to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Salesman&&(identical(other.id, id) || other.id == id)&&(identical(other.importAccountNo, importAccountNo) || other.importAccountNo == importAccountNo)&&(identical(other.salesmanName, salesmanName) || other.salesmanName == salesmanName)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.cnic, cnic) || other.cnic == cnic)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.email, email) || other.email == email)&&(identical(other.tenantBusinessId, tenantBusinessId) || other.tenantBusinessId == tenantBusinessId)&&(identical(other.isStockHolder, isStockHolder) || other.isStockHolder == isStockHolder)&&(identical(other.commission, commission) || other.commission == commission)&&(identical(other.creditLimit, creditLimit) || other.creditLimit == creditLimit)&&(identical(other.isShowCurrentStock, isShowCurrentStock) || other.isShowCurrentStock == isShowCurrentStock)&&(identical(other.isAllowChangeBookingPrice, isAllowChangeBookingPrice) || other.isAllowChangeBookingPrice == isAllowChangeBookingPrice)&&(identical(other.isAllowChangeBookingDisc, isAllowChangeBookingDisc) || other.isAllowChangeBookingDisc == isAllowChangeBookingDisc)&&(identical(other.isAllowChangeBookingBonus, isAllowChangeBookingBonus) || other.isAllowChangeBookingBonus == isAllowChangeBookingBonus)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.software, software) || other.software == software));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,importAccountNo,salesmanName,mobileNo,cnic,address,city,email,tenantBusinessId,isStockHolder,commission,creditLimit,isShowCurrentStock,isAllowChangeBookingPrice,isAllowChangeBookingDisc,isAllowChangeBookingBonus,isActive,software);

@override
String toString() {
  return 'Salesman(id: $id, importAccountNo: $importAccountNo, salesmanName: $salesmanName, mobileNo: $mobileNo, cnic: $cnic, address: $address, city: $city, email: $email, tenantBusinessId: $tenantBusinessId, isStockHolder: $isStockHolder, commission: $commission, creditLimit: $creditLimit, isShowCurrentStock: $isShowCurrentStock, isAllowChangeBookingPrice: $isAllowChangeBookingPrice, isAllowChangeBookingDisc: $isAllowChangeBookingDisc, isAllowChangeBookingBonus: $isAllowChangeBookingBonus, isActive: $isActive, software: $software)';
}


}

/// @nodoc
abstract mixin class $SalesmanCopyWith<$Res>  {
  factory $SalesmanCopyWith(Salesman value, $Res Function(Salesman) _then) = _$SalesmanCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "importAccountNo") String? importAccountNo,@JsonKey(name: "salesmanName") String? salesmanName,@JsonKey(name: "mobileNo") String? mobileNo,@JsonKey(name: "cnic") String? cnic,@JsonKey(name: "address") String? address,@JsonKey(name: "city") String? city,@JsonKey(name: "email") String? email,@JsonKey(name: "tenantBusinessId") int? tenantBusinessId,@JsonKey(name: "isStockHolder") bool? isStockHolder,@JsonKey(name: "commission") int? commission,@JsonKey(name: "creditLimit") int? creditLimit,@JsonKey(name: "isShowCurrentStock") bool? isShowCurrentStock,@JsonKey(name: "isAllowChangeBookingPrice") bool? isAllowChangeBookingPrice,@JsonKey(name: "isAllowChangeBookingDisc") bool? isAllowChangeBookingDisc,@JsonKey(name: "isAllowChangeBookingBonus") bool? isAllowChangeBookingBonus,@JsonKey(name: "isActive") bool? isActive,@JsonKey(name: "software") Software? software
});


$SoftwareCopyWith<$Res>? get software;

}
/// @nodoc
class _$SalesmanCopyWithImpl<$Res>
    implements $SalesmanCopyWith<$Res> {
  _$SalesmanCopyWithImpl(this._self, this._then);

  final Salesman _self;
  final $Res Function(Salesman) _then;

/// Create a copy of Salesman
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? importAccountNo = freezed,Object? salesmanName = freezed,Object? mobileNo = freezed,Object? cnic = freezed,Object? address = freezed,Object? city = freezed,Object? email = freezed,Object? tenantBusinessId = freezed,Object? isStockHolder = freezed,Object? commission = freezed,Object? creditLimit = freezed,Object? isShowCurrentStock = freezed,Object? isAllowChangeBookingPrice = freezed,Object? isAllowChangeBookingDisc = freezed,Object? isAllowChangeBookingBonus = freezed,Object? isActive = freezed,Object? software = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,importAccountNo: freezed == importAccountNo ? _self.importAccountNo : importAccountNo // ignore: cast_nullable_to_non_nullable
as String?,salesmanName: freezed == salesmanName ? _self.salesmanName : salesmanName // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,cnic: freezed == cnic ? _self.cnic : cnic // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,tenantBusinessId: freezed == tenantBusinessId ? _self.tenantBusinessId : tenantBusinessId // ignore: cast_nullable_to_non_nullable
as int?,isStockHolder: freezed == isStockHolder ? _self.isStockHolder : isStockHolder // ignore: cast_nullable_to_non_nullable
as bool?,commission: freezed == commission ? _self.commission : commission // ignore: cast_nullable_to_non_nullable
as int?,creditLimit: freezed == creditLimit ? _self.creditLimit : creditLimit // ignore: cast_nullable_to_non_nullable
as int?,isShowCurrentStock: freezed == isShowCurrentStock ? _self.isShowCurrentStock : isShowCurrentStock // ignore: cast_nullable_to_non_nullable
as bool?,isAllowChangeBookingPrice: freezed == isAllowChangeBookingPrice ? _self.isAllowChangeBookingPrice : isAllowChangeBookingPrice // ignore: cast_nullable_to_non_nullable
as bool?,isAllowChangeBookingDisc: freezed == isAllowChangeBookingDisc ? _self.isAllowChangeBookingDisc : isAllowChangeBookingDisc // ignore: cast_nullable_to_non_nullable
as bool?,isAllowChangeBookingBonus: freezed == isAllowChangeBookingBonus ? _self.isAllowChangeBookingBonus : isAllowChangeBookingBonus // ignore: cast_nullable_to_non_nullable
as bool?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,software: freezed == software ? _self.software : software // ignore: cast_nullable_to_non_nullable
as Software?,
  ));
}
/// Create a copy of Salesman
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SoftwareCopyWith<$Res>? get software {
    if (_self.software == null) {
    return null;
  }

  return $SoftwareCopyWith<$Res>(_self.software!, (value) {
    return _then(_self.copyWith(software: value));
  });
}
}


/// Adds pattern-matching-related methods to [Salesman].
extension SalesmanPatterns on Salesman {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Salesman value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Salesman() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Salesman value)  $default,){
final _that = this;
switch (_that) {
case _Salesman():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Salesman value)?  $default,){
final _that = this;
switch (_that) {
case _Salesman() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "importAccountNo")  String? importAccountNo, @JsonKey(name: "salesmanName")  String? salesmanName, @JsonKey(name: "mobileNo")  String? mobileNo, @JsonKey(name: "cnic")  String? cnic, @JsonKey(name: "address")  String? address, @JsonKey(name: "city")  String? city, @JsonKey(name: "email")  String? email, @JsonKey(name: "tenantBusinessId")  int? tenantBusinessId, @JsonKey(name: "isStockHolder")  bool? isStockHolder, @JsonKey(name: "commission")  int? commission, @JsonKey(name: "creditLimit")  int? creditLimit, @JsonKey(name: "isShowCurrentStock")  bool? isShowCurrentStock, @JsonKey(name: "isAllowChangeBookingPrice")  bool? isAllowChangeBookingPrice, @JsonKey(name: "isAllowChangeBookingDisc")  bool? isAllowChangeBookingDisc, @JsonKey(name: "isAllowChangeBookingBonus")  bool? isAllowChangeBookingBonus, @JsonKey(name: "isActive")  bool? isActive, @JsonKey(name: "software")  Software? software)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Salesman() when $default != null:
return $default(_that.id,_that.importAccountNo,_that.salesmanName,_that.mobileNo,_that.cnic,_that.address,_that.city,_that.email,_that.tenantBusinessId,_that.isStockHolder,_that.commission,_that.creditLimit,_that.isShowCurrentStock,_that.isAllowChangeBookingPrice,_that.isAllowChangeBookingDisc,_that.isAllowChangeBookingBonus,_that.isActive,_that.software);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "importAccountNo")  String? importAccountNo, @JsonKey(name: "salesmanName")  String? salesmanName, @JsonKey(name: "mobileNo")  String? mobileNo, @JsonKey(name: "cnic")  String? cnic, @JsonKey(name: "address")  String? address, @JsonKey(name: "city")  String? city, @JsonKey(name: "email")  String? email, @JsonKey(name: "tenantBusinessId")  int? tenantBusinessId, @JsonKey(name: "isStockHolder")  bool? isStockHolder, @JsonKey(name: "commission")  int? commission, @JsonKey(name: "creditLimit")  int? creditLimit, @JsonKey(name: "isShowCurrentStock")  bool? isShowCurrentStock, @JsonKey(name: "isAllowChangeBookingPrice")  bool? isAllowChangeBookingPrice, @JsonKey(name: "isAllowChangeBookingDisc")  bool? isAllowChangeBookingDisc, @JsonKey(name: "isAllowChangeBookingBonus")  bool? isAllowChangeBookingBonus, @JsonKey(name: "isActive")  bool? isActive, @JsonKey(name: "software")  Software? software)  $default,) {final _that = this;
switch (_that) {
case _Salesman():
return $default(_that.id,_that.importAccountNo,_that.salesmanName,_that.mobileNo,_that.cnic,_that.address,_that.city,_that.email,_that.tenantBusinessId,_that.isStockHolder,_that.commission,_that.creditLimit,_that.isShowCurrentStock,_that.isAllowChangeBookingPrice,_that.isAllowChangeBookingDisc,_that.isAllowChangeBookingBonus,_that.isActive,_that.software);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "importAccountNo")  String? importAccountNo, @JsonKey(name: "salesmanName")  String? salesmanName, @JsonKey(name: "mobileNo")  String? mobileNo, @JsonKey(name: "cnic")  String? cnic, @JsonKey(name: "address")  String? address, @JsonKey(name: "city")  String? city, @JsonKey(name: "email")  String? email, @JsonKey(name: "tenantBusinessId")  int? tenantBusinessId, @JsonKey(name: "isStockHolder")  bool? isStockHolder, @JsonKey(name: "commission")  int? commission, @JsonKey(name: "creditLimit")  int? creditLimit, @JsonKey(name: "isShowCurrentStock")  bool? isShowCurrentStock, @JsonKey(name: "isAllowChangeBookingPrice")  bool? isAllowChangeBookingPrice, @JsonKey(name: "isAllowChangeBookingDisc")  bool? isAllowChangeBookingDisc, @JsonKey(name: "isAllowChangeBookingBonus")  bool? isAllowChangeBookingBonus, @JsonKey(name: "isActive")  bool? isActive, @JsonKey(name: "software")  Software? software)?  $default,) {final _that = this;
switch (_that) {
case _Salesman() when $default != null:
return $default(_that.id,_that.importAccountNo,_that.salesmanName,_that.mobileNo,_that.cnic,_that.address,_that.city,_that.email,_that.tenantBusinessId,_that.isStockHolder,_that.commission,_that.creditLimit,_that.isShowCurrentStock,_that.isAllowChangeBookingPrice,_that.isAllowChangeBookingDisc,_that.isAllowChangeBookingBonus,_that.isActive,_that.software);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Salesman implements Salesman {
  const _Salesman({@JsonKey(name: "id") this.id, @JsonKey(name: "importAccountNo") this.importAccountNo, @JsonKey(name: "salesmanName") this.salesmanName, @JsonKey(name: "mobileNo") this.mobileNo, @JsonKey(name: "cnic") this.cnic, @JsonKey(name: "address") this.address, @JsonKey(name: "city") this.city, @JsonKey(name: "email") this.email, @JsonKey(name: "tenantBusinessId") this.tenantBusinessId, @JsonKey(name: "isStockHolder") this.isStockHolder, @JsonKey(name: "commission") this.commission, @JsonKey(name: "creditLimit") this.creditLimit, @JsonKey(name: "isShowCurrentStock") this.isShowCurrentStock, @JsonKey(name: "isAllowChangeBookingPrice") this.isAllowChangeBookingPrice, @JsonKey(name: "isAllowChangeBookingDisc") this.isAllowChangeBookingDisc, @JsonKey(name: "isAllowChangeBookingBonus") this.isAllowChangeBookingBonus, @JsonKey(name: "isActive") this.isActive, @JsonKey(name: "software") this.software});
  factory _Salesman.fromJson(Map<String, dynamic> json) => _$SalesmanFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "importAccountNo") final  String? importAccountNo;
@override@JsonKey(name: "salesmanName") final  String? salesmanName;
@override@JsonKey(name: "mobileNo") final  String? mobileNo;
@override@JsonKey(name: "cnic") final  String? cnic;
@override@JsonKey(name: "address") final  String? address;
@override@JsonKey(name: "city") final  String? city;
@override@JsonKey(name: "email") final  String? email;
@override@JsonKey(name: "tenantBusinessId") final  int? tenantBusinessId;
@override@JsonKey(name: "isStockHolder") final  bool? isStockHolder;
@override@JsonKey(name: "commission") final  int? commission;
@override@JsonKey(name: "creditLimit") final  int? creditLimit;
@override@JsonKey(name: "isShowCurrentStock") final  bool? isShowCurrentStock;
@override@JsonKey(name: "isAllowChangeBookingPrice") final  bool? isAllowChangeBookingPrice;
@override@JsonKey(name: "isAllowChangeBookingDisc") final  bool? isAllowChangeBookingDisc;
@override@JsonKey(name: "isAllowChangeBookingBonus") final  bool? isAllowChangeBookingBonus;
@override@JsonKey(name: "isActive") final  bool? isActive;
@override@JsonKey(name: "software") final  Software? software;

/// Create a copy of Salesman
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalesmanCopyWith<_Salesman> get copyWith => __$SalesmanCopyWithImpl<_Salesman>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SalesmanToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Salesman&&(identical(other.id, id) || other.id == id)&&(identical(other.importAccountNo, importAccountNo) || other.importAccountNo == importAccountNo)&&(identical(other.salesmanName, salesmanName) || other.salesmanName == salesmanName)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.cnic, cnic) || other.cnic == cnic)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.email, email) || other.email == email)&&(identical(other.tenantBusinessId, tenantBusinessId) || other.tenantBusinessId == tenantBusinessId)&&(identical(other.isStockHolder, isStockHolder) || other.isStockHolder == isStockHolder)&&(identical(other.commission, commission) || other.commission == commission)&&(identical(other.creditLimit, creditLimit) || other.creditLimit == creditLimit)&&(identical(other.isShowCurrentStock, isShowCurrentStock) || other.isShowCurrentStock == isShowCurrentStock)&&(identical(other.isAllowChangeBookingPrice, isAllowChangeBookingPrice) || other.isAllowChangeBookingPrice == isAllowChangeBookingPrice)&&(identical(other.isAllowChangeBookingDisc, isAllowChangeBookingDisc) || other.isAllowChangeBookingDisc == isAllowChangeBookingDisc)&&(identical(other.isAllowChangeBookingBonus, isAllowChangeBookingBonus) || other.isAllowChangeBookingBonus == isAllowChangeBookingBonus)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.software, software) || other.software == software));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,importAccountNo,salesmanName,mobileNo,cnic,address,city,email,tenantBusinessId,isStockHolder,commission,creditLimit,isShowCurrentStock,isAllowChangeBookingPrice,isAllowChangeBookingDisc,isAllowChangeBookingBonus,isActive,software);

@override
String toString() {
  return 'Salesman(id: $id, importAccountNo: $importAccountNo, salesmanName: $salesmanName, mobileNo: $mobileNo, cnic: $cnic, address: $address, city: $city, email: $email, tenantBusinessId: $tenantBusinessId, isStockHolder: $isStockHolder, commission: $commission, creditLimit: $creditLimit, isShowCurrentStock: $isShowCurrentStock, isAllowChangeBookingPrice: $isAllowChangeBookingPrice, isAllowChangeBookingDisc: $isAllowChangeBookingDisc, isAllowChangeBookingBonus: $isAllowChangeBookingBonus, isActive: $isActive, software: $software)';
}


}

/// @nodoc
abstract mixin class _$SalesmanCopyWith<$Res> implements $SalesmanCopyWith<$Res> {
  factory _$SalesmanCopyWith(_Salesman value, $Res Function(_Salesman) _then) = __$SalesmanCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "importAccountNo") String? importAccountNo,@JsonKey(name: "salesmanName") String? salesmanName,@JsonKey(name: "mobileNo") String? mobileNo,@JsonKey(name: "cnic") String? cnic,@JsonKey(name: "address") String? address,@JsonKey(name: "city") String? city,@JsonKey(name: "email") String? email,@JsonKey(name: "tenantBusinessId") int? tenantBusinessId,@JsonKey(name: "isStockHolder") bool? isStockHolder,@JsonKey(name: "commission") int? commission,@JsonKey(name: "creditLimit") int? creditLimit,@JsonKey(name: "isShowCurrentStock") bool? isShowCurrentStock,@JsonKey(name: "isAllowChangeBookingPrice") bool? isAllowChangeBookingPrice,@JsonKey(name: "isAllowChangeBookingDisc") bool? isAllowChangeBookingDisc,@JsonKey(name: "isAllowChangeBookingBonus") bool? isAllowChangeBookingBonus,@JsonKey(name: "isActive") bool? isActive,@JsonKey(name: "software") Software? software
});


@override $SoftwareCopyWith<$Res>? get software;

}
/// @nodoc
class __$SalesmanCopyWithImpl<$Res>
    implements _$SalesmanCopyWith<$Res> {
  __$SalesmanCopyWithImpl(this._self, this._then);

  final _Salesman _self;
  final $Res Function(_Salesman) _then;

/// Create a copy of Salesman
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? importAccountNo = freezed,Object? salesmanName = freezed,Object? mobileNo = freezed,Object? cnic = freezed,Object? address = freezed,Object? city = freezed,Object? email = freezed,Object? tenantBusinessId = freezed,Object? isStockHolder = freezed,Object? commission = freezed,Object? creditLimit = freezed,Object? isShowCurrentStock = freezed,Object? isAllowChangeBookingPrice = freezed,Object? isAllowChangeBookingDisc = freezed,Object? isAllowChangeBookingBonus = freezed,Object? isActive = freezed,Object? software = freezed,}) {
  return _then(_Salesman(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,importAccountNo: freezed == importAccountNo ? _self.importAccountNo : importAccountNo // ignore: cast_nullable_to_non_nullable
as String?,salesmanName: freezed == salesmanName ? _self.salesmanName : salesmanName // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,cnic: freezed == cnic ? _self.cnic : cnic // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,tenantBusinessId: freezed == tenantBusinessId ? _self.tenantBusinessId : tenantBusinessId // ignore: cast_nullable_to_non_nullable
as int?,isStockHolder: freezed == isStockHolder ? _self.isStockHolder : isStockHolder // ignore: cast_nullable_to_non_nullable
as bool?,commission: freezed == commission ? _self.commission : commission // ignore: cast_nullable_to_non_nullable
as int?,creditLimit: freezed == creditLimit ? _self.creditLimit : creditLimit // ignore: cast_nullable_to_non_nullable
as int?,isShowCurrentStock: freezed == isShowCurrentStock ? _self.isShowCurrentStock : isShowCurrentStock // ignore: cast_nullable_to_non_nullable
as bool?,isAllowChangeBookingPrice: freezed == isAllowChangeBookingPrice ? _self.isAllowChangeBookingPrice : isAllowChangeBookingPrice // ignore: cast_nullable_to_non_nullable
as bool?,isAllowChangeBookingDisc: freezed == isAllowChangeBookingDisc ? _self.isAllowChangeBookingDisc : isAllowChangeBookingDisc // ignore: cast_nullable_to_non_nullable
as bool?,isAllowChangeBookingBonus: freezed == isAllowChangeBookingBonus ? _self.isAllowChangeBookingBonus : isAllowChangeBookingBonus // ignore: cast_nullable_to_non_nullable
as bool?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,software: freezed == software ? _self.software : software // ignore: cast_nullable_to_non_nullable
as Software?,
  ));
}

/// Create a copy of Salesman
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SoftwareCopyWith<$Res>? get software {
    if (_self.software == null) {
    return null;
  }

  return $SoftwareCopyWith<$Res>(_self.software!, (value) {
    return _then(_self.copyWith(software: value));
  });
}
}


/// @nodoc
mixin _$Software {

@JsonKey(name: "softwareName") String? get softwareName;@JsonKey(name: "softwareKey") String? get softwareKey;@JsonKey(name: "dbPrefix") String? get dbPrefix;@JsonKey(name: "id") int? get id;
/// Create a copy of Software
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SoftwareCopyWith<Software> get copyWith => _$SoftwareCopyWithImpl<Software>(this as Software, _$identity);

  /// Serializes this Software to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Software&&(identical(other.softwareName, softwareName) || other.softwareName == softwareName)&&(identical(other.softwareKey, softwareKey) || other.softwareKey == softwareKey)&&(identical(other.dbPrefix, dbPrefix) || other.dbPrefix == dbPrefix)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,softwareName,softwareKey,dbPrefix,id);

@override
String toString() {
  return 'Software(softwareName: $softwareName, softwareKey: $softwareKey, dbPrefix: $dbPrefix, id: $id)';
}


}

/// @nodoc
abstract mixin class $SoftwareCopyWith<$Res>  {
  factory $SoftwareCopyWith(Software value, $Res Function(Software) _then) = _$SoftwareCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "softwareName") String? softwareName,@JsonKey(name: "softwareKey") String? softwareKey,@JsonKey(name: "dbPrefix") String? dbPrefix,@JsonKey(name: "id") int? id
});




}
/// @nodoc
class _$SoftwareCopyWithImpl<$Res>
    implements $SoftwareCopyWith<$Res> {
  _$SoftwareCopyWithImpl(this._self, this._then);

  final Software _self;
  final $Res Function(Software) _then;

/// Create a copy of Software
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? softwareName = freezed,Object? softwareKey = freezed,Object? dbPrefix = freezed,Object? id = freezed,}) {
  return _then(_self.copyWith(
softwareName: freezed == softwareName ? _self.softwareName : softwareName // ignore: cast_nullable_to_non_nullable
as String?,softwareKey: freezed == softwareKey ? _self.softwareKey : softwareKey // ignore: cast_nullable_to_non_nullable
as String?,dbPrefix: freezed == dbPrefix ? _self.dbPrefix : dbPrefix // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Software].
extension SoftwarePatterns on Software {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Software value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Software() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Software value)  $default,){
final _that = this;
switch (_that) {
case _Software():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Software value)?  $default,){
final _that = this;
switch (_that) {
case _Software() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "softwareName")  String? softwareName, @JsonKey(name: "softwareKey")  String? softwareKey, @JsonKey(name: "dbPrefix")  String? dbPrefix, @JsonKey(name: "id")  int? id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Software() when $default != null:
return $default(_that.softwareName,_that.softwareKey,_that.dbPrefix,_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "softwareName")  String? softwareName, @JsonKey(name: "softwareKey")  String? softwareKey, @JsonKey(name: "dbPrefix")  String? dbPrefix, @JsonKey(name: "id")  int? id)  $default,) {final _that = this;
switch (_that) {
case _Software():
return $default(_that.softwareName,_that.softwareKey,_that.dbPrefix,_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "softwareName")  String? softwareName, @JsonKey(name: "softwareKey")  String? softwareKey, @JsonKey(name: "dbPrefix")  String? dbPrefix, @JsonKey(name: "id")  int? id)?  $default,) {final _that = this;
switch (_that) {
case _Software() when $default != null:
return $default(_that.softwareName,_that.softwareKey,_that.dbPrefix,_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Software implements Software {
  const _Software({@JsonKey(name: "softwareName") this.softwareName, @JsonKey(name: "softwareKey") this.softwareKey, @JsonKey(name: "dbPrefix") this.dbPrefix, @JsonKey(name: "id") this.id});
  factory _Software.fromJson(Map<String, dynamic> json) => _$SoftwareFromJson(json);

@override@JsonKey(name: "softwareName") final  String? softwareName;
@override@JsonKey(name: "softwareKey") final  String? softwareKey;
@override@JsonKey(name: "dbPrefix") final  String? dbPrefix;
@override@JsonKey(name: "id") final  int? id;

/// Create a copy of Software
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SoftwareCopyWith<_Software> get copyWith => __$SoftwareCopyWithImpl<_Software>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SoftwareToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Software&&(identical(other.softwareName, softwareName) || other.softwareName == softwareName)&&(identical(other.softwareKey, softwareKey) || other.softwareKey == softwareKey)&&(identical(other.dbPrefix, dbPrefix) || other.dbPrefix == dbPrefix)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,softwareName,softwareKey,dbPrefix,id);

@override
String toString() {
  return 'Software(softwareName: $softwareName, softwareKey: $softwareKey, dbPrefix: $dbPrefix, id: $id)';
}


}

/// @nodoc
abstract mixin class _$SoftwareCopyWith<$Res> implements $SoftwareCopyWith<$Res> {
  factory _$SoftwareCopyWith(_Software value, $Res Function(_Software) _then) = __$SoftwareCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "softwareName") String? softwareName,@JsonKey(name: "softwareKey") String? softwareKey,@JsonKey(name: "dbPrefix") String? dbPrefix,@JsonKey(name: "id") int? id
});




}
/// @nodoc
class __$SoftwareCopyWithImpl<$Res>
    implements _$SoftwareCopyWith<$Res> {
  __$SoftwareCopyWithImpl(this._self, this._then);

  final _Software _self;
  final $Res Function(_Software) _then;

/// Create a copy of Software
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? softwareName = freezed,Object? softwareKey = freezed,Object? dbPrefix = freezed,Object? id = freezed,}) {
  return _then(_Software(
softwareName: freezed == softwareName ? _self.softwareName : softwareName // ignore: cast_nullable_to_non_nullable
as String?,softwareKey: freezed == softwareKey ? _self.softwareKey : softwareKey // ignore: cast_nullable_to_non_nullable
as String?,dbPrefix: freezed == dbPrefix ? _self.dbPrefix : dbPrefix // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
