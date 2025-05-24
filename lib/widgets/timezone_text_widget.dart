import 'package:flutter/material.dart';
import 'package:tetbee__base/tetbee__base.dart';
import 'package:timezone/timezone.dart' as tz;

class TimeZoneTextWidget extends StatelessWidget {
  final TimeZoneModel timeZone;
  final bool showTimeZone;
  const TimeZoneTextWidget({
    super.key,
    required this.timeZone,
    this.showTimeZone = true,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      (showTimeZone ? 'Time Zone : ' : '') + getLocalAndTimeZone(timeZone),
      style: Theme.of(context).textTheme.bodySmall,
    );
  }
}

String getLocalAndTimeZone(TimeZoneModel timeZone) =>
    '${timeZone.timeZoneName} ( ${tz.local} )';
