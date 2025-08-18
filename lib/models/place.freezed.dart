// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Place {

 String get id; String get displayName; String get shortFormattedAddress; LatLng get location; double? get rating; List<String> get weekdayDescriptions; String get googleMapsUri;
/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaceCopyWith<Place> get copyWith => _$PlaceCopyWithImpl<Place>(this as Place, _$identity);

  /// Serializes this Place to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Place&&(identical(other.id, id) || other.id == id)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.shortFormattedAddress, shortFormattedAddress) || other.shortFormattedAddress == shortFormattedAddress)&&(identical(other.location, location) || other.location == location)&&(identical(other.rating, rating) || other.rating == rating)&&const DeepCollectionEquality().equals(other.weekdayDescriptions, weekdayDescriptions)&&(identical(other.googleMapsUri, googleMapsUri) || other.googleMapsUri == googleMapsUri));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,displayName,shortFormattedAddress,location,rating,const DeepCollectionEquality().hash(weekdayDescriptions),googleMapsUri);

@override
String toString() {
  return 'Place(id: $id, displayName: $displayName, shortFormattedAddress: $shortFormattedAddress, location: $location, rating: $rating, weekdayDescriptions: $weekdayDescriptions, googleMapsUri: $googleMapsUri)';
}


}

/// @nodoc
abstract mixin class $PlaceCopyWith<$Res>  {
  factory $PlaceCopyWith(Place value, $Res Function(Place) _then) = _$PlaceCopyWithImpl;
@useResult
$Res call({
 String id, String displayName, String shortFormattedAddress, LatLng location, double? rating, List<String> weekdayDescriptions, String googleMapsUri
});




}
/// @nodoc
class _$PlaceCopyWithImpl<$Res>
    implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._self, this._then);

  final Place _self;
  final $Res Function(Place) _then;

/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? displayName = null,Object? shortFormattedAddress = null,Object? location = null,Object? rating = freezed,Object? weekdayDescriptions = null,Object? googleMapsUri = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,shortFormattedAddress: null == shortFormattedAddress ? _self.shortFormattedAddress : shortFormattedAddress // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LatLng,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,weekdayDescriptions: null == weekdayDescriptions ? _self.weekdayDescriptions : weekdayDescriptions // ignore: cast_nullable_to_non_nullable
as List<String>,googleMapsUri: null == googleMapsUri ? _self.googleMapsUri : googleMapsUri // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Place].
extension PlacePatterns on Place {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Place value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Place() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Place value)  $default,){
final _that = this;
switch (_that) {
case _Place():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Place value)?  $default,){
final _that = this;
switch (_that) {
case _Place() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String displayName,  String shortFormattedAddress,  LatLng location,  double? rating,  List<String> weekdayDescriptions,  String googleMapsUri)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Place() when $default != null:
return $default(_that.id,_that.displayName,_that.shortFormattedAddress,_that.location,_that.rating,_that.weekdayDescriptions,_that.googleMapsUri);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String displayName,  String shortFormattedAddress,  LatLng location,  double? rating,  List<String> weekdayDescriptions,  String googleMapsUri)  $default,) {final _that = this;
switch (_that) {
case _Place():
return $default(_that.id,_that.displayName,_that.shortFormattedAddress,_that.location,_that.rating,_that.weekdayDescriptions,_that.googleMapsUri);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String displayName,  String shortFormattedAddress,  LatLng location,  double? rating,  List<String> weekdayDescriptions,  String googleMapsUri)?  $default,) {final _that = this;
switch (_that) {
case _Place() when $default != null:
return $default(_that.id,_that.displayName,_that.shortFormattedAddress,_that.location,_that.rating,_that.weekdayDescriptions,_that.googleMapsUri);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Place implements Place {
  const _Place({required this.id, required this.displayName, required this.shortFormattedAddress, required this.location, this.rating, required final  List<String> weekdayDescriptions, required this.googleMapsUri}): _weekdayDescriptions = weekdayDescriptions;
  factory _Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);

@override final  String id;
@override final  String displayName;
@override final  String shortFormattedAddress;
@override final  LatLng location;
@override final  double? rating;
 final  List<String> _weekdayDescriptions;
@override List<String> get weekdayDescriptions {
  if (_weekdayDescriptions is EqualUnmodifiableListView) return _weekdayDescriptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weekdayDescriptions);
}

@override final  String googleMapsUri;

/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaceCopyWith<_Place> get copyWith => __$PlaceCopyWithImpl<_Place>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlaceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Place&&(identical(other.id, id) || other.id == id)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.shortFormattedAddress, shortFormattedAddress) || other.shortFormattedAddress == shortFormattedAddress)&&(identical(other.location, location) || other.location == location)&&(identical(other.rating, rating) || other.rating == rating)&&const DeepCollectionEquality().equals(other._weekdayDescriptions, _weekdayDescriptions)&&(identical(other.googleMapsUri, googleMapsUri) || other.googleMapsUri == googleMapsUri));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,displayName,shortFormattedAddress,location,rating,const DeepCollectionEquality().hash(_weekdayDescriptions),googleMapsUri);

@override
String toString() {
  return 'Place(id: $id, displayName: $displayName, shortFormattedAddress: $shortFormattedAddress, location: $location, rating: $rating, weekdayDescriptions: $weekdayDescriptions, googleMapsUri: $googleMapsUri)';
}


}

/// @nodoc
abstract mixin class _$PlaceCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$PlaceCopyWith(_Place value, $Res Function(_Place) _then) = __$PlaceCopyWithImpl;
@override @useResult
$Res call({
 String id, String displayName, String shortFormattedAddress, LatLng location, double? rating, List<String> weekdayDescriptions, String googleMapsUri
});




}
/// @nodoc
class __$PlaceCopyWithImpl<$Res>
    implements _$PlaceCopyWith<$Res> {
  __$PlaceCopyWithImpl(this._self, this._then);

  final _Place _self;
  final $Res Function(_Place) _then;

/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? displayName = null,Object? shortFormattedAddress = null,Object? location = null,Object? rating = freezed,Object? weekdayDescriptions = null,Object? googleMapsUri = null,}) {
  return _then(_Place(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,shortFormattedAddress: null == shortFormattedAddress ? _self.shortFormattedAddress : shortFormattedAddress // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LatLng,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,weekdayDescriptions: null == weekdayDescriptions ? _self._weekdayDescriptions : weekdayDescriptions // ignore: cast_nullable_to_non_nullable
as List<String>,googleMapsUri: null == googleMapsUri ? _self.googleMapsUri : googleMapsUri // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
