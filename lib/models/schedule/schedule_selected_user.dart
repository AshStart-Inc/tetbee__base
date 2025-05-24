import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_selected_user.freezed.dart';
part 'schedule_selected_user.g.dart';

@freezed
class ScheduleSelectedUser with _$ScheduleSelectedUser {
  const factory ScheduleSelectedUser({@Default(false) bool isConfirmed}) =
      _ScheduleSelectedUser;

  factory ScheduleSelectedUser.fromJson(Map<String, dynamic> json) =>
      _$ScheduleSelectedUserFromJson(json);
}
