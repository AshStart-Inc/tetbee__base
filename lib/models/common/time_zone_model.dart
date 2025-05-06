import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_zone_model.freezed.dart';
part 'time_zone_model.g.dart';

@freezed
class TimeZoneModel with _$TimeZoneModel {
  const factory TimeZoneModel({
    required String location,
    required String timeZoneName,
    required int offsetMilliseconds,
    required bool isDst,
  }) = _TimeZoneModel;

  factory TimeZoneModel.fromJson(Map<String, dynamic> json) =>
      _$TimeZoneModelFromJson(json);
}
