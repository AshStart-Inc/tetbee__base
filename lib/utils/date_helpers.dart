import 'package:flutter/material.dart';
import 'package:tetbee__base/tetbee__base.dart';
import 'package:timezone/timezone.dart' as tz;

class DateHelpers {
  static tz.TZDateTime? timeToLocalTime(DateTime? time) {
    if (time == null) {
      return null;
    }
    tz.TZDateTime? time0 = tz.TZDateTime.from(time, tz.local);
    return time0;
  }

  static void setTimeZone(WorkPlace placeModel) {
    if (placeModel.timeZone.location.isNotEmpty) {
      tz.setLocalLocation(tz.getLocation(placeModel.timeZone.location));
      print('Time zone has been changed - ${placeModel.timeZone.timeZoneName}');
    }
  }

  static bool isSameDate(DateTime a, DateTime b) =>
      a.year == b.year && a.month == b.month && a.day == b.day;

  static String getWeekdayFormat(int weekday) {
    String? weekdayFormat;
    switch (weekday) {
      case 1:
        weekdayFormat = 'MON';
        break;
      case 2:
        weekdayFormat = 'TUE';
        break;
      case 3:
        weekdayFormat = 'WED';
        break;
      case 4:
        weekdayFormat = 'THU';
        break;
      case 5:
        weekdayFormat = 'FRI';
        break;
      case 6:
        weekdayFormat = 'SAT';
        break;
      case 7:
        weekdayFormat = 'SUN';
        break;
    }
    return weekdayFormat!;
  }

  static String getWeekdayFullFormat(int weekday) {
    String weekdayFormat;
    switch (weekday) {
      case 1:
        weekdayFormat = 'Monday';
        break;
      case 2:
        weekdayFormat = 'Tuesday';
        break;
      case 3:
        weekdayFormat = 'Wednesday';
        break;
      case 4:
        weekdayFormat = 'Thursday';
        break;
      case 5:
        weekdayFormat = 'Friday';
        break;
      case 6:
        weekdayFormat = 'Saturday';
        break;
      case 7:
        weekdayFormat = 'Sunday';
        break;
      default:
        weekdayFormat = '';
        break;
    }
    return weekdayFormat;
  }

  static String getMonthFormat(int date, {bool isFullMonthFormat = false}) {
    String month;
    switch (date) {
      case 1:
        month = isFullMonthFormat ? 'January' : 'JAN';
        break;
      case 2:
        month = isFullMonthFormat ? 'February' : 'FEB';
        break;
      case 3:
        month = isFullMonthFormat ? 'March' : 'MAR';
        break;
      case 4:
        month = isFullMonthFormat ? 'April' : 'APR';
        break;
      case 5:
        month = isFullMonthFormat ? 'May' : 'MAY';
        break;
      case 6:
        month = isFullMonthFormat ? 'June' : 'JUN';
        break;
      case 7:
        month = isFullMonthFormat ? 'July' : 'JUL';
        break;
      case 8:
        month = isFullMonthFormat ? 'August' : 'AUG';
        break;
      case 9:
        month = isFullMonthFormat ? 'September' : 'SEP';
        break;
      case 10:
        month = isFullMonthFormat ? 'October' : 'OCT';
        break;
      case 11:
        month = isFullMonthFormat ? 'November' : 'NOV';
        break;
      case 12:
        month = isFullMonthFormat ? 'December' : 'DEC';
        break;
      default:
        month = '';
    }
    return month;
  }

  static String getAvailabilityText(TimeOfDay timeOfDay) {
    return '${timeOfDay.hour}:${timeOfDay.minute == 0 ? '00' : timeOfDay.minute} ';
  }

  static List<String> getFirstDaysOfMonthsFilters(
    DateTime start,
    DateTime end,
  ) {
    DateTime current = DateTime(start.year, start.month);

    final last = DateTime(end.year, end.month);

    List<String> result = [];

    while (!current.isAfter(last)) {
      result.add(current.toIsoMonthString);
      current = DateTime(current.year, current.month + 1);
    }

    return result;
  }

  static List<String> getFirstDaysOfYearsFilters(DateTime start, DateTime end) {
    final int startYear = start.year;
    final int endYear = end.year;

    return List.generate(
      endYear - startYear + 1,
      (i) => DateTime(startYear + i, 1, 1).toIsoYearString,
    );
  }

  static List<String> getAllDatesBetween(DateTime start, DateTime end) {
    DateTime current = DateTime(start.year, start.month, start.day);
    final DateTime last = DateTime(end.year, end.month, end.day);
    List<String> result = [];

    while (!current.isAfter(last)) {
      result.add(current.toIsoDateString);
      current = current.add(const Duration(days: 1));
    }

    return result;
  }

  static DateTime getDateOfThisWeekday(int weekday, {DateTime? baseDate}) {
    final now = baseDate ?? DateTime.now();
    final todayWeekday = now.weekday;

    int diff;
    if (weekday == 7) {
      diff = todayWeekday;
    } else {
      diff = todayWeekday - weekday;
    }

    return now.subtract(Duration(days: diff));
  }

  static String getActualWorkTime({
    required DateTime startTime,
    required DateTime endTime,
    required int breakMinute,
    int? scheduleTimeInterval,
  }) {
    Duration worktime = endTime
        .subtract(Duration(hours: 0, minutes: breakMinute))
        .difference(startTime);
    return DateHelpers.durationTime(
      worktime,
      showSeconds: false,
      scheduleTimeInterval: scheduleTimeInterval,
    );
  }

  static String durationTime(
    Duration duration, {
    bool showSeconds = true,
    int? scheduleTimeInterval,
  }) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes =
        scheduleTimeInterval != null
            ? twoDigits(
              duration.inMinutes.remainder(60) ~/
                  scheduleTimeInterval *
                  scheduleTimeInterval,
            )
            : twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${twoDigits(duration.inHours)}:$twoDigitMinutes ${showSeconds ? ':$twoDigitSeconds' : ''}";
  }

  static Color getWorkHourColor({
    required BuildContext context,
    required DateTime startTime,
    required DateTime endTime,
    required int breakMinute,
  }) {
    Duration worktime = endTime
        .subtract(Duration(hours: 0, minutes: breakMinute))
        .difference(startTime);

    if (worktime.inHours >= 20) {
      return Colors.red[900]!;
    } else if (worktime.inHours >= 15) {
      return Colors.pink[900]!;
    } else if (worktime.inHours >= 10) {
      return Colors.yellow[900]!;
    } else if (worktime.inHours >= 5) {
      return Colors.green[900]!;
    } else {
      return Theme.of(context).textTheme.headlineLarge!.color!.withOpacity(0.8);
    }
  }
}

extension TimeOfDayExtension on TimeOfDay {
  String formatTimeOfDay() {
    final h = hour.toString().padLeft(2, '0');
    final m = minute.toString().padLeft(2, '0');
    return '$h:$m';
  }

  TimeOfDay getTimeOfDayDifferenceAsTimeOfDay(TimeOfDay end) {
    final now = DateTime.now();

    final startDateTime = DateTime(now.year, now.month, now.day, hour, minute);
    final endDateTime = DateTime(
      now.year,
      now.month,
      now.day,
      end.hour,
      end.minute,
    );

    final diff = endDateTime.difference(startDateTime).abs();

    final hours = diff.inHours;
    final minutes = diff.inMinutes.remainder(60);

    return TimeOfDay(hour: hours, minute: minutes);
  }
}
