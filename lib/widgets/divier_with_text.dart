import 'package:flutter/material.dart';
import 'package:tetbee__base/tetbee__base.dart';

class DividerWithText extends StatelessWidget {
  const DividerWithText({
    super.key,
    required this.label,
    this.color,
    this.needPadding = true,
    this.withDivider = true,
    this.fontSize = 14,
    this.trailingWidget,
  });
  final bool withDivider;
  final String label;
  final bool needPadding;
  final Color? color;
  final double fontSize;
  final Widget? trailingWidget;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: needPadding ? 10 : 0),
          child: Row(
            children: [
              Text(
                label,
                style: TextStyle(
                  color: color ?? Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: fontSize,
                ),
              ),
              if (trailingWidget != null) trailingWidget!,
            ],
          ),
        ),
        if (withDivider)
          const Divider(indent: 10, endIndent: 10, color: Colors.grey),
      ],
    );
  }
}
