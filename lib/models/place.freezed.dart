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

 String get id; LocalizedText get displayName; LocalizedText get primaryTypeDisplayName; String? get shortFormattedAddress;@LatLngConverter() LatLng? get location; num? get rating; RegularOpeningHours? get regularOpeningHours; String? get googleMapsUri;
/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaceCopyWith<Place> get copyWith => _$PlaceCopyWithImpl<Place>(this as Place, _$identity);

  /// Serializes this Place to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Place&&(identical(other.id, id) || other.id == id)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.primaryTypeDisplayName, primaryTypeDisplayName) || other.primaryTypeDisplayName == primaryTypeDisplayName)&&(identical(other.shortFormattedAddress, shortFormattedAddress) || other.shortFormattedAddress == shortFormattedAddress)&&(identical(other.location, location) || other.location == location)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.regularOpeningHours, regularOpeningHours) || other.regularOpeningHours == regularOpeningHours)&&(identical(other.googleMapsUri, googleMapsUri) || other.googleMapsUri == googleMapsUri));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,displayName,primaryTypeDisplayName,shortFormattedAddress,location,rating,regularOpeningHours,googleMapsUri);

@override
String toString() {
  return 'Place(id: $id, displayName: $displayName, primaryTypeDisplayName: $primaryTypeDisplayName, shortFormattedAddress: $shortFormattedAddress, location: $location, rating: $rating, regularOpeningHours: $regularOpeningHours, googleMapsUri: $googleMapsUri)';
}


}

/// @nodoc
abstract mixin class $PlaceCopyWith<$Res>  {
  factory $PlaceCopyWith(Place value, $Res Function(Place) _then) = _$PlaceCopyWithImpl;
@useResult
$Res call({
 String id, LocalizedText displayName, LocalizedText primaryTypeDisplayName, String? shortFormattedAddress,@LatLngConverter() LatLng? location, num? rating, RegularOpeningHours? regularOpeningHours, String? googleMapsUri
});


$LocalizedTextCopyWith<$Res> get displayName;$LocalizedTextCopyWith<$Res> get primaryTypeDisplayName;$RegularOpeningHoursCopyWith<$Res>? get regularOpeningHours;

}
/// @nodoc
class _$PlaceCopyWithImpl<$Res>
    implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._self, this._then);

  final Place _self;
  final $Res Function(Place) _then;

/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? displayName = null,Object? primaryTypeDisplayName = null,Object? shortFormattedAddress = freezed,Object? location = freezed,Object? rating = freezed,Object? regularOpeningHours = freezed,Object? googleMapsUri = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as LocalizedText,primaryTypeDisplayName: null == primaryTypeDisplayName ? _self.primaryTypeDisplayName : primaryTypeDisplayName // ignore: cast_nullable_to_non_nullable
as LocalizedText,shortFormattedAddress: freezed == shortFormattedAddress ? _self.shortFormattedAddress : shortFormattedAddress // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LatLng?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as num?,regularOpeningHours: freezed == regularOpeningHours ? _self.regularOpeningHours : regularOpeningHours // ignore: cast_nullable_to_non_nullable
as RegularOpeningHours?,googleMapsUri: freezed == googleMapsUri ? _self.googleMapsUri : googleMapsUri // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get displayName {
  
  return $LocalizedTextCopyWith<$Res>(_self.displayName, (value) {
    return _then(_self.copyWith(displayName: value));
  });
}/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get primaryTypeDisplayName {
  
  return $LocalizedTextCopyWith<$Res>(_self.primaryTypeDisplayName, (value) {
    return _then(_self.copyWith(primaryTypeDisplayName: value));
  });
}/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegularOpeningHoursCopyWith<$Res>? get regularOpeningHours {
    if (_self.regularOpeningHours == null) {
    return null;
  }

  return $RegularOpeningHoursCopyWith<$Res>(_self.regularOpeningHours!, (value) {
    return _then(_self.copyWith(regularOpeningHours: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  LocalizedText displayName,  LocalizedText primaryTypeDisplayName,  String? shortFormattedAddress, @LatLngConverter()  LatLng? location,  num? rating,  RegularOpeningHours? regularOpeningHours,  String? googleMapsUri)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Place() when $default != null:
return $default(_that.id,_that.displayName,_that.primaryTypeDisplayName,_that.shortFormattedAddress,_that.location,_that.rating,_that.regularOpeningHours,_that.googleMapsUri);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  LocalizedText displayName,  LocalizedText primaryTypeDisplayName,  String? shortFormattedAddress, @LatLngConverter()  LatLng? location,  num? rating,  RegularOpeningHours? regularOpeningHours,  String? googleMapsUri)  $default,) {final _that = this;
switch (_that) {
case _Place():
return $default(_that.id,_that.displayName,_that.primaryTypeDisplayName,_that.shortFormattedAddress,_that.location,_that.rating,_that.regularOpeningHours,_that.googleMapsUri);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  LocalizedText displayName,  LocalizedText primaryTypeDisplayName,  String? shortFormattedAddress, @LatLngConverter()  LatLng? location,  num? rating,  RegularOpeningHours? regularOpeningHours,  String? googleMapsUri)?  $default,) {final _that = this;
switch (_that) {
case _Place() when $default != null:
return $default(_that.id,_that.displayName,_that.primaryTypeDisplayName,_that.shortFormattedAddress,_that.location,_that.rating,_that.regularOpeningHours,_that.googleMapsUri);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Place implements Place {
  const _Place({required this.id, required this.displayName, required this.primaryTypeDisplayName, this.shortFormattedAddress, @LatLngConverter() this.location, this.rating, this.regularOpeningHours, this.googleMapsUri});
  factory _Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);

@override final  String id;
@override final  LocalizedText displayName;
@override final  LocalizedText primaryTypeDisplayName;
@override final  String? shortFormattedAddress;
@override@LatLngConverter() final  LatLng? location;
@override final  num? rating;
@override final  RegularOpeningHours? regularOpeningHours;
@override final  String? googleMapsUri;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Place&&(identical(other.id, id) || other.id == id)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.primaryTypeDisplayName, primaryTypeDisplayName) || other.primaryTypeDisplayName == primaryTypeDisplayName)&&(identical(other.shortFormattedAddress, shortFormattedAddress) || other.shortFormattedAddress == shortFormattedAddress)&&(identical(other.location, location) || other.location == location)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.regularOpeningHours, regularOpeningHours) || other.regularOpeningHours == regularOpeningHours)&&(identical(other.googleMapsUri, googleMapsUri) || other.googleMapsUri == googleMapsUri));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,displayName,primaryTypeDisplayName,shortFormattedAddress,location,rating,regularOpeningHours,googleMapsUri);

