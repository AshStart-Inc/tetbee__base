import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/common/stored_data.dart';
import 'package:tetbee__base/utils/enums.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
class MessageModel with _$MessageModel {
  @JsonSerializable(explicitToJson: true)
  const factory MessageModel({
    String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    @Default('') String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    required MessageType messageType,
    @Default('') String message,
    @Default('') String senderUserId,
    @Default([]) List<String> tagedUserId,
    @Default('') String replyMessageId,
    @Default([]) List<String>? filters,
    @Default(false) bool deleted,
    @Default(false) bool pined,
    @Default({}) Map<String, ReactionType> reactions,
    @Default({}) Map<String, StoredData> mediaUrls,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);
}
