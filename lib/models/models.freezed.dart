// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegularOpeningHours {

 bool? get openNow; set openNow(bool? value); List<String>? get weekdayDescriptions; set weekdayDescriptions(List<String>? value);
/// Create a copy of RegularOpeningHours
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegularOpeningHoursCopyWith<RegularOpeningHours> get copyWith => _$RegularOpeningHoursCopyWithImpl<RegularOpeningHours>(this as RegularOpeningHours, _$identity);

  /// Serializes this RegularOpeningHours to a JSON map.
  Map<String, dynamic> toJson();




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
 bool? openNow, List<String>? weekdayDescriptions
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
@pragma('vm:prefer-inline') @override $Res call({Object? openNow = freezed,Object? weekdayDescriptions = freezed,}) {
  return _then(_self.copyWith(
openNow: freezed == openNow ? _self.openNow : openNow // ignore: cast_nullable_to_non_nullable
as bool?,weekdayDescriptions: freezed == weekdayDescriptions ? _self.weekdayDescriptions : weekdayDescriptions // ignore: cast_nullable_to_non_nullable
as List<String>?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? openNow,  List<String>? weekdayDescriptions)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? openNow,  List<String>? weekdayDescriptions)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? openNow,  List<String>? weekdayDescriptions)?  $default,) {final _that = this;
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
   _RegularOpeningHours({required this.openNow, required this.weekdayDescriptions});
  factory _RegularOpeningHours.fromJson(Map<String, dynamic> json) => _$RegularOpeningHoursFromJson(json);

@override  bool? openNow;
@override  List<String>? weekdayDescriptions;

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
String toString() {
  return 'RegularOpeningHours(openNow: $openNow, weekdayDescriptions: $weekdayDescriptions)';
}


}

/// @nodoc
abstract mixin class _$RegularOpeningHoursCopyWith<$Res> implements $RegularOpeningHoursCopyWith<$Res> {
  factory _$RegularOpeningHoursCopyWith(_RegularOpeningHours value, $Res Function(_RegularOpeningHours) _then) = __$RegularOpeningHoursCopyWithImpl;
@override @useResult
$Res call({
 bool? openNow, List<String>? weekdayDescriptions
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
@override @pragma('vm:prefer-inline') $Res call({Object? openNow = freezed,Object? weekdayDescriptions = freezed,}) {
  return _then(_RegularOpeningHours(
openNow: freezed == openNow ? _self.openNow : openNow // ignore: cast_nullable_to_non_nullable
as bool?,weekdayDescriptions: freezed == weekdayDescriptions ? _self.weekdayDescriptions : weekdayDescriptions // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
