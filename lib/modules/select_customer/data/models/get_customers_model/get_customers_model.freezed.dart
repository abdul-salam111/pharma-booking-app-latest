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

@JsonKey(name: "id") int? get id;@JsonKey(name: "customerName") String? get customerName;@JsonKey(name: "address") String? get address;@JsonKey(name: "city") String? get city;@JsonKey(name: "contactPerson") String? get contactPerson;@JsonKey(name: "phone1") String? get phone1;@JsonKey(name: "mobile") String? get mobile;@JsonKey(name: "email") String? get email;@JsonKey(name: "ntn") String? get ntn;@JsonKey(name: "stn") String? get stn;@JsonKey(name: "customerType") String? get customerType;@JsonKey(name: "ordersCount") int? get ordersCount;@JsonKey(name: "priceLevel") int? get priceLevel;@JsonKey(name: "isActive") bool? get isActive;@JsonKey(name: "creditDays") int? get creditDays;@JsonKey(name: "creditLimit") int? get creditLimit;@JsonKey(name: "currentBalance") int? get currentBalance;@JsonKey(name: "lastOrderDate") DateTime? get lastOrderDate;@JsonKey(name: "lastPaymentDate") DateTime? get lastPaymentDate;@JsonKey(name: "isFiler") bool? get isFiler;@JsonKey(name: "latitude") double? get latitude;@JsonKey(name: "longitude") double? get longitude;@JsonKey(name: "subArea") SubArea? get subArea;@JsonKey(name: "defaultPrice") int? get defaultPrice;
/// Create a copy of GetCustomersModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetCustomersModelCopyWith<GetCustomersModel> get copyWith => _$GetCustomersModelCopyWithImpl<GetCustomersModel>(this as GetCustomersModel, _$identity);

  /// Serializes this GetCustomersModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCustomersModel&&(identical(other.id, id) || other.id == id)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.contactPerson, contactPerson) || other.contactPerson == contactPerson)&&(identical(other.phone1, phone1) || other.phone1 == phone1)&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.email, email) || other.email == email)&&(identical(other.ntn, ntn) || other.ntn == ntn)&&(identical(other.stn, stn) || other.stn == stn)&&(identical(other.customerType, customerType) || other.customerType == customerType)&&(identical(other.ordersCount, ordersCount) || other.ordersCount == ordersCount)&&(identical(other.priceLevel, priceLevel) || other.priceLevel == priceLevel)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.creditDays, creditDays) || other.creditDays == creditDays)&&(identical(other.creditLimit, creditLimit) || other.creditLimit == creditLimit)&&(identical(other.currentBalance, currentBalance) || other.currentBalance == currentBalance)&&(identical(other.lastOrderDate, lastOrderDate) || other.lastOrderDate == lastOrderDate)&&(identical(other.lastPaymentDate, lastPaymentDate) || other.lastPaymentDate == lastPaymentDate)&&(identical(other.isFiler, isFiler) || other.isFiler == isFiler)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.subArea, subArea) || other.subArea == subArea)&&(identical(other.defaultPrice, defaultPrice) || other.defaultPrice == defaultPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,customerName,address,city,contactPerson,phone1,mobile,email,ntn,stn,customerType,ordersCount,priceLevel,isActive,creditDays,creditLimit,currentBalance,lastOrderDate,lastPaymentDate,isFiler,latitude,longitude,subArea,defaultPrice]);

@override
String toString() {
  return 'GetCustomersModel(id: $id, customerName: $customerName, address: $address, city: $city, contactPerson: $contactPerson, phone1: $phone1, mobile: $mobile, email: $email, ntn: $ntn, stn: $stn, customerType: $customerType, ordersCount: $ordersCount, priceLevel: $priceLevel, isActive: $isActive, creditDays: $creditDays, creditLimit: $creditLimit, currentBalance: $currentBalance, lastOrderDate: $lastOrderDate, lastPaymentDate: $lastPaymentDate, isFiler: $isFiler, latitude: $latitude, longitude: $longitude, subArea: $subArea, defaultPrice: $defaultPrice)';
}


}

