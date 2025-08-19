// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegularOpeningHours _$RegularOpeningHoursFromJson(Map<String, dynamic> json) =>
    _RegularOpeningHours(
      openNow: json['openNow'] as bool?,
      weekdayDescriptions:
          (json['weekdayDescriptions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
    );

Map<String, dynamic> _$RegularOpeningHoursToJson(
  _RegularOpeningHours instance,
) => <String, dynamic>{
  'openNow': instance.openNow,
  'weekdayDescriptions': instance.weekdayDescriptions,
};
