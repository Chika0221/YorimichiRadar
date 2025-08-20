// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Place _$PlaceFromJson(Map<String, dynamic> json) => _Place(
  id: json['id'] as String,
  displayName: LocalizedText.fromJson(
    json['displayName'] as Map<String, dynamic>,
  ),
  primaryTypeDisplayName:
      json['primaryTypeDisplayName'] == null
          ? null
          : LocalizedText.fromJson(
            json['primaryTypeDisplayName'] as Map<String, dynamic>,
          ),
  shortFormattedAddress: json['shortFormattedAddress'] as String?,
  location: const LatLngConverter().fromJson(
    json['location'] as Map<String, dynamic>?,
  ),
  rating: json['rating'] as num?,
  regularOpeningHours:
      json['regularOpeningHours'] == null
          ? null
          : RegularOpeningHours.fromJson(
            json['regularOpeningHours'] as Map<String, dynamic>,
          ),
  googleMapsUri: json['googleMapsUri'] as String?,
);

Map<String, dynamic> _$PlaceToJson(_Place instance) => <String, dynamic>{
  'id': instance.id,
  'displayName': instance.displayName,
  'primaryTypeDisplayName': instance.primaryTypeDisplayName,
  'shortFormattedAddress': instance.shortFormattedAddress,
  'location': const LatLngConverter().toJson(instance.location),
  'rating': instance.rating,
  'regularOpeningHours': instance.regularOpeningHours,
  'googleMapsUri': instance.googleMapsUri,
};

_LocalizedText _$LocalizedTextFromJson(Map<String, dynamic> json) =>
    _LocalizedText(
      text: json['text'] as String,
      languageCode: json['languageCode'] as String,
    );

Map<String, dynamic> _$LocalizedTextToJson(_LocalizedText instance) =>
    <String, dynamic>{
      'text': instance.text,
      'languageCode': instance.languageCode,
    };

_RegularOpeningHours _$RegularOpeningHoursFromJson(Map<String, dynamic> json) =>
    _RegularOpeningHours(
      openNow: json['openNow'] as bool,
      weekdayDescriptions:
          (json['weekdayDescriptions'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
    );

Map<String, dynamic> _$RegularOpeningHoursToJson(
  _RegularOpeningHours instance,
) => <String, dynamic>{
  'openNow': instance.openNow,
  'weekdayDescriptions': instance.weekdayDescriptions,
};