/// @nodoc
abstract mixin class $GetCustomersModelCopyWith<$Res>  {
  factory $GetCustomersModelCopyWith(GetCustomersModel value, $Res Function(GetCustomersModel) _then) = _$GetCustomersModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "customerName") String? customerName,@JsonKey(name: "address") String? address,@JsonKey(name: "city") String? city,@JsonKey(name: "contactPerson") String? contactPerson,@JsonKey(name: "phone1") String? phone1,@JsonKey(name: "mobile") String? mobile,@JsonKey(name: "email") String? email,@JsonKey(name: "ntn") String? ntn,@JsonKey(name: "stn") String? stn,@JsonKey(name: "customerType") String? customerType,@JsonKey(name: "ordersCount") int? ordersCount,@JsonKey(name: "priceLevel") int? priceLevel,@JsonKey(name: "isActive") bool? isActive,@JsonKey(name: "creditDays") int? creditDays,@JsonKey(name: "creditLimit") int? creditLimit,@JsonKey(name: "currentBalance") int? currentBalance,@JsonKey(name: "lastOrderDate") DateTime? lastOrderDate,@JsonKey(name: "lastPaymentDate") DateTime? lastPaymentDate,@JsonKey(name: "isFiler") bool? isFiler,@JsonKey(name: "latitude") double? latitude,@JsonKey(name: "longitude") double? longitude,@JsonKey(name: "subArea") SubArea? subArea,@JsonKey(name: "defaultPrice") int? defaultPrice
});


