import 'package:flutter/material.dart';

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
              color: Theme.of(
                context,
              ).textTheme.headlineLarge!.color!.withOpacity(0.5),
            ),
            const SizedBox(width: 12),
            Expanded(
              flex: 1,
              child: Text(
                value.isEmpty ? 'Not updated' : value,
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  fontWeight: FontWeight.bold,
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
