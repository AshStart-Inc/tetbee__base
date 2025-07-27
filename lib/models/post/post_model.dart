import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/common/stored_data.dart';
import 'package:tetbee__base/models/post/link_model.dart';
import 'package:tetbee__base/models/post/voting_option.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

enum PostTarget { public, workPlace }

enum PostType { basic, voting }

@freezed
class PostModel with _$PostModel {
  @JsonSerializable(explicitToJson: true)
  const factory PostModel({
    String? id,
    @Default(false) bool isUploading,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    @Default('') String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    @Default('') String updatedBy,
    required PostTarget postTarget,
    required PostType postType,
    required String workPlaceId,
    required String title,
    required String contents,
    @Default(false) bool commentDisabled,
    @Default(false) bool pined,
    @Default(false) bool deleted,
    @Default([]) List<String> notificationPositionIds,
    @Default([]) List<String> selectedPositions,
    @Default([]) List<String> views,
    @Default([]) List<String> confirms,
    @Default([]) List<LinkModel> linkes,
    @Default([]) List<VotingOption> votingOptions,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? votingExpiresAt,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}
