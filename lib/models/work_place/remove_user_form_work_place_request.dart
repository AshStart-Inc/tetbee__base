import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/work_place/user_work_place_relation.dart';

part 'remove_user_form_work_place_request.freezed.dart';
part 'remove_user_form_work_place_request.g.dart';

@freezed
class RemoveUserFormWorkPlaceRequest with _$RemoveUserFormWorkPlaceRequest {
  @JsonSerializable(explicitToJson: true)
  const factory RemoveUserFormWorkPlaceRequest({
    required String userId,
    required bool isTempUser,
    required String currentUserId,
    required String workPlaceId,
    required UserWorkPlaceRelation updatedUserWorkPlaceRelation,
    required List<String> notificationPositionIds,
  }) = _RemoveUserFormWorkPlaceRequest;

  factory RemoveUserFormWorkPlaceRequest.fromJson(Map<String, dynamic> json) =>
      _$RemoveUserFormWorkPlaceRequestFromJson(json);
}
