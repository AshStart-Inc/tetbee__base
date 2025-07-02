import 'package:flutter/material.dart';
import 'package:tetbee__base/models/work_place/work_place.dart';
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
}
