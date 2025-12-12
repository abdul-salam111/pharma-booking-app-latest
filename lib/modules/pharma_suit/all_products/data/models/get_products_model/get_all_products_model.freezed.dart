// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_products_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetAllProductsModel {

@JsonKey(name: "id") int? get id;@JsonKey(name: "productName") String? get productName;@JsonKey(name: "companyId") int? get companyId;@JsonKey(name: "groupId") int? get groupId;@JsonKey(name: "purPackingId") int? get purPackingId;@JsonKey(name: "salPackingId") int? get salPackingId;@JsonKey(name: "pricePackSal1") double? get pricePackSal1;@JsonKey(name: "pricePackSal2") double? get pricePackSal2;@JsonKey(name: "pricePackSal3") double? get pricePackSal3;@JsonKey(name: "saleDiscRatio") double? get saleDiscRatio;@JsonKey(name: "discRatioSal1") double? get discRatioSal1;@JsonKey(name: "discRatioSal2") double? get discRatioSal2;@JsonKey(name: "discRatioSal3") double? get discRatioSal3;@JsonKey(name: "discValPackSal1") int? get discValPackSal1;@JsonKey(name: "isValueB4Ratio")@BoolToIntConverter() bool? get isValueB4Ratio;@JsonKey(name: "sTaxRatio") double? get sTaxRatio;@JsonKey(name: "isSTaxOnBnsSal")@BoolToIntConverter() bool? get isSTaxOnBnsSal;@JsonKey(name: "size") String? get size;@JsonKey(name: "unit") String? get unit;@JsonKey(name: "packSize") String? get packSize;@JsonKey(name: "tradePrice") double? get tradePrice;@JsonKey(name: "currentStock") int? get currentStock;@JsonKey(name: "packings")@PackingListConverter() List<Packing>? get packings;
/// Create a copy of GetAllProductsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllProductsModelCopyWith<GetAllProductsModel> get copyWith => _$GetAllProductsModelCopyWithImpl<GetAllProductsModel>(this as GetAllProductsModel, _$identity);

  /// Serializes this GetAllProductsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllProductsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.purPackingId, purPackingId) || other.purPackingId == purPackingId)&&(identical(other.salPackingId, salPackingId) || other.salPackingId == salPackingId)&&(identical(other.pricePackSal1, pricePackSal1) || other.pricePackSal1 == pricePackSal1)&&(identical(other.pricePackSal2, pricePackSal2) || other.pricePackSal2 == pricePackSal2)&&(identical(other.pricePackSal3, pricePackSal3) || other.pricePackSal3 == pricePackSal3)&&(identical(other.saleDiscRatio, saleDiscRatio) || other.saleDiscRatio == saleDiscRatio)&&(identical(other.discRatioSal1, discRatioSal1) || other.discRatioSal1 == discRatioSal1)&&(identical(other.discRatioSal2, discRatioSal2) || other.discRatioSal2 == discRatioSal2)&&(identical(other.discRatioSal3, discRatioSal3) || other.discRatioSal3 == discRatioSal3)&&(identical(other.discValPackSal1, discValPackSal1) || other.discValPackSal1 == discValPackSal1)&&(identical(other.isValueB4Ratio, isValueB4Ratio) || other.isValueB4Ratio == isValueB4Ratio)&&(identical(other.sTaxRatio, sTaxRatio) || other.sTaxRatio == sTaxRatio)&&(identical(other.isSTaxOnBnsSal, isSTaxOnBnsSal) || other.isSTaxOnBnsSal == isSTaxOnBnsSal)&&(identical(other.size, size) || other.size == size)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.packSize, packSize) || other.packSize == packSize)&&(identical(other.tradePrice, tradePrice) || other.tradePrice == tradePrice)&&(identical(other.currentStock, currentStock) || other.currentStock == currentStock)&&const DeepCollectionEquality().equals(other.packings, packings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,productName,companyId,groupId,purPackingId,salPackingId,pricePackSal1,pricePackSal2,pricePackSal3,saleDiscRatio,discRatioSal1,discRatioSal2,discRatioSal3,discValPackSal1,isValueB4Ratio,sTaxRatio,isSTaxOnBnsSal,size,unit,packSize,tradePrice,currentStock,const DeepCollectionEquality().hash(packings)]);

