// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'place.freezed.dart';
part 'place.g.dart';

@freezed
abstract class Place with _$Place {
  const factory Place({
    required String id,
    required LocalizedText displayName,
    required LocalizedText primaryTypeDisplayName,
    String? shortFormattedAddress,
    @LatLngConverter() LatLng? location,
    num? rating,
    RegularOpeningHours? regularOpeningHours,
    String? googleMapsUri,
  }) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);
}

@freezed
abstract class LocalizedText with _$LocalizedText {
  const factory LocalizedText({
    required String text,
    required String languageCode,
  }) = _LocalizedText;

  factory LocalizedText.fromJson(Map<String, dynamic> json) =>
      _$LocalizedTextFromJson(json);
}

@freezed
abstract class RegularOpeningHours with _$RegularOpeningHours {
  const factory RegularOpeningHours({
    required bool openNow,
    required List<String> weekdayDescriptions,
  }) = _RegularOpeningHours;

  factory RegularOpeningHours.fromJson(Map<String, dynamic> json) =>
      _$RegularOpeningHoursFromJson(json);
}

class LatLngConverter implements JsonConverter<LatLng?, Map<String, dynamic>?> {
  const LatLngConverter();

  @override
  LatLng? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;
    return LatLng(json["latitude"] as double, json["longitude"] as double);
  }

  @override
  Map<String, dynamic>? toJson(LatLng? object) {
    if (object == null) return null;
    return {'latitude': object.latitude, 'longitude': object.longitude};
  }
}
