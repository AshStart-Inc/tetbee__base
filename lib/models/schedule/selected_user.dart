import 'package:freezed_annotation/freezed_annotation.dart';

part 'selected_user.freezed.dart';
part 'selected_user.g.dart';

@freezed
class SelectedUser with _$SelectedUser {
  const factory SelectedUser({@Default(false) bool isConfirmed}) =
      _SelectedUser;

  factory SelectedUser.fromJson(Map<String, dynamic> json) =>
      _$SelectedUserFromJson(json);
}
