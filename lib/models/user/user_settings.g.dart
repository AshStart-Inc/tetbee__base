// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserSettingsImpl _$$UserSettingsImplFromJson(Map<String, dynamic> json) =>
    _$UserSettingsImpl(
      timeFormat:
          $enumDecodeNullable(_$TimeFormatEnumMap, json['timeFormat']) ??
          TimeFormat.amPmFormat,
      appTheme:
          $enumDecodeNullable(_$AppThemeEnumMap, json['appTheme']) ??
          AppTheme.light,
      baseFontSize: (json['baseFontSize'] as num?)?.toDouble() ?? 8.0,
      homeScreenShowMySchedule:
          json['homeScreenShowMySchedule'] as bool? ?? true,
      didRateApp: json['didRateApp'] as bool? ?? false,
      showAddress: json['showAddress'] as bool? ?? true,
      showCV: json['showCV'] as bool? ?? true,
      showProfileInfo: json['showProfileInfo'] as bool? ?? true,
      showWorkHistory: json['showWorkHistory'] as bool? ?? true,
      showWorkPlaceList: json['showWorkPlaceList'] as bool? ?? true,
      use24HourFormat: json['use24HourFormat'] as bool? ?? true,
    );

Map<String, dynamic> _$$UserSettingsImplToJson(_$UserSettingsImpl instance) =>
    <String, dynamic>{
      'timeFormat': _$TimeFormatEnumMap[instance.timeFormat]!,
      'appTheme': _$AppThemeEnumMap[instance.appTheme]!,
      'baseFontSize': instance.baseFontSize,
      'homeScreenShowMySchedule': instance.homeScreenShowMySchedule,
      'didRateApp': instance.didRateApp,
      'showAddress': instance.showAddress,
      'showCV': instance.showCV,
      'showProfileInfo': instance.showProfileInfo,
      'showWorkHistory': instance.showWorkHistory,
      'showWorkPlaceList': instance.showWorkPlaceList,
      'use24HourFormat': instance.use24HourFormat,
    };

const _$TimeFormatEnumMap = {
  TimeFormat.militartFormat: 'militartFormat',
  TimeFormat.amPmFormat: 'amPmFormat',
};

const _$AppThemeEnumMap = {AppTheme.light: 'light', AppTheme.dark: 'dark'};
