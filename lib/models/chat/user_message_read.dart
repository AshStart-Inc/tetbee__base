import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/utils/enums.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'user_message_read.freezed.dart';
part 'user_message_read.g.dart';

@freezed
class UserMessageRead with _$UserMessageRead {
  @JsonSerializable(explicitToJson: true)
  const factory UserMessageRead({
    String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? lastReads,
    @Default(0) int unreadCount,
    required ChatType chatType,
  }) = _UserMessageRead;

  factory UserMessageRead.fromJson(Map<String, dynamic> json) =>
      _$UserMessageReadFromJson(json);
}
