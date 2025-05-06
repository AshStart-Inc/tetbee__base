import 'package:freezed_annotation/freezed_annotation.dart';

part 'membership.freezed.dart';
part 'membership.g.dart';

@freezed
class Membership with _$Membership {
  const factory Membership({
    required String id,
    required String name,
    required int maximumPositions,
    required int maximumStaffCapacity,
    required bool showAds,
  }) = _Membership;

  factory Membership.fromJson(Map<String, dynamic> json) =>
      _$MembershipFromJson(json);
}