@override
String toString() {
  return 'GetAllProductsModel(id: $id, productName: $productName, companyId: $companyId, groupId: $groupId, purPackingId: $purPackingId, salPackingId: $salPackingId, pricePackSal1: $pricePackSal1, pricePackSal2: $pricePackSal2, pricePackSal3: $pricePackSal3, saleDiscRatio: $saleDiscRatio, discRatioSal1: $discRatioSal1, discRatioSal2: $discRatioSal2, discRatioSal3: $discRatioSal3, discValPackSal1: $discValPackSal1, isValueB4Ratio: $isValueB4Ratio, sTaxRatio: $sTaxRatio, isSTaxOnBnsSal: $isSTaxOnBnsSal, size: $size, unit: $unit, packSize: $packSize, tradePrice: $tradePrice, currentStock: $currentStock, packings: $packings)';
}


}

/// @nodoc
abstract mixin class $GetAllProductsModelCopyWith<$Res>  {
  factory $GetAllProductsModelCopyWith(GetAllProductsModel value, $Res Function(GetAllProductsModel) _then) = _$GetAllProductsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "productName") String? productName,@JsonKey(name: "companyId") int? companyId,@JsonKey(name: "groupId") int? groupId,@JsonKey(name: "purPackingId") int? purPackingId,@JsonKey(name: "salPackingId") int? salPackingId,@JsonKey(name: "pricePackSal1") double? pricePackSal1,@JsonKey(name: "pricePackSal2") double? pricePackSal2,@JsonKey(name: "pricePackSal3") double? pricePackSal3,@JsonKey(name: "saleDiscRatio") double? saleDiscRatio,@JsonKey(name: "discRatioSal1") double? discRatioSal1,@JsonKey(name: "discRatioSal2") double? discRatioSal2,@JsonKey(name: "discRatioSal3") double? discRatioSal3,@JsonKey(name: "discValPackSal1") int? discValPackSal1,@JsonKey(name: "isValueB4Ratio")@BoolToIntConverter() bool? isValueB4Ratio,@JsonKey(name: "sTaxRatio") double? sTaxRatio,@JsonKey(name: "isSTaxOnBnsSal")@BoolToIntConverter() bool? isSTaxOnBnsSal,@JsonKey(name: "size") String? size,@JsonKey(name: "unit") String? unit,@JsonKey(name: "packSize") String? packSize,@JsonKey(name: "tradePrice") double? tradePrice,@JsonKey(name: "currentStock") int? currentStock,@JsonKey(name: "packings")@PackingListConverter() List<Packing>? packings
});




}
/// @nodoc
class _$GetAllProductsModelCopyWithImpl<$Res>
    implements $GetAllProductsModelCopyWith<$Res> {
  _$GetAllProductsModelCopyWithImpl(this._self, this._then);

  final GetAllProductsModel _self;
  final $Res Function(GetAllProductsModel) _then;

/// Create a copy of GetAllProductsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? productName = freezed,Object? companyId = freezed,Object? groupId = freezed,Object? purPackingId = freezed,Object? salPackingId = freezed,Object? pricePackSal1 = freezed,Object? pricePackSal2 = freezed,Object? pricePackSal3 = freezed,Object? saleDiscRatio = freezed,Object? discRatioSal1 = freezed,Object? discRatioSal2 = freezed,Object? discRatioSal3 = freezed,Object? discValPackSal1 = freezed,Object? isValueB4Ratio = freezed,Object? sTaxRatio = freezed,Object? isSTaxOnBnsSal = freezed,Object? size = freezed,Object? unit = freezed,Object? packSize = freezed,Object? tradePrice = freezed,Object? currentStock = freezed,Object? packings = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,companyId: freezed == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int?,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int?,purPackingId: freezed == purPackingId ? _self.purPackingId : purPackingId // ignore: cast_nullable_to_non_nullable
as int?,salPackingId: freezed == salPackingId ? _self.salPackingId : salPackingId // ignore: cast_nullable_to_non_nullable
as int?,pricePackSal1: freezed == pricePackSal1 ? _self.pricePackSal1 : pricePackSal1 // ignore: cast_nullable_to_non_nullable
as double?,pricePackSal2: freezed == pricePackSal2 ? _self.pricePackSal2 : pricePackSal2 // ignore: cast_nullable_to_non_nullable
as double?,pricePackSal3: freezed == pricePackSal3 ? _self.pricePackSal3 : pricePackSal3 // ignore: cast_nullable_to_non_nullable
as double?,saleDiscRatio: freezed == saleDiscRatio ? _self.saleDiscRatio : saleDiscRatio // ignore: cast_nullable_to_non_nullable
as double?,discRatioSal1: freezed == discRatioSal1 ? _self.discRatioSal1 : discRatioSal1 // ignore: cast_nullable_to_non_nullable
as double?,discRatioSal2: freezed == discRatioSal2 ? _self.discRatioSal2 : discRatioSal2 // ignore: cast_nullable_to_non_nullable
as double?,discRatioSal3: freezed == discRatioSal3 ? _self.discRatioSal3 : discRatioSal3 // ignore: cast_nullable_to_non_nullable
as double?,discValPackSal1: freezed == discValPackSal1 ? _self.discValPackSal1 : discValPackSal1 // ignore: cast_nullable_to_non_nullable
as int?,isValueB4Ratio: freezed == isValueB4Ratio ? _self.isValueB4Ratio : isValueB4Ratio // ignore: cast_nullable_to_non_nullable
as bool?,sTaxRatio: freezed == sTaxRatio ? _self.sTaxRatio : sTaxRatio // ignore: cast_nullable_to_non_nullable
as double?,isSTaxOnBnsSal: freezed == isSTaxOnBnsSal ? _self.isSTaxOnBnsSal : isSTaxOnBnsSal // ignore: cast_nullable_to_non_nullable
as bool?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as String?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String?,packSize: freezed == packSize ? _self.packSize : packSize // ignore: cast_nullable_to_non_nullable
as String?,tradePrice: freezed == tradePrice ? _self.tradePrice : tradePrice // ignore: cast_nullable_to_non_nullable
as double?,currentStock: freezed == currentStock ? _self.currentStock : currentStock // ignore: cast_nullable_to_non_nullable
as int?,packings: freezed == packings ? _self.packings : packings // ignore: cast_nullable_to_non_nullable
as List<Packing>?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetAllProductsModel].
extension GetAllProductsModelPatterns on GetAllProductsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetAllProductsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetAllProductsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetAllProductsModel value)  $default,){
final _that = this;
switch (_that) {
case _GetAllProductsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetAllProductsModel value)?  $default,){
final _that = this;
switch (_that) {
case _GetAllProductsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "productName")  String? productName, @JsonKey(name: "companyId")  int? companyId, @JsonKey(name: "groupId")  int? groupId, @JsonKey(name: "purPackingId")  int? purPackingId, @JsonKey(name: "salPackingId")  int? salPackingId, @JsonKey(name: "pricePackSal1")  double? pricePackSal1, @JsonKey(name: "pricePackSal2")  double? pricePackSal2, @JsonKey(name: "pricePackSal3")  double? pricePackSal3, @JsonKey(name: "saleDiscRatio")  double? saleDiscRatio, @JsonKey(name: "discRatioSal1")  double? discRatioSal1, @JsonKey(name: "discRatioSal2")  double? discRatioSal2, @JsonKey(name: "discRatioSal3")  double? discRatioSal3, @JsonKey(name: "discValPackSal1")  int? discValPackSal1, @JsonKey(name: "isValueB4Ratio")@BoolToIntConverter()  bool? isValueB4Ratio, @JsonKey(name: "sTaxRatio")  double? sTaxRatio, @JsonKey(name: "isSTaxOnBnsSal")@BoolToIntConverter()  bool? isSTaxOnBnsSal, @JsonKey(name: "size")  String? size, @JsonKey(name: "unit")  String? unit, @JsonKey(name: "packSize")  String? packSize, @JsonKey(name: "tradePrice")  double? tradePrice, @JsonKey(name: "currentStock")  int? currentStock, @JsonKey(name: "packings")@PackingListConverter()  List<Packing>? packings)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetAllProductsModel() when $default != null:
return $default(_that.id,_that.productName,_that.companyId,_that.groupId,_that.purPackingId,_that.salPackingId,_that.pricePackSal1,_that.pricePackSal2,_that.pricePackSal3,_that.saleDiscRatio,_that.discRatioSal1,_that.discRatioSal2,_that.discRatioSal3,_that.discValPackSal1,_that.isValueB4Ratio,_that.sTaxRatio,_that.isSTaxOnBnsSal,_that.size,_that.unit,_that.packSize,_that.tradePrice,_that.currentStock,_that.packings);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "productName")  String? productName, @JsonKey(name: "companyId")  int? companyId, @JsonKey(name: "groupId")  int? groupId, @JsonKey(name: "purPackingId")  int? purPackingId, @JsonKey(name: "salPackingId")  int? salPackingId, @JsonKey(name: "pricePackSal1")  double? pricePackSal1, @JsonKey(name: "pricePackSal2")  double? pricePackSal2, @JsonKey(name: "pricePackSal3")  double? pricePackSal3, @JsonKey(name: "saleDiscRatio")  double? saleDiscRatio, @JsonKey(name: "discRatioSal1")  double? discRatioSal1, @JsonKey(name: "discRatioSal2")  double? discRatioSal2, @JsonKey(name: "discRatioSal3")  double? discRatioSal3, @JsonKey(name: "discValPackSal1")  int? discValPackSal1, @JsonKey(name: "isValueB4Ratio")@BoolToIntConverter()  bool? isValueB4Ratio, @JsonKey(name: "sTaxRatio")  double? sTaxRatio, @JsonKey(name: "isSTaxOnBnsSal")@BoolToIntConverter()  bool? isSTaxOnBnsSal, @JsonKey(name: "size")  String? size, @JsonKey(name: "unit")  String? unit, @JsonKey(name: "packSize")  String? packSize, @JsonKey(name: "tradePrice")  double? tradePrice, @JsonKey(name: "currentStock")  int? currentStock, @JsonKey(name: "packings")@PackingListConverter()  List<Packing>? packings)  $default,) {final _that = this;
switch (_that) {
case _GetAllProductsModel():
return $default(_that.id,_that.productName,_that.companyId,_that.groupId,_that.purPackingId,_that.salPackingId,_that.pricePackSal1,_that.pricePackSal2,_that.pricePackSal3,_that.saleDiscRatio,_that.discRatioSal1,_that.discRatioSal2,_that.discRatioSal3,_that.discValPackSal1,_that.isValueB4Ratio,_that.sTaxRatio,_that.isSTaxOnBnsSal,_that.size,_that.unit,_that.packSize,_that.tradePrice,_that.currentStock,_that.packings);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "productName")  String? productName, @JsonKey(name: "companyId")  int? companyId, @JsonKey(name: "groupId")  int? groupId, @JsonKey(name: "purPackingId")  int? purPackingId, @JsonKey(name: "salPackingId")  int? salPackingId, @JsonKey(name: "pricePackSal1")  double? pricePackSal1, @JsonKey(name: "pricePackSal2")  double? pricePackSal2, @JsonKey(name: "pricePackSal3")  double? pricePackSal3, @JsonKey(name: "saleDiscRatio")  double? saleDiscRatio, @JsonKey(name: "discRatioSal1")  double? discRatioSal1, @JsonKey(name: "discRatioSal2")  double? discRatioSal2, @JsonKey(name: "discRatioSal3")  double? discRatioSal3, @JsonKey(name: "discValPackSal1")  int? discValPackSal1, @JsonKey(name: "isValueB4Ratio")@BoolToIntConverter()  bool? isValueB4Ratio, @JsonKey(name: "sTaxRatio")  double? sTaxRatio, @JsonKey(name: "isSTaxOnBnsSal")@BoolToIntConverter()  bool? isSTaxOnBnsSal, @JsonKey(name: "size")  String? size, @JsonKey(name: "unit")  String? unit, @JsonKey(name: "packSize")  String? packSize, @JsonKey(name: "tradePrice")  double? tradePrice, @JsonKey(name: "currentStock")  int? currentStock, @JsonKey(name: "packings")@PackingListConverter()  List<Packing>? packings)?  $default,) {final _that = this;
switch (_that) {
case _GetAllProductsModel() when $default != null:
return $default(_that.id,_that.productName,_that.companyId,_that.groupId,_that.purPackingId,_that.salPackingId,_that.pricePackSal1,_that.pricePackSal2,_that.pricePackSal3,_that.saleDiscRatio,_that.discRatioSal1,_that.discRatioSal2,_that.discRatioSal3,_that.discValPackSal1,_that.isValueB4Ratio,_that.sTaxRatio,_that.isSTaxOnBnsSal,_that.size,_that.unit,_that.packSize,_that.tradePrice,_that.currentStock,_that.packings);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetAllProductsModel implements GetAllProductsModel {
  const _GetAllProductsModel({@JsonKey(name: "id") this.id, @JsonKey(name: "productName") this.productName, @JsonKey(name: "companyId") this.companyId, @JsonKey(name: "groupId") this.groupId, @JsonKey(name: "purPackingId") this.purPackingId, @JsonKey(name: "salPackingId") this.salPackingId, @JsonKey(name: "pricePackSal1") this.pricePackSal1, @JsonKey(name: "pricePackSal2") this.pricePackSal2, @JsonKey(name: "pricePackSal3") this.pricePackSal3, @JsonKey(name: "saleDiscRatio") this.saleDiscRatio, @JsonKey(name: "discRatioSal1") this.discRatioSal1, @JsonKey(name: "discRatioSal2") this.discRatioSal2, @JsonKey(name: "discRatioSal3") this.discRatioSal3, @JsonKey(name: "discValPackSal1") this.discValPackSal1, @JsonKey(name: "isValueB4Ratio")@BoolToIntConverter() this.isValueB4Ratio, @JsonKey(name: "sTaxRatio") this.sTaxRatio, @JsonKey(name: "isSTaxOnBnsSal")@BoolToIntConverter() this.isSTaxOnBnsSal, @JsonKey(name: "size") this.size, @JsonKey(name: "unit") this.unit, @JsonKey(name: "packSize") this.packSize, @JsonKey(name: "tradePrice") this.tradePrice, @JsonKey(name: "currentStock") this.currentStock, @JsonKey(name: "packings")@PackingListConverter() final  List<Packing>? packings}): _packings = packings;
  factory _GetAllProductsModel.fromJson(Map<String, dynamic> json) => _$GetAllProductsModelFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "productName") final  String? productName;
@override@JsonKey(name: "companyId") final  int? companyId;
@override@JsonKey(name: "groupId") final  int? groupId;
@override@JsonKey(name: "purPackingId") final  int? purPackingId;
@override@JsonKey(name: "salPackingId") final  int? salPackingId;
@override@JsonKey(name: "pricePackSal1") final  double? pricePackSal1;
@override@JsonKey(name: "pricePackSal2") final  double? pricePackSal2;
@override@JsonKey(name: "pricePackSal3") final  double? pricePackSal3;
@override@JsonKey(name: "saleDiscRatio") final  double? saleDiscRatio;
@override@JsonKey(name: "discRatioSal1") final  double? discRatioSal1;
@override@JsonKey(name: "discRatioSal2") final  double? discRatioSal2;
@override@JsonKey(name: "discRatioSal3") final  double? discRatioSal3;
@override@JsonKey(name: "discValPackSal1") final  int? discValPackSal1;
@override@JsonKey(name: "isValueB4Ratio")@BoolToIntConverter() final  bool? isValueB4Ratio;
@override@JsonKey(name: "sTaxRatio") final  double? sTaxRatio;
@override@JsonKey(name: "isSTaxOnBnsSal")@BoolToIntConverter() final  bool? isSTaxOnBnsSal;
@override@JsonKey(name: "size") final  String? size;
@override@JsonKey(name: "unit") final  String? unit;
@override@JsonKey(name: "packSize") final  String? packSize;
@override@JsonKey(name: "tradePrice") final  double? tradePrice;
@override@JsonKey(name: "currentStock") final  int? currentStock;
 final  List<Packing>? _packings;
@override@JsonKey(name: "packings")@PackingListConverter() List<Packing>? get packings {
  final value = _packings;
  if (value == null) return null;
  if (_packings is EqualUnmodifiableListView) return _packings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of GetAllProductsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAllProductsModelCopyWith<_GetAllProductsModel> get copyWith => __$GetAllProductsModelCopyWithImpl<_GetAllProductsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetAllProductsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllProductsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.purPackingId, purPackingId) || other.purPackingId == purPackingId)&&(identical(other.salPackingId, salPackingId) || other.salPackingId == salPackingId)&&(identical(other.pricePackSal1, pricePackSal1) || other.pricePackSal1 == pricePackSal1)&&(identical(other.pricePackSal2, pricePackSal2) || other.pricePackSal2 == pricePackSal2)&&(identical(other.pricePackSal3, pricePackSal3) || other.pricePackSal3 == pricePackSal3)&&(identical(other.saleDiscRatio, saleDiscRatio) || other.saleDiscRatio == saleDiscRatio)&&(identical(other.discRatioSal1, discRatioSal1) || other.discRatioSal1 == discRatioSal1)&&(identical(other.discRatioSal2, discRatioSal2) || other.discRatioSal2 == discRatioSal2)&&(identical(other.discRatioSal3, discRatioSal3) || other.discRatioSal3 == discRatioSal3)&&(identical(other.discValPackSal1, discValPackSal1) || other.discValPackSal1 == discValPackSal1)&&(identical(other.isValueB4Ratio, isValueB4Ratio) || other.isValueB4Ratio == isValueB4Ratio)&&(identical(other.sTaxRatio, sTaxRatio) || other.sTaxRatio == sTaxRatio)&&(identical(other.isSTaxOnBnsSal, isSTaxOnBnsSal) || other.isSTaxOnBnsSal == isSTaxOnBnsSal)&&(identical(other.size, size) || other.size == size)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.packSize, packSize) || other.packSize == packSize)&&(identical(other.tradePrice, tradePrice) || other.tradePrice == tradePrice)&&(identical(other.currentStock, currentStock) || other.currentStock == currentStock)&&const DeepCollectionEquality().equals(other._packings, _packings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,productName,companyId,groupId,purPackingId,salPackingId,pricePackSal1,pricePackSal2,pricePackSal3,saleDiscRatio,discRatioSal1,discRatioSal2,discRatioSal3,discValPackSal1,isValueB4Ratio,sTaxRatio,isSTaxOnBnsSal,size,unit,packSize,tradePrice,currentStock,const DeepCollectionEquality().hash(_packings)]);