@override
String toString() {
  return 'Place(id: $id, displayName: $displayName, primaryTypeDisplayName: $primaryTypeDisplayName, shortFormattedAddress: $shortFormattedAddress, location: $location, rating: $rating, regularOpeningHours: $regularOpeningHours, googleMapsUri: $googleMapsUri)';
}


}

/// @nodoc
abstract mixin class _$PlaceCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$PlaceCopyWith(_Place value, $Res Function(_Place) _then) = __$PlaceCopyWithImpl;
@override @useResult
$Res call({
 String id, LocalizedText displayName, LocalizedText primaryTypeDisplayName, String? shortFormattedAddress,@LatLngConverter() LatLng? location, num? rating, RegularOpeningHours? regularOpeningHours, String? googleMapsUri
});


@override $LocalizedTextCopyWith<$Res> get displayName;@override $LocalizedTextCopyWith<$Res> get primaryTypeDisplayName;@override $RegularOpeningHoursCopyWith<$Res>? get regularOpeningHours;

}
/// @nodoc
class __$PlaceCopyWithImpl<$Res>
    implements _$PlaceCopyWith<$Res> {
  __$PlaceCopyWithImpl(this._self, this._then);

  final _Place _self;
  final $Res Function(_Place) _then;

/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? displayName = null,Object? primaryTypeDisplayName = null,Object? shortFormattedAddress = freezed,Object? location = freezed,Object? rating = freezed,Object? regularOpeningHours = freezed,Object? googleMapsUri = freezed,}) {
  return _then(_Place(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as LocalizedText,primaryTypeDisplayName: null == primaryTypeDisplayName ? _self.primaryTypeDisplayName : primaryTypeDisplayName // ignore: cast_nullable_to_non_nullable
as LocalizedText,shortFormattedAddress: freezed == shortFormattedAddress ? _self.shortFormattedAddress : shortFormattedAddress // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LatLng?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as num?,regularOpeningHours: freezed == regularOpeningHours ? _self.regularOpeningHours : regularOpeningHours // ignore: cast_nullable_to_non_nullable
as RegularOpeningHours?,googleMapsUri: freezed == googleMapsUri ? _self.googleMapsUri : googleMapsUri // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get displayName {
  
  return $LocalizedTextCopyWith<$Res>(_self.displayName, (value) {
    return _then(_self.copyWith(displayName: value));
  });
}/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get primaryTypeDisplayName {
  
  return $LocalizedTextCopyWith<$Res>(_self.primaryTypeDisplayName, (value) {
    return _then(_self.copyWith(primaryTypeDisplayName: value));
  });
}/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegularOpeningHoursCopyWith<$Res>? get regularOpeningHours {
    if (_self.regularOpeningHours == null) {
    return null;
  }

  return $RegularOpeningHoursCopyWith<$Res>(_self.regularOpeningHours!, (value) {
    return _then(_self.copyWith(regularOpeningHours: value));
  });
}
}


/// @nodoc
mixin _$LocalizedText {

 String get text; String get languageCode;
/// Create a copy of LocalizedText
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<LocalizedText> get copyWith => _$LocalizedTextCopyWithImpl<LocalizedText>(this as LocalizedText, _$identity);

  /// Serializes this LocalizedText to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalizedText&&(identical(other.text, text) || other.text == text)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,languageCode);

@override
String toString() {
  return 'LocalizedText(text: $text, languageCode: $languageCode)';
}


}

/// @nodoc
abstract mixin class $LocalizedTextCopyWith<$Res>  {
  factory $LocalizedTextCopyWith(LocalizedText value, $Res Function(LocalizedText) _then) = _$LocalizedTextCopyWithImpl;
@useResult
$Res call({
 String text, String languageCode
});




}
/// @nodoc
class _$LocalizedTextCopyWithImpl<$Res>
    implements $LocalizedTextCopyWith<$Res> {
  _$LocalizedTextCopyWithImpl(this._self, this._then);

  final LocalizedText _self;
  final $Res Function(LocalizedText) _then;

/// Create a copy of LocalizedText
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? languageCode = null,}) {
  return _then(_self.copyWith(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,languageCode: null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LocalizedText].
extension LocalizedTextPatterns on LocalizedText {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocalizedText value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocalizedText() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocalizedText value)  $default,){
final _that = this;
switch (_that) {
case _LocalizedText():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocalizedText value)?  $default,){
final _that = this;
switch (_that) {
case _LocalizedText() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String text,  String languageCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocalizedText() when $default != null:
return $default(_that.text,_that.languageCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String text,  String languageCode)  $default,) {final _that = this;
switch (_that) {
case _LocalizedText():
return $default(_that.text,_that.languageCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String text,  String languageCode)?  $default,) {final _that = this;
switch (_that) {
case _LocalizedText() when $default != null:
return $default(_that.text,_that.languageCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LocalizedText implements LocalizedText {
  const _LocalizedText({required this.text, required this.languageCode});
  factory _LocalizedText.fromJson(Map<String, dynamic> json) => _$LocalizedTextFromJson(json);

@override final  String text;
@override final  String languageCode;

/// Create a copy of LocalizedText
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocalizedTextCopyWith<_LocalizedText> get copyWith => __$LocalizedTextCopyWithImpl<_LocalizedText>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocalizedTextToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocalizedText&&(identical(other.text, text) || other.text == text)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,languageCode);

@override
String toString() {
  return 'LocalizedText(text: $text, languageCode: $languageCode)';
}


}

/// @nodoc
abstract mixin class _$LocalizedTextCopyWith<$Res> implements $LocalizedTextCopyWith<$Res> {
  factory _$LocalizedTextCopyWith(_LocalizedText value, $Res Function(_LocalizedText) _then) = __$LocalizedTextCopyWithImpl;
@override @useResult
$Res call({
 String text, String languageCode
});




}
/// @nodoc
class __$LocalizedTextCopyWithImpl<$Res>
    implements _$LocalizedTextCopyWith<$Res> {
  __$LocalizedTextCopyWithImpl(this._self, this._then);

  final _LocalizedText _self;
  final $Res Function(_LocalizedText) _then;

/// Create a copy of LocalizedText
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? languageCode = null,}) {
  return _then(_LocalizedText(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,languageCode: null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RegularOpeningHours {

 bool get openNow; List<String> get weekdayDescriptions;
/// Create a copy of RegularOpeningHours
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegularOpeningHoursCopyWith<RegularOpeningHours> get copyWith => _$RegularOpeningHoursCopyWithImpl<RegularOpeningHours>(this as RegularOpeningHours, _$identity);

  /// Serializes this RegularOpeningHours to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegularOpeningHours&&(identical(other.openNow, openNow) || other.openNow == openNow)&&const DeepCollectionEquality().equals(other.weekdayDescriptions, weekdayDescriptions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,openNow,const DeepCollectionEquality().hash(weekdayDescriptions));

@override
String toString() {
  return 'RegularOpeningHours(openNow: $openNow, weekdayDescriptions: $weekdayDescriptions)';
}


}

/// @nodoc
abstract mixin class $RegularOpeningHoursCopyWith<$Res>  {
  factory $RegularOpeningHoursCopyWith(RegularOpeningHours value, $Res Function(RegularOpeningHours) _then) = _$RegularOpeningHoursCopyWithImpl;
@useResult
$Res call({
 bool openNow, List<String> weekdayDescriptions
});




}
/// @nodoc
class _$RegularOpeningHoursCopyWithImpl<$Res>
    implements $RegularOpeningHoursCopyWith<$Res> {
  _$RegularOpeningHoursCopyWithImpl(this._self, this._then);

  final RegularOpeningHours _self;
  final $Res Function(RegularOpeningHours) _then;

/// Create a copy of RegularOpeningHours
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? openNow = null,Object? weekdayDescriptions = null,}) {
  return _then(_self.copyWith(
openNow: null == openNow ? _self.openNow : openNow // ignore: cast_nullable_to_non_nullable
as bool,weekdayDescriptions: null == weekdayDescriptions ? _self.weekdayDescriptions : weekdayDescriptions // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [RegularOpeningHours].
extension RegularOpeningHoursPatterns on RegularOpeningHours {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegularOpeningHours value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegularOpeningHours() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegularOpeningHours value)  $default,){
final _that = this;
switch (_that) {
case _RegularOpeningHours():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegularOpeningHours value)?  $default,){
final _that = this;
switch (_that) {
case _RegularOpeningHours() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool openNow,  List<String> weekdayDescriptions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegularOpeningHours() when $default != null:
return $default(_that.openNow,_that.weekdayDescriptions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool openNow,  List<String> weekdayDescriptions)  $default,) {final _that = this;
switch (_that) {
case _RegularOpeningHours():
return $default(_that.openNow,_that.weekdayDescriptions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool openNow,  List<String> weekdayDescriptions)?  $default,) {final _that = this;
switch (_that) {
case _RegularOpeningHours() when $default != null:
return $default(_that.openNow,_that.weekdayDescriptions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RegularOpeningHours implements RegularOpeningHours {
  const _RegularOpeningHours({required this.openNow, required final  List<String> weekdayDescriptions}): _weekdayDescriptions = weekdayDescriptions;
  factory _RegularOpeningHours.fromJson(Map<String, dynamic> json) => _$RegularOpeningHoursFromJson(json);

@override final  bool openNow;
 final  List<String> _weekdayDescriptions;
@override List<String> get weekdayDescriptions {
  if (_weekdayDescriptions is EqualUnmodifiableListView) return _weekdayDescriptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weekdayDescriptions);
}


/// Create a copy of RegularOpeningHours
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegularOpeningHoursCopyWith<_RegularOpeningHours> get copyWith => __$RegularOpeningHoursCopyWithImpl<_RegularOpeningHours>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegularOpeningHoursToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegularOpeningHours&&(identical(other.openNow, openNow) || other.openNow == openNow)&&const DeepCollectionEquality().equals(other._weekdayDescriptions, _weekdayDescriptions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,openNow,const DeepCollectionEquality().hash(_weekdayDescriptions));

@override
String toString() {
  return 'RegularOpeningHours(openNow: $openNow, weekdayDescriptions: $weekdayDescriptions)';
}


}

/// @nodoc
abstract mixin class _$RegularOpeningHoursCopyWith<$Res> implements $RegularOpeningHoursCopyWith<$Res> {
  factory _$RegularOpeningHoursCopyWith(_RegularOpeningHours value, $Res Function(_RegularOpeningHours) _then) = __$RegularOpeningHoursCopyWithImpl;
@override @useResult
$Res call({
 bool openNow, List<String> weekdayDescriptions
});




}
/// @nodoc
class __$RegularOpeningHoursCopyWithImpl<$Res>
    implements _$RegularOpeningHoursCopyWith<$Res> {
  __$RegularOpeningHoursCopyWithImpl(this._self, this._then);

  final _RegularOpeningHours _self;
  final $Res Function(_RegularOpeningHours) _then;

/// Create a copy of RegularOpeningHours
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? openNow = null,Object? weekdayDescriptions = null,}) {
  return _then(_RegularOpeningHours(
openNow: null == openNow ? _self.openNow : openNow // ignore: cast_nullable_to_non_nullable
as bool,weekdayDescriptions: null == weekdayDescriptions ? _self._weekdayDescriptions : weekdayDescriptions // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
