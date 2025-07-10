import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/work_place/user_place_permission.dart';
import 'package:tetbee__base/utils/enums.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'user_work_place_info.freezed.dart';
part 'user_work_place_info.g.dart';

@freezed
class UserWorkPlaceInfo with _$UserWorkPlaceInfo {
  @JsonSerializable(explicitToJson: true)
  const factory UserWorkPlaceInfo({
    @JsonKey(ignore: true) @Default('') String id,
    required int ordinal,
    required bool isTempUser,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    @Default('') String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    @Default('') String updatedBy,
    required String workPlaceNickName,
    @Default(WorkingStatus.fullTime) WorkingStatus workingStatus,
    @Default([]) List<String> positions,
    UserPlacePermission? userPlacePermission,
  }) = _UserWorkPlaceInfo;

  factory UserWorkPlaceInfo.fromJson(Map<String, dynamic> json) =>
      _$UserWorkPlaceInfoFromJson(json);
}