$SubAreaCopyWith<$Res>? get subArea;

}
/// @nodoc
class _$GetCustomersModelCopyWithImpl<$Res>
    implements $GetCustomersModelCopyWith<$Res> {
  _$GetCustomersModelCopyWithImpl(this._self, this._then);

  final GetCustomersModel _self;
  final $Res Function(GetCustomersModel) _then;

/// Create a copy of GetCustomersModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? customerName = freezed,Object? address = freezed,Object? city = freezed,Object? contactPerson = freezed,Object? phone1 = freezed,Object? mobile = freezed,Object? email = freezed,Object? ntn = freezed,Object? stn = freezed,Object? customerType = freezed,Object? ordersCount = freezed,Object? priceLevel = freezed,Object? isActive = freezed,Object? creditDays = freezed,Object? creditLimit = freezed,Object? currentBalance = freezed,Object? lastOrderDate = freezed,Object? lastPaymentDate = freezed,Object? isFiler = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? subArea = freezed,Object? defaultPrice = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,contactPerson: freezed == contactPerson ? _self.contactPerson : contactPerson // ignore: cast_nullable_to_non_nullable
as String?,phone1: freezed == phone1 ? _self.phone1 : phone1 // ignore: cast_nullable_to_non_nullable
as String?,mobile: freezed == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,ntn: freezed == ntn ? _self.ntn : ntn // ignore: cast_nullable_to_non_nullable
as String?,stn: freezed == stn ? _self.stn : stn // ignore: cast_nullable_to_non_nullable
as String?,customerType: freezed == customerType ? _self.customerType : customerType // ignore: cast_nullable_to_non_nullable
as String?,ordersCount: freezed == ordersCount ? _self.ordersCount : ordersCount // ignore: cast_nullable_to_non_nullable
as int?,priceLevel: freezed == priceLevel ? _self.priceLevel : priceLevel // ignore: cast_nullable_to_non_nullable
as int?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,creditDays: freezed == creditDays ? _self.creditDays : creditDays // ignore: cast_nullable_to_non_nullable
as int?,creditLimit: freezed == creditLimit ? _self.creditLimit : creditLimit // ignore: cast_nullable_to_non_nullable
as int?,currentBalance: freezed == currentBalance ? _self.currentBalance : currentBalance // ignore: cast_nullable_to_non_nullable
as int?,lastOrderDate: freezed == lastOrderDate ? _self.lastOrderDate : lastOrderDate // ignore: cast_nullable_to_non_nullable
as DateTime?,lastPaymentDate: freezed == lastPaymentDate ? _self.lastPaymentDate : lastPaymentDate // ignore: cast_nullable_to_non_nullable
as DateTime?,isFiler: freezed == isFiler ? _self.isFiler : isFiler // ignore: cast_nullable_to_non_nullable
as bool?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,subArea: freezed == subArea ? _self.subArea : subArea // ignore: cast_nullable_to_non_nullable
as SubArea?,defaultPrice: freezed == defaultPrice ? _self.defaultPrice : defaultPrice // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of GetCustomersModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubAreaCopyWith<$Res>? get subArea {
    if (_self.subArea == null) {
    return null;
  }

  return $SubAreaCopyWith<$Res>(_self.subArea!, (value) {
    return _then(_self.copyWith(subArea: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "customerName")  String? customerName, @JsonKey(name: "address")  String? address, @JsonKey(name: "city")  String? city, @JsonKey(name: "contactPerson")  String? contactPerson, @JsonKey(name: "phone1")  String? phone1, @JsonKey(name: "mobile")  String? mobile, @JsonKey(name: "email")  String? email, @JsonKey(name: "ntn")  String? ntn, @JsonKey(name: "stn")  String? stn, @JsonKey(name: "customerType")  String? customerType, @JsonKey(name: "ordersCount")  int? ordersCount, @JsonKey(name: "priceLevel")  int? priceLevel, @JsonKey(name: "isActive")  bool? isActive, @JsonKey(name: "creditDays")  int? creditDays, @JsonKey(name: "creditLimit")  int? creditLimit, @JsonKey(name: "currentBalance")  int? currentBalance, @JsonKey(name: "lastOrderDate")  DateTime? lastOrderDate, @JsonKey(name: "lastPaymentDate")  DateTime? lastPaymentDate, @JsonKey(name: "isFiler")  bool? isFiler, @JsonKey(name: "latitude")  double? latitude, @JsonKey(name: "longitude")  double? longitude, @JsonKey(name: "subArea")  SubArea? subArea, @JsonKey(name: "defaultPrice")  int? defaultPrice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetCustomersModel() when $default != null:
return $default(_that.id,_that.customerName,_that.address,_that.city,_that.contactPerson,_that.phone1,_that.mobile,_that.email,_that.ntn,_that.stn,_that.customerType,_that.ordersCount,_that.priceLevel,_that.isActive,_that.creditDays,_that.creditLimit,_that.currentBalance,_that.lastOrderDate,_that.lastPaymentDate,_that.isFiler,_that.latitude,_that.longitude,_that.subArea,_that.defaultPrice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "customerName")  String? customerName, @JsonKey(name: "address")  String? address, @JsonKey(name: "city")  String? city, @JsonKey(name: "contactPerson")  String? contactPerson, @JsonKey(name: "phone1")  String? phone1, @JsonKey(name: "mobile")  String? mobile, @JsonKey(name: "email")  String? email, @JsonKey(name: "ntn")  String? ntn, @JsonKey(name: "stn")  String? stn, @JsonKey(name: "customerType")  String? customerType, @JsonKey(name: "ordersCount")  int? ordersCount, @JsonKey(name: "priceLevel")  int? priceLevel, @JsonKey(name: "isActive")  bool? isActive, @JsonKey(name: "creditDays")  int? creditDays, @JsonKey(name: "creditLimit")  int? creditLimit, @JsonKey(name: "currentBalance")  int? currentBalance, @JsonKey(name: "lastOrderDate")  DateTime? lastOrderDate, @JsonKey(name: "lastPaymentDate")  DateTime? lastPaymentDate, @JsonKey(name: "isFiler")  bool? isFiler, @JsonKey(name: "latitude")  double? latitude, @JsonKey(name: "longitude")  double? longitude, @JsonKey(name: "subArea")  SubArea? subArea, @JsonKey(name: "defaultPrice")  int? defaultPrice)  $default,) {final _that = this;
switch (_that) {
case _GetCustomersModel():
return $default(_that.id,_that.customerName,_that.address,_that.city,_that.contactPerson,_that.phone1,_that.mobile,_that.email,_that.ntn,_that.stn,_that.customerType,_that.ordersCount,_that.priceLevel,_that.isActive,_that.creditDays,_that.creditLimit,_that.currentBalance,_that.lastOrderDate,_that.lastPaymentDate,_that.isFiler,_that.latitude,_that.longitude,_that.subArea,_that.defaultPrice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "customerName")  String? customerName, @JsonKey(name: "address")  String? address, @JsonKey(name: "city")  String? city, @JsonKey(name: "contactPerson")  String? contactPerson, @JsonKey(name: "phone1")  String? phone1, @JsonKey(name: "mobile")  String? mobile, @JsonKey(name: "email")  String? email, @JsonKey(name: "ntn")  String? ntn, @JsonKey(name: "stn")  String? stn, @JsonKey(name: "customerType")  String? customerType, @JsonKey(name: "ordersCount")  int? ordersCount, @JsonKey(name: "priceLevel")  int? priceLevel, @JsonKey(name: "isActive")  bool? isActive, @JsonKey(name: "creditDays")  int? creditDays, @JsonKey(name: "creditLimit")  int? creditLimit, @JsonKey(name: "currentBalance")  int? currentBalance, @JsonKey(name: "lastOrderDate")  DateTime? lastOrderDate, @JsonKey(name: "lastPaymentDate")  DateTime? lastPaymentDate, @JsonKey(name: "isFiler")  bool? isFiler, @JsonKey(name: "latitude")  double? latitude, @JsonKey(name: "longitude")  double? longitude, @JsonKey(name: "subArea")  SubArea? subArea, @JsonKey(name: "defaultPrice")  int? defaultPrice)?  $default,) {final _that = this;
switch (_that) {
case _GetCustomersModel() when $default != null:
return $default(_that.id,_that.customerName,_that.address,_that.city,_that.contactPerson,_that.phone1,_that.mobile,_that.email,_that.ntn,_that.stn,_that.customerType,_that.ordersCount,_that.priceLevel,_that.isActive,_that.creditDays,_that.creditLimit,_that.currentBalance,_that.lastOrderDate,_that.lastPaymentDate,_that.isFiler,_that.latitude,_that.longitude,_that.subArea,_that.defaultPrice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetCustomersModel implements GetCustomersModel {
  const _GetCustomersModel({@JsonKey(name: "id") this.id, @JsonKey(name: "customerName") this.customerName, @JsonKey(name: "address") this.address, @JsonKey(name: "city") this.city, @JsonKey(name: "contactPerson") this.contactPerson, @JsonKey(name: "phone1") this.phone1, @JsonKey(name: "mobile") this.mobile, @JsonKey(name: "email") this.email, @JsonKey(name: "ntn") this.ntn, @JsonKey(name: "stn") this.stn, @JsonKey(name: "customerType") this.customerType, @JsonKey(name: "ordersCount") this.ordersCount, @JsonKey(name: "priceLevel") this.priceLevel, @JsonKey(name: "isActive") this.isActive, @JsonKey(name: "creditDays") this.creditDays, @JsonKey(name: "creditLimit") this.creditLimit, @JsonKey(name: "currentBalance") this.currentBalance, @JsonKey(name: "lastOrderDate") this.lastOrderDate, @JsonKey(name: "lastPaymentDate") this.lastPaymentDate, @JsonKey(name: "isFiler") this.isFiler, @JsonKey(name: "latitude") this.latitude, @JsonKey(name: "longitude") this.longitude, @JsonKey(name: "subArea") this.subArea, @JsonKey(name: "defaultPrice") this.defaultPrice});
  factory _GetCustomersModel.fromJson(Map<String, dynamic> json) => _$GetCustomersModelFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "customerName") final  String? customerName;
@override@JsonKey(name: "address") final  String? address;
@override@JsonKey(name: "city") final  String? city;
@override@JsonKey(name: "contactPerson") final  String? contactPerson;
@override@JsonKey(name: "phone1") final  String? phone1;
@override@JsonKey(name: "mobile") final  String? mobile;
@override@JsonKey(name: "email") final  String? email;
@override@JsonKey(name: "ntn") final  String? ntn;
@override@JsonKey(name: "stn") final  String? stn;
@override@JsonKey(name: "customerType") final  String? customerType;
@override@JsonKey(name: "ordersCount") final  int? ordersCount;
@override@JsonKey(name: "priceLevel") final  int? priceLevel;
@override@JsonKey(name: "isActive") final  bool? isActive;
@override@JsonKey(name: "creditDays") final  int? creditDays;
@override@JsonKey(name: "creditLimit") final  int? creditLimit;
@override@JsonKey(name: "currentBalance") final  int? currentBalance;
@override@JsonKey(name: "lastOrderDate") final  DateTime? lastOrderDate;
@override@JsonKey(name: "lastPaymentDate") final  DateTime? lastPaymentDate;
@override@JsonKey(name: "isFiler") final  bool? isFiler;
@override@JsonKey(name: "latitude") final  double? latitude;
@override@JsonKey(name: "longitude") final  double? longitude;
@override@JsonKey(name: "subArea") final  SubArea? subArea;
@override@JsonKey(name: "defaultPrice") final  int? defaultPrice;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCustomersModel&&(identical(other.id, id) || other.id == id)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.contactPerson, contactPerson) || other.contactPerson == contactPerson)&&(identical(other.phone1, phone1) || other.phone1 == phone1)&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.email, email) || other.email == email)&&(identical(other.ntn, ntn) || other.ntn == ntn)&&(identical(other.stn, stn) || other.stn == stn)&&(identical(other.customerType, customerType) || other.customerType == customerType)&&(identical(other.ordersCount, ordersCount) || other.ordersCount == ordersCount)&&(identical(other.priceLevel, priceLevel) || other.priceLevel == priceLevel)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.creditDays, creditDays) || other.creditDays == creditDays)&&(identical(other.creditLimit, creditLimit) || other.creditLimit == creditLimit)&&(identical(other.currentBalance, currentBalance) || other.currentBalance == currentBalance)&&(identical(other.lastOrderDate, lastOrderDate) || other.lastOrderDate == lastOrderDate)&&(identical(other.lastPaymentDate, lastPaymentDate) || other.lastPaymentDate == lastPaymentDate)&&(identical(other.isFiler, isFiler) || other.isFiler == isFiler)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.subArea, subArea) || other.subArea == subArea)&&(identical(other.defaultPrice, defaultPrice) || other.defaultPrice == defaultPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,customerName,address,city,contactPerson,phone1,mobile,email,ntn,stn,customerType,ordersCount,priceLevel,isActive,creditDays,creditLimit,currentBalance,lastOrderDate,lastPaymentDate,isFiler,latitude,longitude,subArea,defaultPrice]);