@override
String toString() {
  return 'GetAllProductsModel(id: $id, productName: $productName, companyId: $companyId, groupId: $groupId, purPackingId: $purPackingId, salPackingId: $salPackingId, pricePackSal1: $pricePackSal1, pricePackSal2: $pricePackSal2, pricePackSal3: $pricePackSal3, saleDiscRatio: $saleDiscRatio, discRatioSal1: $discRatioSal1, discRatioSal2: $discRatioSal2, discRatioSal3: $discRatioSal3, discValPackSal1: $discValPackSal1, isValueB4Ratio: $isValueB4Ratio, sTaxRatio: $sTaxRatio, isSTaxOnBnsSal: $isSTaxOnBnsSal, size: $size, unit: $unit, packSize: $packSize, tradePrice: $tradePrice, currentStock: $currentStock, packings: $packings)';
}


}

/// @nodoc
abstract mixin class _$GetAllProductsModelCopyWith<$Res> implements $GetAllProductsModelCopyWith<$Res> {
  factory _$GetAllProductsModelCopyWith(_GetAllProductsModel value, $Res Function(_GetAllProductsModel) _then) = __$GetAllProductsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "productName") String? productName,@JsonKey(name: "companyId") int? companyId,@JsonKey(name: "groupId") int? groupId,@JsonKey(name: "purPackingId") int? purPackingId,@JsonKey(name: "salPackingId") int? salPackingId,@JsonKey(name: "pricePackSal1") double? pricePackSal1,@JsonKey(name: "pricePackSal2") double? pricePackSal2,@JsonKey(name: "pricePackSal3") double? pricePackSal3,@JsonKey(name: "saleDiscRatio") double? saleDiscRatio,@JsonKey(name: "discRatioSal1") double? discRatioSal1,@JsonKey(name: "discRatioSal2") double? discRatioSal2,@JsonKey(name: "discRatioSal3") double? discRatioSal3,@JsonKey(name: "discValPackSal1") int? discValPackSal1,@JsonKey(name: "isValueB4Ratio")@BoolToIntConverter() bool? isValueB4Ratio,@JsonKey(name: "sTaxRatio") double? sTaxRatio,@JsonKey(name: "isSTaxOnBnsSal")@BoolToIntConverter() bool? isSTaxOnBnsSal,@JsonKey(name: "size") String? size,@JsonKey(name: "unit") String? unit,@JsonKey(name: "packSize") String? packSize,@JsonKey(name: "tradePrice") double? tradePrice,@JsonKey(name: "currentStock") int? currentStock,@JsonKey(name: "packings")@PackingListConverter() List<Packing>? packings
});




}
/// @nodoc
class __$GetAllProductsModelCopyWithImpl<$Res>
    implements _$GetAllProductsModelCopyWith<$Res> {
  __$GetAllProductsModelCopyWithImpl(this._self, this._then);

  final _GetAllProductsModel _self;
  final $Res Function(_GetAllProductsModel) _then;

/// Create a copy of GetAllProductsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? productName = freezed,Object? companyId = freezed,Object? groupId = freezed,Object? purPackingId = freezed,Object? salPackingId = freezed,Object? pricePackSal1 = freezed,Object? pricePackSal2 = freezed,Object? pricePackSal3 = freezed,Object? saleDiscRatio = freezed,Object? discRatioSal1 = freezed,Object? discRatioSal2 = freezed,Object? discRatioSal3 = freezed,Object? discValPackSal1 = freezed,Object? isValueB4Ratio = freezed,Object? sTaxRatio = freezed,Object? isSTaxOnBnsSal = freezed,Object? size = freezed,Object? unit = freezed,Object? packSize = freezed,Object? tradePrice = freezed,Object? currentStock = freezed,Object? packings = freezed,}) {
  return _then(_GetAllProductsModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,companyId: freezed == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int?,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int?,purPackingId: freezed == purPackingId ? _self.purPackingId : purPackingId // ignore: cast_nullable_to_non_nullable
as int?,salPackingId: freezed == salPackingId ? _self.salPackingId : salPackingId // ignore: cast_nullable_to_non_nullable
as int?,pricePackSal1: freezed == pricePackSal1 ? _self.pricePackSal1 : pricePackSal1 // ignore: cast_nullable_to_non_nullable
as double?,pricePackSal2: freezed == pricePackSal2 ? _self.pricePackSal2 : pricePackSal2 // ignore: cast_nullable_to_non_nullable
as double?,pricePackSal3: freezed == pricePackSal3 ? _self.pricePackSal3 : pricePackSal3 // ignore: cast_nullable_to_non_nullable
as double?,saleDiscRatio: freezed == saleDiscRatio ? _self.saleDiscRatio : saleDiscRatio // ignore: cast_nullable_to_non_nullable
as double?,discRatioSal1: freezed == discRatioSal1 ? _self.discRatioSal1 : discRatioSal1 // ignore: cast_nullable_to_non_nullable
as double?,discRatioSal2: freezed == discRatioSal2 ? _self.discRatioSal2 : discRatioSal2 // ignore: cast_nullable_to_non_nullable
as double?,discRatioSal3: freezed == discRatioSal3 ? _self.discRatioSal3 : discRatioSal3 // ignore: cast_nullable_to_non_nullable
as double?,discValPackSal1: freezed == discValPackSal1 ? _self.discValPackSal1 : discValPackSal1 // ignore: cast_nullable_to_non_nullable
as int?,isValueB4Ratio: freezed == isValueB4Ratio ? _self.isValueB4Ratio : isValueB4Ratio // ignore: cast_nullable_to_non_nullable
as bool?,sTaxRatio: freezed == sTaxRatio ? _self.sTaxRatio : sTaxRatio // ignore: cast_nullable_to_non_nullable
as double?,isSTaxOnBnsSal: freezed == isSTaxOnBnsSal ? _self.isSTaxOnBnsSal : isSTaxOnBnsSal // ignore: cast_nullable_to_non_nullable
as bool?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as String?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String?,packSize: freezed == packSize ? _self.packSize : packSize // ignore: cast_nullable_to_non_nullable
as String?,tradePrice: freezed == tradePrice ? _self.tradePrice : tradePrice // ignore: cast_nullable_to_non_nullable
as double?,currentStock: freezed == currentStock ? _self.currentStock : currentStock // ignore: cast_nullable_to_non_nullable
as int?,packings: freezed == packings ? _self._packings : packings // ignore: cast_nullable_to_non_nullable
as List<Packing>?,
  ));
}


}


