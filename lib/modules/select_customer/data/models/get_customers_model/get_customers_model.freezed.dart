// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_customers_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetCustomersModel {

@JsonKey(name: 'CustomerId') String? get customerId;@JsonKey(name: 'ActualTownId') int? get actualTownId;@JsonKey(name: 'CustomerName') String? get customerName;@JsonKey(name: 'Address') String? get address;@JsonKey(name: 'City') String? get city;@JsonKey(name: 'ContactPerson') String? get contactPerson;@JsonKey(name: 'Phone1') String? get phone1;@JsonKey(name: 'Phone2') String? get phone2;@JsonKey(name: 'Phone3') String? get phone3;@JsonKey(name: 'GSM') String? get gsm;@JsonKey(name: 'Email') String? get email;@JsonKey(name: 'NTN') String? get ntn;@JsonKey(name: 'STN') String? get stn;@JsonKey(name: 'CustomerType') String? get customerType;@JsonKey(name: 'CNIC') String? get cnic;@JsonKey(name: 'ID') int? get id;@JsonKey(name: 'TenantID') int? get tenantId;
/// Create a copy of GetCustomersModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetCustomersModelCopyWith<GetCustomersModel> get copyWith => _$GetCustomersModelCopyWithImpl<GetCustomersModel>(this as GetCustomersModel, _$identity);

  /// Serializes this GetCustomersModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCustomersModel&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.actualTownId, actualTownId) || other.actualTownId == actualTownId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.contactPerson, contactPerson) || other.contactPerson == contactPerson)&&(identical(other.phone1, phone1) || other.phone1 == phone1)&&(identical(other.phone2, phone2) || other.phone2 == phone2)&&(identical(other.phone3, phone3) || other.phone3 == phone3)&&(identical(other.gsm, gsm) || other.gsm == gsm)&&(identical(other.email, email) || other.email == email)&&(identical(other.ntn, ntn) || other.ntn == ntn)&&(identical(other.stn, stn) || other.stn == stn)&&(identical(other.customerType, customerType) || other.customerType == customerType)&&(identical(other.cnic, cnic) || other.cnic == cnic)&&(identical(other.id, id) || other.id == id)&&(identical(other.tenantId, tenantId) || other.tenantId == tenantId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerId,actualTownId,customerName,address,city,contactPerson,phone1,phone2,phone3,gsm,email,ntn,stn,customerType,cnic,id,tenantId);

@override
String toString() {
  return 'GetCustomersModel(customerId: $customerId, actualTownId: $actualTownId, customerName: $customerName, address: $address, city: $city, contactPerson: $contactPerson, phone1: $phone1, phone2: $phone2, phone3: $phone3, gsm: $gsm, email: $email, ntn: $ntn, stn: $stn, customerType: $customerType, cnic: $cnic, id: $id, tenantId: $tenantId)';
}


}

