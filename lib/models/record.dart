// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

// Project imports:
import 'package:yorimichi_radar/models/place.dart';
import 'package:yorimichi_radar/models/route.dart';

part 'record.freezed.dart';
part 'record.g.dart';

@freezed
abstract class Record with _$Record {
  const factory Record({
    required String id,
    required DateTime createAt,
    required double takenTime,
    required RouteData route,
    @LatLngConverter() required LatLng startLocation,
    required Place endPlace,
  }) = _Record;

  factory Record.fromJson(Map<String, dynamic> json) => _$RecordFromJson(json);
}