/// @nodoc
mixin _$Packing {

@JsonKey(name: "id") int? get id;@JsonKey(name: "productId") int? get productId;@JsonKey(name: "packingId") int? get packingId;@JsonKey(name: "packingName") String? get packingName;@JsonKey(name: "multiplier") int? get multiplier;
/// Create a copy of Packing
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackingCopyWith<Packing> get copyWith => _$PackingCopyWithImpl<Packing>(this as Packing, _$identity);

  /// Serializes this Packing to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Packing&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.packingId, packingId) || other.packingId == packingId)&&(identical(other.packingName, packingName) || other.packingName == packingName)&&(identical(other.multiplier, multiplier) || other.multiplier == multiplier));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,packingId,packingName,multiplier);

@override
String toString() {
  return 'Packing(id: $id, productId: $productId, packingId: $packingId, packingName: $packingName, multiplier: $multiplier)';
}


}

/// @nodoc
abstract mixin class $PackingCopyWith<$Res>  {
  factory $PackingCopyWith(Packing value, $Res Function(Packing) _then) = _$PackingCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "productId") int? productId,@JsonKey(name: "packingId") int? packingId,@JsonKey(name: "packingName") String? packingName,@JsonKey(name: "multiplier") int? multiplier
});




}
/// @nodoc
class _$PackingCopyWithImpl<$Res>
    implements $PackingCopyWith<$Res> {
  _$PackingCopyWithImpl(this._self, this._then);

  final Packing _self;
  final $Res Function(Packing) _then;

/// Create a copy of Packing
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? productId = freezed,Object? packingId = freezed,Object? packingName = freezed,Object? multiplier = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,packingId: freezed == packingId ? _self.packingId : packingId // ignore: cast_nullable_to_non_nullable
as int?,packingName: freezed == packingName ? _self.packingName : packingName // ignore: cast_nullable_to_non_nullable
as String?,multiplier: freezed == multiplier ? _self.multiplier : multiplier // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Packing].
extension PackingPatterns on Packing {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Packing value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Packing() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Packing value)  $default,){
final _that = this;
switch (_that) {
case _Packing():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Packing value)?  $default,){
final _that = this;
switch (_that) {
case _Packing() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "productId")  int? productId, @JsonKey(name: "packingId")  int? packingId, @JsonKey(name: "packingName")  String? packingName, @JsonKey(name: "multiplier")  int? multiplier)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Packing() when $default != null:
return $default(_that.id,_that.productId,_that.packingId,_that.packingName,_that.multiplier);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "productId")  int? productId, @JsonKey(name: "packingId")  int? packingId, @JsonKey(name: "packingName")  String? packingName, @JsonKey(name: "multiplier")  int? multiplier)  $default,) {final _that = this;
switch (_that) {
case _Packing():
return $default(_that.id,_that.productId,_that.packingId,_that.packingName,_that.multiplier);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "productId")  int? productId, @JsonKey(name: "packingId")  int? packingId, @JsonKey(name: "packingName")  String? packingName, @JsonKey(name: "multiplier")  int? multiplier)?  $default,) {final _that = this;
switch (_that) {
case _Packing() when $default != null:
return $default(_that.id,_that.productId,_that.packingId,_that.packingName,_that.multiplier);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Packing implements Packing {
  const _Packing({@JsonKey(name: "id") this.id, @JsonKey(name: "productId") this.productId, @JsonKey(name: "packingId") this.packingId, @JsonKey(name: "packingName") this.packingName, @JsonKey(name: "multiplier") this.multiplier});
  factory _Packing.fromJson(Map<String, dynamic> json) => _$PackingFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "productId") final  int? productId;
@override@JsonKey(name: "packingId") final  int? packingId;
@override@JsonKey(name: "packingName") final  String? packingName;
@override@JsonKey(name: "multiplier") final  int? multiplier;

/// Create a copy of Packing
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackingCopyWith<_Packing> get copyWith => __$PackingCopyWithImpl<_Packing>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Packing&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.packingId, packingId) || other.packingId == packingId)&&(identical(other.packingName, packingName) || other.packingName == packingName)&&(identical(other.multiplier, multiplier) || other.multiplier == multiplier));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,packingId,packingName,multiplier);

