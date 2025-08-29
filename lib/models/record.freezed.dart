// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Record {

 String get id; DateTime get createAt; double get takenTime; RouteData get route;@LatLngConverter() LatLng get startLocation; Place get endPlace;
/// Create a copy of Record
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecordCopyWith<Record> get copyWith => _$RecordCopyWithImpl<Record>(this as Record, _$identity);

  /// Serializes this Record to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Record&&(identical(other.id, id) || other.id == id)&&(identical(other.createAt, createAt) || other.createAt == createAt)&&(identical(other.takenTime, takenTime) || other.takenTime == takenTime)&&(identical(other.route, route) || other.route == route)&&(identical(other.startLocation, startLocation) || other.startLocation == startLocation)&&(identical(other.endPlace, endPlace) || other.endPlace == endPlace));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createAt,takenTime,route,startLocation,endPlace);

@override
String toString() {
  return 'Record(id: $id, createAt: $createAt, takenTime: $takenTime, route: $route, startLocation: $startLocation, endPlace: $endPlace)';
}


}

/// @nodoc
abstract mixin class $RecordCopyWith<$Res>  {
  factory $RecordCopyWith(Record value, $Res Function(Record) _then) = _$RecordCopyWithImpl;
@useResult
$Res call({
 String id, DateTime createAt, double takenTime, RouteData route,@LatLngConverter() LatLng startLocation, Place endPlace
});


$RouteDataCopyWith<$Res> get route;$PlaceCopyWith<$Res> get endPlace;

}
/// @nodoc
class _$RecordCopyWithImpl<$Res>
    implements $RecordCopyWith<$Res> {
  _$RecordCopyWithImpl(this._self, this._then);

  final Record _self;
  final $Res Function(Record) _then;

/// Create a copy of Record
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createAt = null,Object? takenTime = null,Object? route = null,Object? startLocation = null,Object? endPlace = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createAt: null == createAt ? _self.createAt : createAt // ignore: cast_nullable_to_non_nullable
as DateTime,takenTime: null == takenTime ? _self.takenTime : takenTime // ignore: cast_nullable_to_non_nullable
as double,route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as RouteData,startLocation: null == startLocation ? _self.startLocation : startLocation // ignore: cast_nullable_to_non_nullable
as LatLng,endPlace: null == endPlace ? _self.endPlace : endPlace // ignore: cast_nullable_to_non_nullable
as Place,
  ));
}
/// Create a copy of Record
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RouteDataCopyWith<$Res> get route {
  
  return $RouteDataCopyWith<$Res>(_self.route, (value) {
    return _then(_self.copyWith(route: value));
  });
}/// Create a copy of Record
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceCopyWith<$Res> get endPlace {
  
  return $PlaceCopyWith<$Res>(_self.endPlace, (value) {
    return _then(_self.copyWith(endPlace: value));
  });
}
}


/// Adds pattern-matching-related methods to [Record].
extension RecordPatterns on Record {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Record value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Record() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Record value)  $default,){
final _that = this;
switch (_that) {
case _Record():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Record value)?  $default,){
final _that = this;
switch (_that) {
case _Record() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime createAt,  double takenTime,  RouteData route, @LatLngConverter()  LatLng startLocation,  Place endPlace)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Record() when $default != null:
return $default(_that.id,_that.createAt,_that.takenTime,_that.route,_that.startLocation,_that.endPlace);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime createAt,  double takenTime,  RouteData route, @LatLngConverter()  LatLng startLocation,  Place endPlace)  $default,) {final _that = this;
switch (_that) {
case _Record():
return $default(_that.id,_that.createAt,_that.takenTime,_that.route,_that.startLocation,_that.endPlace);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime createAt,  double takenTime,  RouteData route, @LatLngConverter()  LatLng startLocation,  Place endPlace)?  $default,) {final _that = this;
switch (_that) {
case _Record() when $default != null:
return $default(_that.id,_that.createAt,_that.takenTime,_that.route,_that.startLocation,_that.endPlace);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Record implements Record {
  const _Record({required this.id, required this.createAt, required this.takenTime, required this.route, @LatLngConverter() required this.startLocation, required this.endPlace});
  factory _Record.fromJson(Map<String, dynamic> json) => _$RecordFromJson(json);

@override final  String id;
@override final  DateTime createAt;
@override final  double takenTime;
@override final  RouteData route;
@override@LatLngConverter() final  LatLng startLocation;
@override final  Place endPlace;

/// Create a copy of Record
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecordCopyWith<_Record> get copyWith => __$RecordCopyWithImpl<_Record>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecordToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Record&&(identical(other.id, id) || other.id == id)&&(identical(other.createAt, createAt) || other.createAt == createAt)&&(identical(other.takenTime, takenTime) || other.takenTime == takenTime)&&(identical(other.route, route) || other.route == route)&&(identical(other.startLocation, startLocation) || other.startLocation == startLocation)&&(identical(other.endPlace, endPlace) || other.endPlace == endPlace));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createAt,takenTime,route,startLocation,endPlace);

@override
String toString() {
  return 'Record(id: $id, createAt: $createAt, takenTime: $takenTime, route: $route, startLocation: $startLocation, endPlace: $endPlace)';
}


}

/// @nodoc
abstract mixin class _$RecordCopyWith<$Res> implements $RecordCopyWith<$Res> {
  factory _$RecordCopyWith(_Record value, $Res Function(_Record) _then) = __$RecordCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime createAt, double takenTime, RouteData route,@LatLngConverter() LatLng startLocation, Place endPlace
});


@override $RouteDataCopyWith<$Res> get route;@override $PlaceCopyWith<$Res> get endPlace;

}
/// @nodoc
class __$RecordCopyWithImpl<$Res>
    implements _$RecordCopyWith<$Res> {
  __$RecordCopyWithImpl(this._self, this._then);

  final _Record _self;
  final $Res Function(_Record) _then;

/// Create a copy of Record
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createAt = null,Object? takenTime = null,Object? route = null,Object? startLocation = null,Object? endPlace = null,}) {
  return _then(_Record(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createAt: null == createAt ? _self.createAt : createAt // ignore: cast_nullable_to_non_nullable
as DateTime,takenTime: null == takenTime ? _self.takenTime : takenTime // ignore: cast_nullable_to_non_nullable
as double,route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as RouteData,startLocation: null == startLocation ? _self.startLocation : startLocation // ignore: cast_nullable_to_non_nullable
as LatLng,endPlace: null == endPlace ? _self.endPlace : endPlace // ignore: cast_nullable_to_non_nullable
as Place,
  ));
}

/// Create a copy of Record
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RouteDataCopyWith<$Res> get route {
  
  return $RouteDataCopyWith<$Res>(_self.route, (value) {
    return _then(_self.copyWith(route: value));
  });
}/// Create a copy of Record
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceCopyWith<$Res> get endPlace {
  
  return $PlaceCopyWith<$Res>(_self.endPlace, (value) {
    return _then(_self.copyWith(endPlace: value));
  });
}
}

// dart format on