@override
String toString() {
  return 'GetCustomersModel(id: $id, customerName: $customerName, address: $address, city: $city, contactPerson: $contactPerson, phone1: $phone1, mobile: $mobile, email: $email, ntn: $ntn, stn: $stn, customerType: $customerType, ordersCount: $ordersCount, priceLevel: $priceLevel, isActive: $isActive, creditDays: $creditDays, creditLimit: $creditLimit, currentBalance: $currentBalance, lastOrderDate: $lastOrderDate, lastPaymentDate: $lastPaymentDate, isFiler: $isFiler, latitude: $latitude, longitude: $longitude, subArea: $subArea, defaultPrice: $defaultPrice)';
}


}

/// @nodoc
abstract mixin class _$GetCustomersModelCopyWith<$Res> implements $GetCustomersModelCopyWith<$Res> {
  factory _$GetCustomersModelCopyWith(_GetCustomersModel value, $Res Function(_GetCustomersModel) _then) = __$GetCustomersModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "customerName") String? customerName,@JsonKey(name: "address") String? address,@JsonKey(name: "city") String? city,@JsonKey(name: "contactPerson") String? contactPerson,@JsonKey(name: "phone1") String? phone1,@JsonKey(name: "mobile") String? mobile,@JsonKey(name: "email") String? email,@JsonKey(name: "ntn") String? ntn,@JsonKey(name: "stn") String? stn,@JsonKey(name: "customerType") String? customerType,@JsonKey(name: "ordersCount") int? ordersCount,@JsonKey(name: "priceLevel") int? priceLevel,@JsonKey(name: "isActive") bool? isActive,@JsonKey(name: "creditDays") int? creditDays,@JsonKey(name: "creditLimit") int? creditLimit,@JsonKey(name: "currentBalance") int? currentBalance,@JsonKey(name: "lastOrderDate") DateTime? lastOrderDate,@JsonKey(name: "lastPaymentDate") DateTime? lastPaymentDate,@JsonKey(name: "isFiler") bool? isFiler,@JsonKey(name: "latitude") double? latitude,@JsonKey(name: "longitude") double? longitude,@JsonKey(name: "subArea") SubArea? subArea,@JsonKey(name: "defaultPrice") int? defaultPrice
});


