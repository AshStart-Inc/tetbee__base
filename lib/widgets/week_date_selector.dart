import 'package:flutter/material.dart';
import 'package:tetbee__base/utils/date_helpers.dart';
import 'package:tetbee__base/utils/helper.dart';
import 'package:tetbee__base/widgets/buttons/date_button.dart';

class WeekDateSelector extends StatelessWidget {
  final List<DateTime>? dateRange;
  final DateTime? startDate;
  final DateTime? selectedDate;
  final void Function(DateTime) onSelectDate;
  const WeekDateSelector({
    super.key,
    this.selectedDate,
    this.dateRange,
    required this.startDate,
    required this.onSelectDate,
  });

  @override
  Widget build(BuildContext context) {
    List<DateTime> dateList =
        dateRange ??
        [for (int i = 0; i < 7; i++) startDate!.add(Duration(days: i))];
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ...dateList.map(
              (date) => DateButton(
                date: date,
                height: Helpers.getMQWidth(context: context) / 7,
                width: Helpers.getMQWidth(context: context) / 7,
                onTap: () {
                  onSelectDate(date);
                },
                isSelected:
                    selectedDate != null &&
                    DateHelpers.isSameDate(date, selectedDate!),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
