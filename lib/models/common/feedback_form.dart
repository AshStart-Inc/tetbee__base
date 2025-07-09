import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/tetbee__base.dart';

part 'feedback_form.freezed.dart';
part 'feedback_form.g.dart';

@freezed
class FeedbackForm with _$FeedbackForm {
  @JsonSerializable(explicitToJson: true)
  const factory FeedbackForm({
    String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    @Default('') String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    @Default('') String updatedBy,
    @Default(DocumentStatus.onSubmit) DocumentStatus status,
    @Default([]) List<FeedbackModel> answers,
  }) = _FeedbackForm;

  factory FeedbackForm.fromJson(Map<String, dynamic> json) =>
      _$FeedbackFormFromJson(json);

  static FeedbackModel q1 = FeedbackModel(
    label: 'What do you like most about the app?',
  );
  static FeedbackModel q2 = FeedbackModel(
    label: 'Is there anything you found confusing or frustrating?',
  );
  static FeedbackModel q3 = FeedbackModel(
    label: 'Any features you’d love to see in the future?',
  );
  static FeedbackModel q4 = FeedbackModel(
    label: 'Any features you’d love to see in the future?',
  );
  static FeedbackModel q5 = FeedbackModel(
    label: 'If you’d like us to follow up, leave your email.',
  );

  static List<FeedbackModel> questions = [q1, q2, q3, q4, q5];
}

@freezed
class FeedbackModel with _$FeedbackModel {
  const factory FeedbackModel({@Default('') String label, dynamic answer}) =
      _FeedbackModel;

  factory FeedbackModel.fromJson(Map<String, dynamic> json) =>
      _$FeedbackModelFromJson(json);
}
