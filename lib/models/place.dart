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
    String? shortFormattedAddress,
    LatLng? location,
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
