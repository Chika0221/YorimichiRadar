// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'radius_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RadiusSetting {

 double get raduisValue; double get min; double get max;
/// Create a copy of RadiusSetting
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RadiusSettingCopyWith<RadiusSetting> get copyWith => _$RadiusSettingCopyWithImpl<RadiusSetting>(this as RadiusSetting, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RadiusSetting&&(identical(other.raduisValue, raduisValue) || other.raduisValue == raduisValue)&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max));
}


@override
int get hashCode => Object.hash(runtimeType,raduisValue,min,max);

@override
String toString() {
  return 'RadiusSetting(raduisValue: $raduisValue, min: $min, max: $max)';
}


}

/// @nodoc
abstract mixin class $RadiusSettingCopyWith<$Res>  {
  factory $RadiusSettingCopyWith(RadiusSetting value, $Res Function(RadiusSetting) _then) = _$RadiusSettingCopyWithImpl;
@useResult
$Res call({
 double raduisValue, double min, double max
});




}
/// @nodoc
class _$RadiusSettingCopyWithImpl<$Res>
    implements $RadiusSettingCopyWith<$Res> {
  _$RadiusSettingCopyWithImpl(this._self, this._then);

  final RadiusSetting _self;
  final $Res Function(RadiusSetting) _then;

/// Create a copy of RadiusSetting
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? raduisValue = null,Object? min = null,Object? max = null,}) {
  return _then(_self.copyWith(
raduisValue: null == raduisValue ? _self.raduisValue : raduisValue // ignore: cast_nullable_to_non_nullable
as double,min: null == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as double,max: null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [RadiusSetting].
extension RadiusSettingPatterns on RadiusSetting {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RadiusSetting value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RadiusSetting() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RadiusSetting value)  $default,){
final _that = this;
switch (_that) {
case _RadiusSetting():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RadiusSetting value)?  $default,){
final _that = this;
switch (_that) {
case _RadiusSetting() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double raduisValue,  double min,  double max)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RadiusSetting() when $default != null:
return $default(_that.raduisValue,_that.min,_that.max);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double raduisValue,  double min,  double max)  $default,) {final _that = this;
switch (_that) {
case _RadiusSetting():
return $default(_that.raduisValue,_that.min,_that.max);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double raduisValue,  double min,  double max)?  $default,) {final _that = this;
switch (_that) {
case _RadiusSetting() when $default != null:
return $default(_that.raduisValue,_that.min,_that.max);case _:
  return null;

}
}

}

/// @nodoc


class _RadiusSetting implements RadiusSetting {
  const _RadiusSetting({required this.raduisValue, required this.min, required this.max});
  

@override final  double raduisValue;
@override final  double min;
@override final  double max;

/// Create a copy of RadiusSetting
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RadiusSettingCopyWith<_RadiusSetting> get copyWith => __$RadiusSettingCopyWithImpl<_RadiusSetting>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RadiusSetting&&(identical(other.raduisValue, raduisValue) || other.raduisValue == raduisValue)&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max));
}


@override
int get hashCode => Object.hash(runtimeType,raduisValue,min,max);

@override
String toString() {
  return 'RadiusSetting(raduisValue: $raduisValue, min: $min, max: $max)';
}


}

/// @nodoc
abstract mixin class _$RadiusSettingCopyWith<$Res> implements $RadiusSettingCopyWith<$Res> {
  factory _$RadiusSettingCopyWith(_RadiusSetting value, $Res Function(_RadiusSetting) _then) = __$RadiusSettingCopyWithImpl;
@override @useResult
$Res call({
 double raduisValue, double min, double max
});




}
/// @nodoc
class __$RadiusSettingCopyWithImpl<$Res>
    implements _$RadiusSettingCopyWith<$Res> {
  __$RadiusSettingCopyWithImpl(this._self, this._then);

  final _RadiusSetting _self;
  final $Res Function(_RadiusSetting) _then;

/// Create a copy of RadiusSetting
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? raduisValue = null,Object? min = null,Object? max = null,}) {
  return _then(_RadiusSetting(
raduisValue: null == raduisValue ? _self.raduisValue : raduisValue // ignore: cast_nullable_to_non_nullable
as double,min: null == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as double,max: null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
