// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Place _$PlaceFromJson(Map<String, dynamic> json) => _Place(
  id: json['id'] as String,
  displayName: (json['displayName'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  ),
  shortFormattedAddress: json['shortFormattedAddress'] as String,
  location: LatLng.fromJson(json['location'] as Map<String, dynamic>),
  rating: (json['rating'] as num?)?.toDouble(),
  regularOpeningHours:
      json['regularOpeningHours'] == null
          ? null
          : RegularOpeningHours.fromJson(
            json['regularOpeningHours'] as Map<String, dynamic>,
          ),
  googleMapsUri: json['googleMapsUri'] as String,
);

Map<String, dynamic> _$PlaceToJson(_Place instance) => <String, dynamic>{
  'id': instance.id,
  'displayName': instance.displayName,
  'shortFormattedAddress': instance.shortFormattedAddress,
  'location': instance.location,
  'rating': instance.rating,
  'regularOpeningHours': instance.regularOpeningHours,
  'googleMapsUri': instance.googleMapsUri,
};
