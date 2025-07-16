import 'package:flutter/material.dart';
import 'package:tetbee__base/models/models.dart';
import 'package:tetbee__base/theme/theme_extension.dart';
import 'package:tetbee__base/widgets/open_time_format.dart';
import 'package:tetbee__base/widgets/timezone_text_widget.dart';

class PresetTimeContainer extends StatelessWidget {
  final SchedulePresetTime workTime;
  final Function? onDelete;
  final double? height;
  final Widget? removeButton;
  final double? width;
  final double fontSize;
  final TimeZoneModel? timeZoneModel;

  final bool show24Hour;
  const PresetTimeContainer({
    super.key,
    required this.workTime,
    this.removeButton,
    this.onDelete,
    this.height,
    this.width,
    this.fontSize = 10,
    required this.show24Hour,
    this.timeZoneModel,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            height: height,
            width: width ?? 80,
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Theme.of(context).baseTextColor,
                width: 2,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  OpenTimeFormat(
                    show24Hour: show24Hour,
                    fontSize: fontSize,
                    removeButton: removeButton,
                    showAsColumn: true,
                    rangedTimeModel: workTime.timeRange,
                  ),
                  if (timeZoneModel != null)
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        getLocalAndTimeZone(timeZoneModel!),
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 8,
                          color: Theme.of(context).baseTextColor,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
        if (removeButton != null) removeButton!,
      ],
    );
  }
}
