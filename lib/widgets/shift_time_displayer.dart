import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as DatePicker show showTimePicker;
import 'package:intl/intl.dart';
import 'package:tetbee__base/tetbee__base.dart';

class ShiftTimeDisplayer extends StatelessWidget {
  final DateTime? baseTime;
  final DateTime? dateTime;
  final Function(TimeOfDay?)? onUpdatedTime;
  final TimePickerEntryMode initialTimePickerEntryMode;
  final String title;
  final bool displayMode;
  final bool show24Format;
  final bool isClosed;
  final bool showDate;
  const ShiftTimeDisplayer({
    super.key,
    required this.title,
    required this.displayMode,
    required this.dateTime,
    this.onUpdatedTime,
    this.baseTime,
    required this.show24Format,
    this.showDate = true,
    this.initialTimePickerEntryMode = TimePickerEntryMode.dial,
    this.isClosed = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(width: 4),
            if (showDate && dateTime != null)
              Text(
                DateFormat.yMd().format(dateTime!),
                style: Theme.of(context).textTheme.bodySmall,
              ),
          ],
        ),
        IgnorePointer(
          ignoring: isClosed || displayMode,
          child: Row(
            children: [
              InkWell(
                onTap:
                    isClosed
                        ? null
                        : () async {
                          TimeOfDay?
                          timeOfDay = await DatePicker.showTimePicker(
                            initialEntryMode: initialTimePickerEntryMode,
                            context: context,
                            initialTime:
                                dateTime == null
                                    ? baseTime == null
                                        ? TimeOfDay(hour: 0, minute: 0)
                                        : TimeOfDay(
                                          hour: baseTime!.hour,
                                          minute: baseTime!.minute,
                                        )
                                    : TimeOfDay(
                                      hour: dateTime!.hour,
                                      minute: dateTime!.minute,
                                    ),
                            builder: (BuildContext ct, Widget? child) {
                              return Theme(
                                data: Theme.of(context).copyWith(
                                  colorScheme: Theme.of(
                                    context,
                                  ).colorScheme.copyWith(
                                    primary:
                                        Theme.of(
                                          context,
                                        ).baseTextColor, // 확인 버튼 텍스트 색상
                                    onPrimary: Colors.white, // 확인 버튼 배경색
                                    surface:
                                        Theme.of(
                                          context,
                                        ).scaffoldBackgroundColor, // 배경 (중요)
                                    onSurface:
                                        Theme.of(
                                          context,
                                        ).baseTextColor, // 텍스트 색상
                                  ),
                                  scaffoldBackgroundColor:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  dialogBackgroundColor:
                                      Theme.of(
                                        context,
                                      ).scaffoldBackgroundColor, // 다이얼로그 전체 배경
                                ),
                                child: child!,
                              );
                            },
                          );
                          onUpdatedTime?.call(timeOfDay);
                        },
                child: Container(
                  height: 35,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(
                        context,
                      ).textTheme.headlineLarge!.color!.withValues(alpha: 0.5),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color:
                        Theme.of(context).primaryTextTheme.headlineLarge!.color,
                  ),
                  child: Center(
                    child: Text(
                      isClosed
                          ? 'Close'
                          : TimeOfDay(
                            hour: dateTime?.hour ?? 0,
                            minute: dateTime?.minute ?? 0,
                          ).formatTimeOfDay(show24Format: show24Format),
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color:
                            isClosed
                                ? Theme.of(context).unselectedWidgetColor
                                : null,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
