import 'package:flutter/material.dart';
import 'package:tetbee__base/models/common/ranged_time_model.dart';

class OpenTimeFormat extends StatelessWidget {
  final RangedTimeModel rangedTimeModel;
  final int minTime;
  final bool showAsColumn;
  final Widget? removeButton;
  final double fontSize;
  final bool show24Hour;

  const OpenTimeFormat({
    super.key,
    required this.rangedTimeModel,
    this.showAsColumn = false,
    this.minTime = 2,
    this.removeButton,
    this.fontSize = 10,
    required this.show24Hour,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          child:
              showAsColumn
                  ? SizedBox(
                    width: 70,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'From',
                              style: Theme.of(
                                context,
                              ).textTheme.titleSmall!.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: fontSize * 0.6,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              rangedTimeModel.getTimeFormat(show24Hour),
                              style: Theme.of(
                                context,
                              ).textTheme.titleSmall!.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: fontSize,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'To',
                              style: Theme.of(
                                context,
                              ).textTheme.titleSmall!.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: fontSize * 0.6,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              rangedTimeModel.endTime != null
                                  ? rangedTimeModel.getTimeFormat(
                                    show24Hour,
                                    isStartTime: false,
                                  )
                                  : "Close",
                              style: Theme.of(
                                context,
                              ).textTheme.titleSmall!.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: fontSize,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                  : Row(
                    children: [
                      Text(
                        rangedTimeModel.getTimeFormat(show24Hour),
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                        child: Center(child: Text('-')),
                      ),
                      Text(
                        rangedTimeModel.endTime != null
                            ? rangedTimeModel.getTimeFormat(
                              show24Hour,
                              isStartTime: false,
                            )
                            : "Close",
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
        ),
      ],
    );
  }
}
