import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:tetbee__base/dialog/custom_dialog.dart';

import 'package:tetbee__base/utils/enums.dart';
import 'package:url_launcher/url_launcher.dart' as urllauncher;

class Helpers {
  static Color getColorByDocumentStatus(DocumentStatus documentStatus) {
    switch (documentStatus) {
      case DocumentStatus.onSubmit:
        return Colors.cyan;
      case DocumentStatus.onReview:
        return Colors.brown;
      case DocumentStatus.onHold:
        return Colors.purple;
      case DocumentStatus.onRejected:
        return Colors.red;
      case DocumentStatus.onConfirmed:
        return Colors.green;
      case DocumentStatus.onCancel:
        return Colors.deepOrangeAccent;
      case DocumentStatus.onExpired:
        return Colors.black87;
    }
  }

  static String getStringByDocumentStatus(DocumentStatus documentStatus) {
    switch (documentStatus) {
      case DocumentStatus.onSubmit:
        return 'Submitted';
      case DocumentStatus.onReview:
        return 'On Review';
      case DocumentStatus.onHold:
        return 'On Hold';
      case DocumentStatus.onRejected:
        return 'Rejected';
      case DocumentStatus.onConfirmed:
        return 'Confirmed';
      case DocumentStatus.onCancel:
        return 'Canceled';
      case DocumentStatus.onExpired:
        return 'Expired';
    }
  }

  static dismissKeyboard({required BuildContext context}) =>
      FocusScope.of(context).requestFocus(FocusNode());
  static int? colorToInt(Color? color) => color?.value;
  static Color? colorFromInt(int? value) => value == null ? null : Color(value);

  static openWebSite(String value) {
    urllauncher.launch(value);
  }

  //
  static copyInClipboard({
    required String? value,
    required BuildContext buildContext,
    required String label,
    String? text,
  }) async {
    CustomDialog.showToast(text ?? 'Copied in Clipboard..');
    await Clipboard.setData(ClipboardData(text: value ?? ''));
    // showCenterFlash(
    //     context: buildContext, message: "$label is copied in you Clipboard");
  }

  //Date
  static int? dateToJson(DateTime? time) =>
      time?.toUtc().millisecondsSinceEpoch;
  static DateTime? dateFromJson(int? time) =>
      time == null ? null : DateTime.fromMillisecondsSinceEpoch(time);

  // DATE ISO format

  static String? dateIsoToJson(DateTime? time) => time?.toIsoDateString;
  static DateTime? dateFromJsonIso(String? time) =>
      time?.isoDateStringToDateTime;

  // List<DateTime> → List<int>
  static List<int> listDateToJson(List<DateTime> times) =>
      times.map((e) => e.toUtc().millisecondsSinceEpoch).toList();

  // List<int> → List<DateTime>
  static List<DateTime> listDateFromJson(List<dynamic> times) =>
      times.map((e) => DateTime.fromMillisecondsSinceEpoch(e)).toList();

  static materialPageRoute({
    required BuildContext context,
    required Widget destination,
  }) {
    HapticFeedback.lightImpact();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder:
            (context) => Theme(data: Theme.of(context), child: destination),
      ),
    );
  }

  static getMQHeight({required BuildContext context}) =>
      MediaQuery.of(context).size.height;
  static getMQWidth({required BuildContext context}) =>
      MediaQuery.of(context).size.width;
  static IconData getPlaceTypeIcon(PlaceType type) {
    switch (type) {
      case PlaceType.restaurant:
        return FontAwesomeIcons.store;
      case PlaceType.cafe:
        return FontAwesomeIcons.coffee;
    }
  }

  static bool areDatesConsecutive(List<DateTime> dates) {
    if (dates.length <= 1) return true;
    dates.sort();
    for (int i = 0; i < dates.length - 1; i++) {
      final current = dates[i];
      final next = dates[i + 1];
      if (!next.isAtSameMomentAs(current.add(Duration(days: 1)))) {
        return false;
      }
    }
    return true;
  }

  static String describeDateRange(DateTime date1, DateTime date2) {
    // 날짜 정렬
    final start = date1.isBefore(date2) ? date1 : date2;
    final end = date1.isBefore(date2) ? date2 : date1;

    final isSameMonth = start.year == end.year && start.month == end.month;
    final isStartFirstDay = start.day == 1;
    final isEndLastDay = end.day == DateTime(end.year, end.month + 1, 0).day;

    if (isSameMonth) {
      if (isStartFirstDay && isEndLastDay) {
        return '한달 전체';
      } else {
        return '부분적 날짜';
      }
    } else {
      if (isStartFirstDay && isEndLastDay) {
        return '연속된 달';
      } else {
        return '부분적 날짜2';
      }
    }
  }
}

extension FormattedDate on DateTime {
  bool isSameDate(DateTime b) =>
      year == b.year && month == b.month && day == b.day;
  String get toIsoDateString => DateFormat('yyyy-MM-dd').format(this);
  String get toIsoMonthString => DateFormat('yyyy-MM').format(this);
  String get toIsoYearString => DateFormat('yyyy').format(this);
  // String get compactDateString => DateFormat('yyyyMMdd').format(this);
  String get fullTimestamp => DateFormat('yyyy-MM-dd_HH-mm-ss').format(this);
  bool isEndOfMonth() {
    final lastDay = DateTime(year, month + 1, 0).day;
    return day == lastDay;
  }

  DateTime setHourAndMinutes(int customHour, int customMinute) =>
      DateTime(year, month, day, customHour, customMinute);

  String get getMonthFormatFromDateTime => '$year/$month';

  List<DateTime> getWeekDatesFrom() {
    final int diffToMonday = weekday - DateTime.monday;
    final DateTime monday = subtract(Duration(days: diffToMonday));
    return List.generate(7, (i) => monday.add(Duration(days: i)));
  }
}

extension StringDate on String {
  DateTime get isoDateStringToDateTime => DateFormat('yyyy-MM-dd').parse(this);
}
