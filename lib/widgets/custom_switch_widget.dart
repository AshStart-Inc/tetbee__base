import 'package:flutter/material.dart';
import 'package:tetbee__base/tetbee__base.dart';

class CustomSwitchWidget extends StatelessWidget {
  final String? title;
  final Widget? titleWidget;
  final bool? value;
  final Future<void> Function(bool) onChange;
  final EdgeInsets? padding;
  const CustomSwitchWidget({
    super.key,
    required this.value,
    required this.onChange,
    this.title,
    this.titleWidget,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          (title != null)
              ? Expanded(
                child: Text(
                  title!,
                  style: Theme.of(
                    context,
                  ).textTheme.displayMedium!.copyWith(fontSize: 15),
                ),
              )
              : titleWidget!,
          Switch(
            activeColor: Theme.of(context).colorScheme.onPrimary,
            inactiveTrackColor: Theme.of(context).primaryTextColor,
            inactiveThumbColor: Theme.of(context).unselectedWidgetColor,

            value: value ?? false,
            onChanged: (bool value) async {
              await onChange(value);
            },
          ),
        ],
      ),
    );
  }
}
