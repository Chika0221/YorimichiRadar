// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'route.freezed.dart';
part 'route.g.dart';

@freezed
abstract class RouteData with _$RouteData {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory RouteData({
    required String weightName,
    required Geometry geometry,
    required double weight,
    required double duration,
    required double distance,
  }) = _RouteData;

  factory RouteData.fromJson(Map<String, dynamic> json) =>
      _$RouteDataFromJson(json);
}

@freezed
abstract class Geometry with _$Geometry {
  const factory Geometry({
    @LatLngConverterFromList() required List<LatLng> coordinates,
    required String type,
  }) = _Geometry;

  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);
}

class LatLngConverterFromList implements JsonConverter<LatLng, List<dynamic>> {
  const LatLngConverterFromList();

  @override
  LatLng fromJson(List<dynamic> location) {
    return LatLng(location[1] as double, location[0] as double);
  }

  @override
  List<double> toJson(LatLng object) {
    return [object.longitude, object.latitude];
  }
}
