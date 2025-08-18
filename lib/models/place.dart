// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'place.freezed.dart';
part 'place.g.dart';

@freezed
class Place with _$Place {
  const factory Place({
    required String id,
    required String displayName,
    required String shortFormattedAddress,
    required LatLng location,
    double? rating,
    required List<String> weekdayDescriptions,
    required String googleMapsUri,
  }) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);

  @override
  // TODO: implement displayName
  String get displayName => throw UnimplementedError();

  @override
  // TODO: implement googleMapsUri
  String get googleMapsUri => throw UnimplementedError();

  @override
  // TODO: implement id
  String get id => throw UnimplementedError();

  @override
  // TODO: implement location
  LatLng get location => throw UnimplementedError();

  @override
  // TODO: implement rating
  double? get rating => throw UnimplementedError();

  @override
  // TODO: implement shortFormattedAddress
  String get shortFormattedAddress => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }

  @override
  // TODO: implement weekdayDescriptions
  List<String> get weekdayDescriptions => throw UnimplementedError();
}
