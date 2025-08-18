// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Place _$PlaceFromJson(Map<String, dynamic> json) => _Place(
  id: json['id'] as String,
  displayName: Map<String, String>.from(json['displayName'] as Map),
  shortFormattedAddress: json['shortFormattedAddress'] as String,
  location: LatLng.fromJson(json['location'] as Map<String, dynamic>),
  rating: (json['rating'] as num?)?.toDouble(),
  weekdayDescriptions:
      (json['weekdayDescriptions'] as List<dynamic>)
          .map((e) => e as String?)
          .toList(),
  googleMapsUri: json['googleMapsUri'] as String,
);

Map<String, dynamic> _$PlaceToJson(_Place instance) => <String, dynamic>{
  'id': instance.id,
  'displayName': instance.displayName,
  'shortFormattedAddress': instance.shortFormattedAddress,
  'location': instance.location,
  'rating': instance.rating,
  'weekdayDescriptions': instance.weekdayDescriptions,
  'googleMapsUri': instance.googleMapsUri,
};