@override $SubAreaCopyWith<$Res>? get subArea;

}
/// @nodoc
class __$GetCustomersModelCopyWithImpl<$Res>
    implements _$GetCustomersModelCopyWith<$Res> {
  __$GetCustomersModelCopyWithImpl(this._self, this._then);

  final _GetCustomersModel _self;
  final $Res Function(_GetCustomersModel) _then;

/// Create a copy of GetCustomersModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? customerName = freezed,Object? address = freezed,Object? city = freezed,Object? contactPerson = freezed,Object? phone1 = freezed,Object? mobile = freezed,Object? email = freezed,Object? ntn = freezed,Object? stn = freezed,Object? customerType = freezed,Object? ordersCount = freezed,Object? priceLevel = freezed,Object? isActive = freezed,Object? creditDays = freezed,Object? creditLimit = freezed,Object? currentBalance = freezed,Object? lastOrderDate = freezed,Object? lastPaymentDate = freezed,Object? isFiler = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? subArea = freezed,Object? defaultPrice = freezed,}) {
  return _then(_GetCustomersModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,contactPerson: freezed == contactPerson ? _self.contactPerson : contactPerson // ignore: cast_nullable_to_non_nullable
as String?,phone1: freezed == phone1 ? _self.phone1 : phone1 // ignore: cast_nullable_to_non_nullable
as String?,mobile: freezed == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,ntn: freezed == ntn ? _self.ntn : ntn // ignore: cast_nullable_to_non_nullable
as String?,stn: freezed == stn ? _self.stn : stn // ignore: cast_nullable_to_non_nullable
as String?,customerType: freezed == customerType ? _self.customerType : customerType // ignore: cast_nullable_to_non_nullable
as String?,ordersCount: freezed == ordersCount ? _self.ordersCount : ordersCount // ignore: cast_nullable_to_non_nullable
as int?,priceLevel: freezed == priceLevel ? _self.priceLevel : priceLevel // ignore: cast_nullable_to_non_nullable
as int?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,creditDays: freezed == creditDays ? _self.creditDays : creditDays // ignore: cast_nullable_to_non_nullable
as int?,creditLimit: freezed == creditLimit ? _self.creditLimit : creditLimit // ignore: cast_nullable_to_non_nullable
as int?,currentBalance: freezed == currentBalance ? _self.currentBalance : currentBalance // ignore: cast_nullable_to_non_nullable
as int?,lastOrderDate: freezed == lastOrderDate ? _self.lastOrderDate : lastOrderDate // ignore: cast_nullable_to_non_nullable
as DateTime?,lastPaymentDate: freezed == lastPaymentDate ? _self.lastPaymentDate : lastPaymentDate // ignore: cast_nullable_to_non_nullable
as DateTime?,isFiler: freezed == isFiler ? _self.isFiler : isFiler // ignore: cast_nullable_to_non_nullable
as bool?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,subArea: freezed == subArea ? _self.subArea : subArea // ignore: cast_nullable_to_non_nullable
as SubArea?,defaultPrice: freezed == defaultPrice ? _self.defaultPrice : defaultPrice // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of GetCustomersModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubAreaCopyWith<$Res>? get subArea {
    if (_self.subArea == null) {
    return null;
  }

  return $SubAreaCopyWith<$Res>(_self.subArea!, (value) {
    return _then(_self.copyWith(subArea: value));
  });
}
}


