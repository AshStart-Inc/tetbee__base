class Helpers {
  static int? dateToJson(DateTime? time) => time?.millisecondsSinceEpoch;
  static DateTime? dateFromJson(int? time) =>
      time == null ? null : DateTime.fromMillisecondsSinceEpoch(time);

  static String dateToString(DateTime date) {
    final year = date.year.toString();
    final month = date.month.toString().padLeft(2, '0');
    final day = date.day.toString().padLeft(2, '0');
    return '$year-$month-$day';
  }

  static DateTime dateFromString(String dateString) {
    return DateTime.parse(dateString);
  }
}
