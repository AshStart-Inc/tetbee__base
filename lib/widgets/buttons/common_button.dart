import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum ButtonType {
  basicButton,
  expanded,
  squareButton,
}

class CommonButton extends StatelessWidget {
  const CommonButton(
      {super.key,
      this.buttonType = ButtonType.basicButton,
      required this.text,
      required this.onTap,
      this.borderColor,
      this.buttonColor,
      this.textColor,
      this.fontSize,
      this.radius,
      this.borderWidth,
      this.trailingWidget});

  final ButtonType buttonType;
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
    switch (buttonType) {
      case ButtonType.squareButton:
        return _buildSquareButton(context);
      case ButtonType.expanded:
        return _buildExpandedButton(context);
      default:
        return _buildExpandedButton(context);
    }
  }

  Widget _buildSquareButton(BuildContext context) {
    return InkWell(
        onTap: () => onTap?.call(),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [],
              borderRadius: BorderRadius.circular(5),
              color: buttonColor ?? Theme.of(context).primaryColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  text,
                  style: Theme.of(context)
                      .primaryTextTheme
                      .titleMedium!
                      .copyWith(color: textColor),
                ),
              ),
            ),
          ),
        ));
  }

  Widget _buildExpandedButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap != null
            ? () {
                HapticFeedback.heavyImpact();
                onTap?.call();
              }
            : null,
        child: Container(
          decoration: BoxDecoration(
            color: buttonColor ?? Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(radius ?? 5),
            border: Border.all(
                width: borderWidth ?? 2,
                color: borderColor ?? Theme.of(context).primaryColorDark),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
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
                  if (trailingWidget != null)
                    SizedBox(
                      width: 5,
                    ),
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
