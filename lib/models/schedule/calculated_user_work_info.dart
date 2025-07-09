import 'package:tetbee__base/models/schedule/user_schedule.dart';
import 'package:tetbee__base/tetbee__base.dart';

class CalculatedUserWorkInfo {
  CalculatedUserWorkInfo({
    required this.holiDaySchedule,
    required this.regularDaySchedule,
    required this.unSignedOutSchedules,
  });

  final List<UserSchedule> regularDaySchedule;
  final List<UserSchedule> holiDaySchedule;
  final List<UserSchedule> unSignedOutSchedules;

  static String getScheduleTimesStringFormat(
    List<UserSchedule> schedules, {
    int scheduleTimeInterval = 15,
  }) {
    int minutes = 0;
    for (var usche in schedules) {
      minutes += usche.getTotalScheduleTimeInMinuteByPosition(
        scheduleTimeInterval: scheduleTimeInterval,
      );
    }
    final hours = (minutes ~/ 60).toString().padLeft(2, '0');
    final mins = (minutes % 60).toString().padLeft(2, '0');
    return minutes == 0 ? '' : '$hours:$mins';
  }
}
