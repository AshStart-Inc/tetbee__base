import 'package:flutter/material.dart';
import 'package:tetbee__base/theme/theme_extension.dart';
import 'package:tetbee__base/utils/utils_exports.dart';

class ContainerDateSection extends StatelessWidget {
  const ContainerDateSection({
    super.key,
    required this.endDate,
    required this.startDate,
    this.dayFontsize = 20.0,
    this.monthWeekFontSize = 10.0,
    this.yearFontSize = 7.0,
    this.dateColor,
  });
  final DateTime startDate;
  final DateTime endDate;
  final double dayFontsize;
  final double monthWeekFontSize;
  final double yearFontSize;
  final Color? dateColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Padding(
        //   padding: const EdgeInsets.only(left: 5, top: 2),
        //   child: Text(
        //     startDate.year.toString(),
        //     style: TextStyle(
        //       fontSize: yearFontSize,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   ),
        // ),
        NewCustomDateRange(
          dateColor: dateColor,
          startDate: startDate,
          endDate: endDate,
          dayFontSize: dayFontsize,
          monthWeekFontSize: monthWeekFontSize,
        ),
      ],
    );
  }
}

class NewCustomTimeFormat extends StatelessWidget {
  final TimeOfDay startTime;
  final TimeOfDay endTime;
  const NewCustomTimeFormat({
    super.key,
    required this.startTime,
    required this.endTime,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Text(
          'From  ',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 8),
        ),
        Text(
          DateHelpers.getAvailabilityText(startTime),
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        const Text(
          '  to  ',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 8),
        ),
        Text(
          DateHelpers.getAvailabilityText(endTime),
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ],
    );
  }
}

class NewCustomDateRange extends StatelessWidget {
  final DateTime startDate;
  final DateTime endDate;
  final Color? dateColor;
  final double dayFontSize;
  final double monthWeekFontSize;

  const NewCustomDateRange({
    super.key,
    this.dayFontSize = 20.0,
    this.monthWeekFontSize = 10.0,
    required this.startDate,
    required this.endDate,
    this.dateColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomDateFormatWidget(
          dayFontSize: dayFontSize,
          monthWeekdayFontSize: monthWeekFontSize,
          dateColor: dateColor,
          date: startDate,
        ),
        if (startDate != endDate) const Text(' - '),
        if (startDate != endDate)
          CustomDateFormatWidget(
            dayFontSize: dayFontSize,
            monthWeekdayFontSize: monthWeekFontSize,
            dateColor: dateColor,
            date: endDate,
          ),
      ],
    );
  }
}

class CustomDateFormatWidget extends StatelessWidget {
  const CustomDateFormatWidget({
    super.key,
    required this.date,
    this.dayFontSize = 20,
    this.monthWeekdayFontSize = 10,
    this.dateColor,
    this.dayAndMonthColor,
  });
  final DateTime date;
  final Color? dateColor;
  final Color? dayAndMonthColor;
  final double monthWeekdayFontSize;
  final double dayFontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Row(
        children: [
          Text(
            date.day <= 9 ? '0${date.day}' : date.day.toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: dayFontSize,
              color: dateColor ?? Theme.of(context).baseTextColor,
            ),
          ),
          const SizedBox(width: 4),
          Column(
            children: [
              Text(
                DateHelpers.getWeekdayFormat(date.weekday),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: monthWeekdayFontSize,
                  color:
                      date.weekday == 6
                          ? Colors.blue
                          : date.weekday == 7
                          ? Colors.red
                          : Theme.of(context).baseTextColor,
                ),
              ),
              Text(
                DateHelpers.getMonthFormat(date.month),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: monthWeekdayFontSize,
                  color: Theme.of(context).baseTextColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
