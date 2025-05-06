import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/app_settings/membership.dart';
import 'package:tetbee__base/models/app_settings/work_place_type.dart';

part 'app_info.freezed.dart';
part 'app_info.g.dart';

@freezed
class AppInfo with _$AppInfo {
  const factory AppInfo({
    required List<Membership> memberships,
    String? androidBannerId,
    String? iosBannerId,
    required bool isCreateUserAllowed,
    required bool isCreatePlaceAllowed,
    required bool showAds,
    String? versionCode,
    required List<WorkPlaceType> workPlaceType,
  }) = _AppInfo;

  factory AppInfo.fromJson(Map<String, dynamic> json) =>
      _$AppInfoFromJson(json);
}