/// @nodoc
mixin _$SubArea {

@JsonKey(name: "id") int? get id;@JsonKey(name: "name") String? get name;@JsonKey(name: "areaId") int? get areaId;
/// Create a copy of SubArea
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubAreaCopyWith<SubArea> get copyWith => _$SubAreaCopyWithImpl<SubArea>(this as SubArea, _$identity);

  /// Serializes this SubArea to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubArea&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.areaId, areaId) || other.areaId == areaId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,areaId);

@override
String toString() {
  return 'SubArea(id: $id, name: $name, areaId: $areaId)';
}


}

/// @nodoc
abstract mixin class $SubAreaCopyWith<$Res>  {
  factory $SubAreaCopyWith(SubArea value, $Res Function(SubArea) _then) = _$SubAreaCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name,@JsonKey(name: "areaId") int? areaId
});




}
/// @nodoc
class _$SubAreaCopyWithImpl<$Res>
    implements $SubAreaCopyWith<$Res> {
  _$SubAreaCopyWithImpl(this._self, this._then);

  final SubArea _self;
  final $Res Function(SubArea) _then;

/// Create a copy of SubArea
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


/// Adds pattern-matching-related methods to [SubArea].
extension SubAreaPatterns on SubArea {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubArea value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubArea() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubArea value)  $default,){
final _that = this;
switch (_that) {
case _SubArea():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubArea value)?  $default,){
final _that = this;
switch (_that) {
case _SubArea() when $default != null:
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
case _SubArea() when $default != null:
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
case _SubArea():
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
case _SubArea() when $default != null:
return $default(_that.id,_that.name,_that.areaId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubArea implements SubArea {
  const _SubArea({@JsonKey(name: "id") this.id, @JsonKey(name: "name") this.name, @JsonKey(name: "areaId") this.areaId});
  factory _SubArea.fromJson(Map<String, dynamic> json) => _$SubAreaFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "areaId") final  int? areaId;

/// Create a copy of SubArea
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubAreaCopyWith<_SubArea> get copyWith => __$SubAreaCopyWithImpl<_SubArea>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubAreaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubArea&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.areaId, areaId) || other.areaId == areaId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,areaId);

@override
String toString() {
  return 'SubArea(id: $id, name: $name, areaId: $areaId)';
}


}

/// @nodoc
abstract mixin class _$SubAreaCopyWith<$Res> implements $SubAreaCopyWith<$Res> {
  factory _$SubAreaCopyWith(_SubArea value, $Res Function(_SubArea) _then) = __$SubAreaCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name,@JsonKey(name: "areaId") int? areaId
});




}
/// @nodoc
class __$SubAreaCopyWithImpl<$Res>
    implements _$SubAreaCopyWith<$Res> {
  __$SubAreaCopyWithImpl(this._self, this._then);

  final _SubArea _self;
  final $Res Function(_SubArea) _then;

/// Create a copy of SubArea
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? areaId = freezed,}) {
  return _then(_SubArea(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,areaId: freezed == areaId ? _self.areaId : areaId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