/// @nodoc
abstract mixin class $GetCustomersModelCopyWith<$Res>  {
  factory $GetCustomersModelCopyWith(GetCustomersModel value, $Res Function(GetCustomersModel) _then) = _$GetCustomersModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'CustomerId') String? customerId,@JsonKey(name: 'ActualTownId') int? actualTownId,@JsonKey(name: 'CustomerName') String? customerName,@JsonKey(name: 'Address') String? address,@JsonKey(name: 'City') String? city,@JsonKey(name: 'ContactPerson') String? contactPerson,@JsonKey(name: 'Phone1') String? phone1,@JsonKey(name: 'Phone2') String? phone2,@JsonKey(name: 'Phone3') String? phone3,@JsonKey(name: 'GSM') String? gsm,@JsonKey(name: 'Email') String? email,@JsonKey(name: 'NTN') String? ntn,@JsonKey(name: 'STN') String? stn,@JsonKey(name: 'CustomerType') String? customerType,@JsonKey(name: 'CNIC') String? cnic,@JsonKey(name: 'ID') int? id,@JsonKey(name: 'TenantID') int? tenantId
});




}
/// @nodoc
class _$GetCustomersModelCopyWithImpl<$Res>
    implements $GetCustomersModelCopyWith<$Res> {
  _$GetCustomersModelCopyWithImpl(this._self, this._then);

  final GetCustomersModel _self;
  final $Res Function(GetCustomersModel) _then;

/// Create a copy of GetCustomersModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerId = freezed,Object? actualTownId = freezed,Object? customerName = freezed,Object? address = freezed,Object? city = freezed,Object? contactPerson = freezed,Object? phone1 = freezed,Object? phone2 = freezed,Object? phone3 = freezed,Object? gsm = freezed,Object? email = freezed,Object? ntn = freezed,Object? stn = freezed,Object? customerType = freezed,Object? cnic = freezed,Object? id = freezed,Object? tenantId = freezed,}) {
  return _then(_self.copyWith(
customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String?,actualTownId: freezed == actualTownId ? _self.actualTownId : actualTownId // ignore: cast_nullable_to_non_nullable
as int?,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,contactPerson: freezed == contactPerson ? _self.contactPerson : contactPerson // ignore: cast_nullable_to_non_nullable
as String?,phone1: freezed == phone1 ? _self.phone1 : phone1 // ignore: cast_nullable_to_non_nullable
as String?,phone2: freezed == phone2 ? _self.phone2 : phone2 // ignore: cast_nullable_to_non_nullable
as String?,phone3: freezed == phone3 ? _self.phone3 : phone3 // ignore: cast_nullable_to_non_nullable
as String?,gsm: freezed == gsm ? _self.gsm : gsm // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,ntn: freezed == ntn ? _self.ntn : ntn // ignore: cast_nullable_to_non_nullable
as String?,stn: freezed == stn ? _self.stn : stn // ignore: cast_nullable_to_non_nullable
as String?,customerType: freezed == customerType ? _self.customerType : customerType // ignore: cast_nullable_to_non_nullable
as String?,cnic: freezed == cnic ? _self.cnic : cnic // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,tenantId: freezed == tenantId ? _self.tenantId : tenantId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetCustomersModel].
extension GetCustomersModelPatterns on GetCustomersModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetCustomersModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetCustomersModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetCustomersModel value)  $default,){
final _that = this;
switch (_that) {
case _GetCustomersModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetCustomersModel value)?  $default,){
final _that = this;
switch (_that) {
case _GetCustomersModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'CustomerId')  String? customerId, @JsonKey(name: 'ActualTownId')  int? actualTownId, @JsonKey(name: 'CustomerName')  String? customerName, @JsonKey(name: 'Address')  String? address, @JsonKey(name: 'City')  String? city, @JsonKey(name: 'ContactPerson')  String? contactPerson, @JsonKey(name: 'Phone1')  String? phone1, @JsonKey(name: 'Phone2')  String? phone2, @JsonKey(name: 'Phone3')  String? phone3, @JsonKey(name: 'GSM')  String? gsm, @JsonKey(name: 'Email')  String? email, @JsonKey(name: 'NTN')  String? ntn, @JsonKey(name: 'STN')  String? stn, @JsonKey(name: 'CustomerType')  String? customerType, @JsonKey(name: 'CNIC')  String? cnic, @JsonKey(name: 'ID')  int? id, @JsonKey(name: 'TenantID')  int? tenantId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetCustomersModel() when $default != null:
return $default(_that.customerId,_that.actualTownId,_that.customerName,_that.address,_that.city,_that.contactPerson,_that.phone1,_that.phone2,_that.phone3,_that.gsm,_that.email,_that.ntn,_that.stn,_that.customerType,_that.cnic,_that.id,_that.tenantId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'CustomerId')  String? customerId, @JsonKey(name: 'ActualTownId')  int? actualTownId, @JsonKey(name: 'CustomerName')  String? customerName, @JsonKey(name: 'Address')  String? address, @JsonKey(name: 'City')  String? city, @JsonKey(name: 'ContactPerson')  String? contactPerson, @JsonKey(name: 'Phone1')  String? phone1, @JsonKey(name: 'Phone2')  String? phone2, @JsonKey(name: 'Phone3')  String? phone3, @JsonKey(name: 'GSM')  String? gsm, @JsonKey(name: 'Email')  String? email, @JsonKey(name: 'NTN')  String? ntn, @JsonKey(name: 'STN')  String? stn, @JsonKey(name: 'CustomerType')  String? customerType, @JsonKey(name: 'CNIC')  String? cnic, @JsonKey(name: 'ID')  int? id, @JsonKey(name: 'TenantID')  int? tenantId)  $default,) {final _that = this;
switch (_that) {
case _GetCustomersModel():
return $default(_that.customerId,_that.actualTownId,_that.customerName,_that.address,_that.city,_that.contactPerson,_that.phone1,_that.phone2,_that.phone3,_that.gsm,_that.email,_that.ntn,_that.stn,_that.customerType,_that.cnic,_that.id,_that.tenantId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'CustomerId')  String? customerId, @JsonKey(name: 'ActualTownId')  int? actualTownId, @JsonKey(name: 'CustomerName')  String? customerName, @JsonKey(name: 'Address')  String? address, @JsonKey(name: 'City')  String? city, @JsonKey(name: 'ContactPerson')  String? contactPerson, @JsonKey(name: 'Phone1')  String? phone1, @JsonKey(name: 'Phone2')  String? phone2, @JsonKey(name: 'Phone3')  String? phone3, @JsonKey(name: 'GSM')  String? gsm, @JsonKey(name: 'Email')  String? email, @JsonKey(name: 'NTN')  String? ntn, @JsonKey(name: 'STN')  String? stn, @JsonKey(name: 'CustomerType')  String? customerType, @JsonKey(name: 'CNIC')  String? cnic, @JsonKey(name: 'ID')  int? id, @JsonKey(name: 'TenantID')  int? tenantId)?  $default,) {final _that = this;
switch (_that) {
case _GetCustomersModel() when $default != null:
return $default(_that.customerId,_that.actualTownId,_that.customerName,_that.address,_that.city,_that.contactPerson,_that.phone1,_that.phone2,_that.phone3,_that.gsm,_that.email,_that.ntn,_that.stn,_that.customerType,_that.cnic,_that.id,_that.tenantId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetCustomersModel implements GetCustomersModel {
  const _GetCustomersModel({@JsonKey(name: 'CustomerId') this.customerId, @JsonKey(name: 'ActualTownId') this.actualTownId, @JsonKey(name: 'CustomerName') this.customerName, @JsonKey(name: 'Address') this.address, @JsonKey(name: 'City') this.city, @JsonKey(name: 'ContactPerson') this.contactPerson, @JsonKey(name: 'Phone1') this.phone1, @JsonKey(name: 'Phone2') this.phone2, @JsonKey(name: 'Phone3') this.phone3, @JsonKey(name: 'GSM') this.gsm, @JsonKey(name: 'Email') this.email, @JsonKey(name: 'NTN') this.ntn, @JsonKey(name: 'STN') this.stn, @JsonKey(name: 'CustomerType') this.customerType, @JsonKey(name: 'CNIC') this.cnic, @JsonKey(name: 'ID') this.id, @JsonKey(name: 'TenantID') this.tenantId});
  factory _GetCustomersModel.fromJson(Map<String, dynamic> json) => _$GetCustomersModelFromJson(json);

@override@JsonKey(name: 'CustomerId') final  String? customerId;
@override@JsonKey(name: 'ActualTownId') final  int? actualTownId;
@override@JsonKey(name: 'CustomerName') final  String? customerName;
@override@JsonKey(name: 'Address') final  String? address;
@override@JsonKey(name: 'City') final  String? city;
@override@JsonKey(name: 'ContactPerson') final  String? contactPerson;
@override@JsonKey(name: 'Phone1') final  String? phone1;
@override@JsonKey(name: 'Phone2') final  String? phone2;
@override@JsonKey(name: 'Phone3') final  String? phone3;
@override@JsonKey(name: 'GSM') final  String? gsm;
@override@JsonKey(name: 'Email') final  String? email;
@override@JsonKey(name: 'NTN') final  String? ntn;
@override@JsonKey(name: 'STN') final  String? stn;
@override@JsonKey(name: 'CustomerType') final  String? customerType;
@override@JsonKey(name: 'CNIC') final  String? cnic;
@override@JsonKey(name: 'ID') final  int? id;
@override@JsonKey(name: 'TenantID') final  int? tenantId;

/// Create a copy of GetCustomersModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCustomersModelCopyWith<_GetCustomersModel> get copyWith => __$GetCustomersModelCopyWithImpl<_GetCustomersModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetCustomersModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCustomersModel&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.actualTownId, actualTownId) || other.actualTownId == actualTownId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.contactPerson, contactPerson) || other.contactPerson == contactPerson)&&(identical(other.phone1, phone1) || other.phone1 == phone1)&&(identical(other.phone2, phone2) || other.phone2 == phone2)&&(identical(other.phone3, phone3) || other.phone3 == phone3)&&(identical(other.gsm, gsm) || other.gsm == gsm)&&(identical(other.email, email) || other.email == email)&&(identical(other.ntn, ntn) || other.ntn == ntn)&&(identical(other.stn, stn) || other.stn == stn)&&(identical(other.customerType, customerType) || other.customerType == customerType)&&(identical(other.cnic, cnic) || other.cnic == cnic)&&(identical(other.id, id) || other.id == id)&&(identical(other.tenantId, tenantId) || other.tenantId == tenantId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerId,actualTownId,customerName,address,city,contactPerson,phone1,phone2,phone3,gsm,email,ntn,stn,customerType,cnic,id,tenantId);

@override
String toString() {
  return 'GetCustomersModel(customerId: $customerId, actualTownId: $actualTownId, customerName: $customerName, address: $address, city: $city, contactPerson: $contactPerson, phone1: $phone1, phone2: $phone2, phone3: $phone3, gsm: $gsm, email: $email, ntn: $ntn, stn: $stn, customerType: $customerType, cnic: $cnic, id: $id, tenantId: $tenantId)';
}


}

/// @nodoc
abstract mixin class _$GetCustomersModelCopyWith<$Res> implements $GetCustomersModelCopyWith<$Res> {
  factory _$GetCustomersModelCopyWith(_GetCustomersModel value, $Res Function(_GetCustomersModel) _then) = __$GetCustomersModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'CustomerId') String? customerId,@JsonKey(name: 'ActualTownId') int? actualTownId,@JsonKey(name: 'CustomerName') String? customerName,@JsonKey(name: 'Address') String? address,@JsonKey(name: 'City') String? city,@JsonKey(name: 'ContactPerson') String? contactPerson,@JsonKey(name: 'Phone1') String? phone1,@JsonKey(name: 'Phone2') String? phone2,@JsonKey(name: 'Phone3') String? phone3,@JsonKey(name: 'GSM') String? gsm,@JsonKey(name: 'Email') String? email,@JsonKey(name: 'NTN') String? ntn,@JsonKey(name: 'STN') String? stn,@JsonKey(name: 'CustomerType') String? customerType,@JsonKey(name: 'CNIC') String? cnic,@JsonKey(name: 'ID') int? id,@JsonKey(name: 'TenantID') int? tenantId
});




}
/// @nodoc
class __$GetCustomersModelCopyWithImpl<$Res>
    implements _$GetCustomersModelCopyWith<$Res> {
  __$GetCustomersModelCopyWithImpl(this._self, this._then);

  final _GetCustomersModel _self;
  final $Res Function(_GetCustomersModel) _then;

/// Create a copy of GetCustomersModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerId = freezed,Object? actualTownId = freezed,Object? customerName = freezed,Object? address = freezed,Object? city = freezed,Object? contactPerson = freezed,Object? phone1 = freezed,Object? phone2 = freezed,Object? phone3 = freezed,Object? gsm = freezed,Object? email = freezed,Object? ntn = freezed,Object? stn = freezed,Object? customerType = freezed,Object? cnic = freezed,Object? id = freezed,Object? tenantId = freezed,}) {
  return _then(_GetCustomersModel(
customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String?,actualTownId: freezed == actualTownId ? _self.actualTownId : actualTownId // ignore: cast_nullable_to_non_nullable
as int?,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,contactPerson: freezed == contactPerson ? _self.contactPerson : contactPerson // ignore: cast_nullable_to_non_nullable
as String?,phone1: freezed == phone1 ? _self.phone1 : phone1 // ignore: cast_nullable_to_non_nullable
as String?,phone2: freezed == phone2 ? _self.phone2 : phone2 // ignore: cast_nullable_to_non_nullable
as String?,phone3: freezed == phone3 ? _self.phone3 : phone3 // ignore: cast_nullable_to_non_nullable
as String?,gsm: freezed == gsm ? _self.gsm : gsm // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,ntn: freezed == ntn ? _self.ntn : ntn // ignore: cast_nullable_to_non_nullable
as String?,stn: freezed == stn ? _self.stn : stn // ignore: cast_nullable_to_non_nullable
as String?,customerType: freezed == customerType ? _self.customerType : customerType // ignore: cast_nullable_to_non_nullable
as String?,cnic: freezed == cnic ? _self.cnic : cnic // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,tenantId: freezed == tenantId ? _self.tenantId : tenantId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
