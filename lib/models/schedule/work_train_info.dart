import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_train_info.freezed.dart';
part 'work_train_info.g.dart';

@freezed
class WorkTrainInfo with _$WorkTrainInfo {
  const factory WorkTrainInfo({
    required String trainUserId,
    String? trainDailyScheduleId,
  }) = _WorkTrainInfo;

  factory WorkTrainInfo.fromJson(Map<String, dynamic> json) =>
      _$WorkTrainInfoFromJson(json);
}