@override
String toString() {
  return 'Packing(id: $id, productId: $productId, packingId: $packingId, packingName: $packingName, multiplier: $multiplier)';
}


}

/// @nodoc
abstract mixin class _$PackingCopyWith<$Res> implements $PackingCopyWith<$Res> {
  factory _$PackingCopyWith(_Packing value, $Res Function(_Packing) _then) = __$PackingCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "productId") int? productId,@JsonKey(name: "packingId") int? packingId,@JsonKey(name: "packingName") String? packingName,@JsonKey(name: "multiplier") int? multiplier
});




}
/// @nodoc
class __$PackingCopyWithImpl<$Res>
    implements _$PackingCopyWith<$Res> {
  __$PackingCopyWithImpl(this._self, this._then);

  final _Packing _self;
  final $Res Function(_Packing) _then;

/// Create a copy of Packing
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? productId = freezed,Object? packingId = freezed,Object? packingName = freezed,Object? multiplier = freezed,}) {
  return _then(_Packing(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,packingId: freezed == packingId ? _self.packingId : packingId // ignore: cast_nullable_to_non_nullable
as int?,packingName: freezed == packingName ? _self.packingName : packingName // ignore: cast_nullable_to_non_nullable
as String?,multiplier: freezed == multiplier ? _self.multiplier : multiplier // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
