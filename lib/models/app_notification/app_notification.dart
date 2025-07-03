import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/common/stored_data.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'app_notification.freezed.dart';
part 'app_notification.g.dart';

enum AppNotificationType {
  postAnnounced,
  postComment,
  likePostComment,
  postCommentReply,
  confirmNotification,
  availabilityReceiverOpen,
  availabilityReceiverClose,
  availabilityReminder,
  scheduleRelease,
  scheduleUpdate,
  joinRequest,
  joinRequestConfirmed,
  joinRequestRejected,
  userJoined,
  userInfoUpdate,
  userRemoved,
  timeOffRequestCreated,
  timeOffRequestConfirm,
  timeOffRequestReject,
  tradeShiftCreated,
  tradeShiftConfirmed,
  tradeShiftRejected,
  createdNewUser,
  createdNewPlace,
}

@freezed
class AppNotification with _$AppNotification {
  const factory AppNotification({
    @JsonSerializable(explicitToJson: true) String? id,
    required String recipentUserId,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? readAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    @Default('') String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    String? referenceDocumentPath,
    String? notificationTopic,
    String? workPlaceId,
    String? title,
    String? body,
    AppNotificationType? type,
    Map<String, StoredData>? mediaData,
    @Default(false) bool didCompleteRequest,
  }) = _AppNotification;

  factory AppNotification.fromJson(Map<String, dynamic> json) =>
      _$AppNotificationFromJson(json);
}
