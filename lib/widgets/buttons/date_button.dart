import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tetbee__base/tetbee__base.dart';
import 'package:tetbee__base/theme/theme_extension.dart';

class DateButton extends StatelessWidget {
  const DateButton({
    super.key,
    this.date,
    required this.height,
    required this.onTap,
    required this.width,
    required this.isSelected,
    this.showDate = false,
    this.weekDay,
  });
  final double width;
  final double height;
  final DateTime? date;
  final int? weekDay;
  final Function onTap;
  final bool isSelected;
  final bool showDate;

  @override
  Widget build(BuildContext context) {
    const int padding = 5;
    double buttonwidth = width - padding;
    TextStyle textStyle = Theme.of(context).textTheme.labelLarge!.copyWith(
      fontWeight: isSelected ? FontWeight.bold : null,
      color:
          !isSelected ? Theme.of(context).baseTextColor.withOpacity(0.3) : null,
    );
    Widget _child = InkWell(
      splashColor: Colors.transparent,
      onTap: () {
        onTap();
        HapticFeedback.mediumImpact();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: padding / 2),
        child: Container(
          decoration: BoxDecoration(
            color:
                isSelected
                    ? Theme.of(context).primaryTextColor.withOpacity(0.3)
                    : null,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color:
                  isSelected
                      ? Theme.of(context).baseTextColor.withOpacity(0.4)
                      : Colors.transparent,
              width: 2,
            ),
          ),
          height: buttonwidth - 5,
          width: buttonwidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                DateHelpers.getWeekdayFormat(
                  date == null ? weekDay! : date!.weekday,
                ),
                style: textStyle,
              ),
              if (date != null) Text(date!.day.toString(), style: textStyle),
            ],
          ),
        ),
      ),
    );
    return _child;
  }
}
