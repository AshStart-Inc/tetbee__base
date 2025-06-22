import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_notification_state.freezed.dart';
part 'app_notification_state.g.dart';

@freezed
class AppNotificationState with _$AppNotificationState {
  const factory AppNotificationState({@Default(true) bool read}) =
      _AppNotificationState;

  factory AppNotificationState.fromJson(Map<String, dynamic> json) =>
      _$AppNotificationStateFromJson(json);
}
