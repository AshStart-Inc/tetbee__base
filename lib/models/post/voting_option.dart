import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'voting_option.freezed.dart';
part 'voting_option.g.dart';

@freezed
class VotingOption with _$VotingOption {
  @JsonSerializable(explicitToJson: true)
  const factory VotingOption({
    required String title,
    String? description,
    @JsonKey(toJson: Helpers.colorToInt, fromJson: Helpers.colorFromInt)
    Color? color,
    @Default([]) List<String> votes,
  }) = _VotingOption;

  factory VotingOption.fromJson(Map<String, dynamic> json) =>
      _$VotingOptionFromJson(json);
}
