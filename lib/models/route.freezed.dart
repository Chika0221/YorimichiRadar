// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RouteData {

 String get weightName; Geometry get geometry; double get weight; double get duration; double get distance;
/// Create a copy of RouteData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RouteDataCopyWith<RouteData> get copyWith => _$RouteDataCopyWithImpl<RouteData>(this as RouteData, _$identity);

  /// Serializes this RouteData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RouteData&&(identical(other.weightName, weightName) || other.weightName == weightName)&&(identical(other.geometry, geometry) || other.geometry == geometry)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.distance, distance) || other.distance == distance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,weightName,geometry,weight,duration,distance);

@override
String toString() {
  return 'RouteData(weightName: $weightName, geometry: $geometry, weight: $weight, duration: $duration, distance: $distance)';
}


}

/// @nodoc
abstract mixin class $RouteDataCopyWith<$Res>  {
  factory $RouteDataCopyWith(RouteData value, $Res Function(RouteData) _then) = _$RouteDataCopyWithImpl;
@useResult
$Res call({
 String weightName, Geometry geometry, double weight, double duration, double distance
});


$GeometryCopyWith<$Res> get geometry;

}
/// @nodoc
class _$RouteDataCopyWithImpl<$Res>
    implements $RouteDataCopyWith<$Res> {
  _$RouteDataCopyWithImpl(this._self, this._then);

  final RouteData _self;
  final $Res Function(RouteData) _then;

/// Create a copy of RouteData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? weightName = null,Object? geometry = null,Object? weight = null,Object? duration = null,Object? distance = null,}) {
  return _then(_self.copyWith(
weightName: null == weightName ? _self.weightName : weightName // ignore: cast_nullable_to_non_nullable
as String,geometry: null == geometry ? _self.geometry : geometry // ignore: cast_nullable_to_non_nullable
as Geometry,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of RouteData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeometryCopyWith<$Res> get geometry {
  
  return $GeometryCopyWith<$Res>(_self.geometry, (value) {
    return _then(_self.copyWith(geometry: value));
  });
}
}


/// Adds pattern-matching-related methods to [RouteData].
extension RouteDataPatterns on RouteData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RouteData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RouteData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RouteData value)  $default,){
final _that = this;
switch (_that) {
case _RouteData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RouteData value)?  $default,){
final _that = this;
switch (_that) {
case _RouteData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String weightName,  Geometry geometry,  double weight,  double duration,  double distance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RouteData() when $default != null:
return $default(_that.weightName,_that.geometry,_that.weight,_that.duration,_that.distance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String weightName,  Geometry geometry,  double weight,  double duration,  double distance)  $default,) {final _that = this;
switch (_that) {
case _RouteData():
return $default(_that.weightName,_that.geometry,_that.weight,_that.duration,_that.distance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String weightName,  Geometry geometry,  double weight,  double duration,  double distance)?  $default,) {final _that = this;
switch (_that) {
case _RouteData() when $default != null:
return $default(_that.weightName,_that.geometry,_that.weight,_that.duration,_that.distance);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _RouteData implements RouteData {
  const _RouteData({required this.weightName, required this.geometry, required this.weight, required this.duration, required this.distance});
  factory _RouteData.fromJson(Map<String, dynamic> json) => _$RouteDataFromJson(json);

@override final  String weightName;
@override final  Geometry geometry;
@override final  double weight;
@override final  double duration;
@override final  double distance;

/// Create a copy of RouteData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RouteDataCopyWith<_RouteData> get copyWith => __$RouteDataCopyWithImpl<_RouteData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RouteDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RouteData&&(identical(other.weightName, weightName) || other.weightName == weightName)&&(identical(other.geometry, geometry) || other.geometry == geometry)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.distance, distance) || other.distance == distance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,weightName,geometry,weight,duration,distance);

@override
String toString() {
  return 'RouteData(weightName: $weightName, geometry: $geometry, weight: $weight, duration: $duration, distance: $distance)';
}


}

/// @nodoc
abstract mixin class _$RouteDataCopyWith<$Res> implements $RouteDataCopyWith<$Res> {
  factory _$RouteDataCopyWith(_RouteData value, $Res Function(_RouteData) _then) = __$RouteDataCopyWithImpl;
@override @useResult
$Res call({
 String weightName, Geometry geometry, double weight, double duration, double distance
});


@override $GeometryCopyWith<$Res> get geometry;

}
/// @nodoc
class __$RouteDataCopyWithImpl<$Res>
    implements _$RouteDataCopyWith<$Res> {
  __$RouteDataCopyWithImpl(this._self, this._then);

  final _RouteData _self;
  final $Res Function(_RouteData) _then;

/// Create a copy of RouteData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? weightName = null,Object? geometry = null,Object? weight = null,Object? duration = null,Object? distance = null,}) {
  return _then(_RouteData(
weightName: null == weightName ? _self.weightName : weightName // ignore: cast_nullable_to_non_nullable
as String,geometry: null == geometry ? _self.geometry : geometry // ignore: cast_nullable_to_non_nullable
as Geometry,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of RouteData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeometryCopyWith<$Res> get geometry {
  
  return $GeometryCopyWith<$Res>(_self.geometry, (value) {
    return _then(_self.copyWith(geometry: value));
  });
}
}


/// @nodoc
mixin _$Geometry {

@LatLngConverterFromList() List<LatLng> get coordinates; String get type;
/// Create a copy of Geometry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeometryCopyWith<Geometry> get copyWith => _$GeometryCopyWithImpl<Geometry>(this as Geometry, _$identity);

  /// Serializes this Geometry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Geometry&&const DeepCollectionEquality().equals(other.coordinates, coordinates)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(coordinates),type);

@override
String toString() {
  return 'Geometry(coordinates: $coordinates, type: $type)';
}


}

/// @nodoc
abstract mixin class $GeometryCopyWith<$Res>  {
  factory $GeometryCopyWith(Geometry value, $Res Function(Geometry) _then) = _$GeometryCopyWithImpl;
@useResult
$Res call({
@LatLngConverterFromList() List<LatLng> coordinates, String type
});




}
/// @nodoc
class _$GeometryCopyWithImpl<$Res>
    implements $GeometryCopyWith<$Res> {
  _$GeometryCopyWithImpl(this._self, this._then);

  final Geometry _self;
  final $Res Function(Geometry) _then;

/// Create a copy of Geometry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? coordinates = null,Object? type = null,}) {
  return _then(_self.copyWith(
coordinates: null == coordinates ? _self.coordinates : coordinates // ignore: cast_nullable_to_non_nullable
as List<LatLng>,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Geometry].
extension GeometryPatterns on Geometry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Geometry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Geometry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Geometry value)  $default,){
final _that = this;
switch (_that) {
case _Geometry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Geometry value)?  $default,){
final _that = this;
switch (_that) {
case _Geometry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@LatLngConverterFromList()  List<LatLng> coordinates,  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Geometry() when $default != null:
return $default(_that.coordinates,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@LatLngConverterFromList()  List<LatLng> coordinates,  String type)  $default,) {final _that = this;
switch (_that) {
case _Geometry():
return $default(_that.coordinates,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@LatLngConverterFromList()  List<LatLng> coordinates,  String type)?  $default,) {final _that = this;
switch (_that) {
case _Geometry() when $default != null:
return $default(_that.coordinates,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Geometry implements Geometry {
  const _Geometry({@LatLngConverterFromList() required final  List<LatLng> coordinates, required this.type}): _coordinates = coordinates;
  factory _Geometry.fromJson(Map<String, dynamic> json) => _$GeometryFromJson(json);

 final  List<LatLng> _coordinates;
@override@LatLngConverterFromList() List<LatLng> get coordinates {
  if (_coordinates is EqualUnmodifiableListView) return _coordinates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_coordinates);
}

@override final  String type;

/// Create a copy of Geometry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeometryCopyWith<_Geometry> get copyWith => __$GeometryCopyWithImpl<_Geometry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeometryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Geometry&&const DeepCollectionEquality().equals(other._coordinates, _coordinates)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_coordinates),type);

@override
String toString() {
  return 'Geometry(coordinates: $coordinates, type: $type)';
}


}

/// @nodoc
abstract mixin class _$GeometryCopyWith<$Res> implements $GeometryCopyWith<$Res> {
  factory _$GeometryCopyWith(_Geometry value, $Res Function(_Geometry) _then) = __$GeometryCopyWithImpl;
@override @useResult
$Res call({
@LatLngConverterFromList() List<LatLng> coordinates, String type
});




}
/// @nodoc
class __$GeometryCopyWithImpl<$Res>
    implements _$GeometryCopyWith<$Res> {
  __$GeometryCopyWithImpl(this._self, this._then);

  final _Geometry _self;
  final $Res Function(_Geometry) _then;

/// Create a copy of Geometry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? coordinates = null,Object? type = null,}) {
  return _then(_Geometry(
coordinates: null == coordinates ? _self._coordinates : coordinates // ignore: cast_nullable_to_non_nullable
as List<LatLng>,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
