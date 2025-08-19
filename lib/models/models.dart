// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:

part 'models.freezed.dart';
part 'models.g.dart';

@unfreezed
class RegularOpeningHours with _$RegularOpeningHours {
  factory RegularOpeningHours({
    required bool? openNow,
    required List<String>? weekdayDescriptions,
  }) = _RegularOpeningHours;

  factory RegularOpeningHours.fromJson(Map<String, dynamic> json) =>
      _$RegularOpeningHoursFromJson(json);
      
        @override
        bool? openNow;
      
        @override
        List<String>? weekdayDescriptions;
      
        @override
        Map<String, dynamic> toJson() {
          // TODO: implement toJson
          throw UnimplementedError();
        }
}