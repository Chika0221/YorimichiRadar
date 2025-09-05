// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Record _$RecordFromJson(Map<String, dynamic> json) => _Record(
  id: json['id'] as String,
  createAt: DateTime.parse(json['createAt'] as String),
  takenTime: (json['takenTime'] as num).toDouble(),
  route: RouteData.fromJson(json['route'] as Map<String, dynamic>),
  startLocation: LatLng.fromJson(json['startLocation'] as Map<String, dynamic>),
  endPlace: Place.fromJson(json['endPlace'] as Map<String, dynamic>),
);

Map<String, dynamic> _$RecordToJson(_Record instance) => <String, dynamic>{
  'id': instance.id,
  'createAt': instance.createAt.toIso8601String(),
  'takenTime': instance.takenTime,
  'route': instance.route.toJson(),
  'startLocation': instance.startLocation.toJson(),
  'endPlace': instance.endPlace.toJson(),
};
