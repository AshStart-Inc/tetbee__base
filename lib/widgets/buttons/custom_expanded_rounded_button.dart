import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tetbee__base/utils/helper.dart';

class CustomExpandedRoundedButton extends StatelessWidget {
  const CustomExpandedRoundedButton({
    super.key,
    required this.text,
    required this.onTap,
    this.borderColor,
    this.buttonColor,
    this.textColor,
    this.fontSize,
    this.radius,
    this.borderWidth,
    this.trailingWidget,
  });

  final Function? onTap;
  final String text;
  final Color? buttonColor;
  final Color? textColor;
  final Color? borderColor;
  final Widget? trailingWidget;
  final double? fontSize;
  final double? radius;
  final double? borderWidth;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap:
            onTap != null
                ? () {
                  HapticFeedback.heavyImpact();
                  onTap?.call();
                }
                : null,
        child: Container(
          height: Helpers.getMQHeight(context: context) * 0.05,
          decoration: BoxDecoration(
            color: buttonColor ?? Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(radius ?? 5),
            border: Border.all(
              width: borderWidth ?? 2,
              color: borderColor ?? Theme.of(context).primaryColorDark,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: fontSize ?? 20,
                      fontWeight: FontWeight.bold,
                      color:
                          textColor ?? Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  if (trailingWidget != null) SizedBox(width: 5),
                  if (trailingWidget != null) trailingWidget!,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
