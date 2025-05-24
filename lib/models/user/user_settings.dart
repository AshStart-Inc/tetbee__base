import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/utils/enums.dart';

part 'user_settings.freezed.dart';
part 'user_settings.g.dart';

// @JsonSerializable()
@freezed
class UserSettings with _$UserSettings {
  const factory UserSettings({
    @Default(TimeFormat.amPmFormat) TimeFormat timeFormat,
    @Default(AppTheme.light) AppTheme appTheme,
    @Default(8.0) double baseFontSize,
    @Default(false) bool homeScreenShowMySchedule,
    @Default(false) bool didRateApp,
    @Default(true) bool showAddress,
    @Default(true) bool showCV,
    @Default(true) bool showProfileInfo,
    @Default(true) bool showWorkHistory,
    @Default(true) bool showWorkPlaceList,
    @Default(true) bool use24HourFormat,
  }) = _UserSettings;

  factory UserSettings.fromJson(Map<String, dynamic> json) =>
      _$UserSettingsFromJson(json);
}
