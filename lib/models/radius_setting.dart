// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'radius_setting.freezed.dart';

@freezed
class RadiusSetting with _$RadiusSetting {
  const factory RadiusSetting({
    required double raduisValue,
    required double min,
    required double max,
  }) = _RadiusSetting;

  @override
  // TODO: implement max
  double get max => throw UnimplementedError();

  @override
  // TODO: implement min
  double get min => throw UnimplementedError();

  @override
  // TODO: implement raduisValue
  double get raduisValue => throw UnimplementedError();
}
