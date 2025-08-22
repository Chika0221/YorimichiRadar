// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RouteData _$RouteDataFromJson(Map<String, dynamic> json) => _RouteData(
  weightName: json['weight_name'] as String,
  geometry: Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
  weight: (json['weight'] as num).toDouble(),
  duration: (json['duration'] as num).toDouble(),
  distance: (json['distance'] as num).toDouble(),
);

Map<String, dynamic> _$RouteDataToJson(_RouteData instance) =>
    <String, dynamic>{
      'weight_name': instance.weightName,
      'geometry': instance.geometry,
      'weight': instance.weight,
      'duration': instance.duration,
      'distance': instance.distance,
    };

_Geometry _$GeometryFromJson(Map<String, dynamic> json) => _Geometry(
  coordinates:
      (json['coordinates'] as List<dynamic>)
          .map((e) => const LatLugConverterFromList().fromJson(e as List))
          .toList(),
  type: json['type'] as String,
);

Map<String, dynamic> _$GeometryToJson(_Geometry instance) => <String, dynamic>{
  'coordinates':
      instance.coordinates.map(const LatLugConverterFromList().toJson).toList(),
  'type': instance.type,
};
