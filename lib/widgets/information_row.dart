import 'package:flutter/material.dart';
import 'package:tetbee__base/theme/theme_extension.dart';

class InformationRow extends StatelessWidget {
  final String label;
  final String value;
  final EdgeInsets? padding;
  final IconData iconData;
  final Widget? trailingWidget;
  final Function? onTap;
  const InformationRow({
    super.key,
    this.label = '',
    this.value = '',
    this.padding,
    this.onTap,
    this.trailingWidget,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: padding ?? const EdgeInsets.all(4.0),
        child: Row(
          children: [
            Icon(
              iconData,
              color: Theme.of(context).baseTextColor.withValues(alpha: 0.8),
            ),
            if (label.isNotEmpty)
              Padding(
                padding: EdgeInsets.only(left: 4),
                child: Text(label, style: TextStyle(fontSize: 12)),
              ),
            const SizedBox(width: 12),
            Expanded(
              flex: 1,
              child: Text(
                value.isEmpty ? 'Not updated' : value,
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  fontStyle: value.isEmpty ? FontStyle.italic : null,
                  fontWeight: FontWeight.bold,
                  color:
                      value.isEmpty
                          ? Theme.of(context).unselectedWidgetColor
                          : null,
                  fontSize: 12,
                ),
              ),
            ),
            if (trailingWidget != null) trailingWidget!,
          ],
        ),
      ),
    );
  }
}
