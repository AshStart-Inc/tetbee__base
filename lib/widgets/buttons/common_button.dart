import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tetbee__base/theme/theme_extension.dart';

enum ButtonType { basicButton, expanded, squareButton }

class CommonButton extends StatelessWidget {
  const CommonButton({
    super.key,
    this.buttonType = ButtonType.basicButton,
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
                style: Theme.of(
                  context,
                ).primaryTextTheme.titleMedium!.copyWith(color: textColor),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildExpandedButton(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Padding(
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
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(
                      context,
                    ).unselectedWidgetColor.withValues(alpha: 0.3),
                    offset: Offset(2, 2),
                  ),
                ],
                color: buttonColor ?? Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(radius ?? 8),
                border: Border.all(
                  width: borderWidth ?? 2,
                  color: borderColor ?? Theme.of(context).primaryColor,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        text,
                        style: Theme.of(context).textTheme.titleMedium!,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        if (trailingWidget != null) SizedBox(width: 5),
        if (trailingWidget != null)
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: trailingWidget!,
          ),
      ],
    );
  }
}
