import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_zone_model.freezed.dart';
part 'time_zone_model.g.dart';

@freezed
class TimeZoneModel with _$TimeZoneModel {
  const factory TimeZoneModel({
    @Default('') String location,
    @Default('') String timeZoneName,
    @Default(0) int offsetMilliseconds,
    @Default(false) bool isDst,
  }) = _TimeZoneModel;

  factory TimeZoneModel.fromJson(Map<String, dynamic> json) =>
      _$TimeZoneModelFromJson(json);
}
