import 'package:flutter/material.dart';
import 'package:tetbee__base/form_manager/widgets/error_message_widget.dart';

class FormFieldWrapper extends StatelessWidget {
  final String label;
  final String? subLabel;
  final Widget formField;
  final Widget? trailingWidget;
  final bool showLabel;
  final bool usePlainFont;
  final bool isExpanded;
  final String? errorText;

  final CrossAxisAlignment crossAxisAlignment;
  final EdgeInsets padding;
  final TextStyle? style;
  final Color? color;
  final bool useCustomMarkTextWidget;

  const FormFieldWrapper({
    super.key,
    required this.label,
    this.subLabel,
    required this.formField,
    this.trailingWidget,
    this.showLabel = true,
    this.usePlainFont = false,
    this.isExpanded = false,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    EdgeInsets? padding,
    this.style,
    this.color,
    this.useCustomMarkTextWidget = false,
    this.errorText,
  }) : padding = padding ?? const EdgeInsets.only(right: 10, bottom: 8);

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle =
        style ??
        (usePlainFont
            ? Theme.of(context).textTheme.titleSmall!.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: color,
            )
            : Theme.of(context).textTheme.titleSmall!.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: color,
            ));
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (trailingWidget == null)
            Row(
              children: [
                Expanded(child: Text(label, maxLines: 2, style: textStyle)),
                if (subLabel != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Text(
                      subLabel!,
                      style: textStyle.copyWith(
                        color: Theme.of(context).unselectedWidgetColor,
                        fontSize: textStyle.fontSize! - 2,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
              ],
            ),
          if (trailingWidget != null)
            Row(
              children: [
                if (showLabel) Text(label, maxLines: 2, style: textStyle),
                if (subLabel != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Text(
                      subLabel!,
                      style: textStyle.copyWith(
                        color: Theme.of(context).unselectedWidgetColor,
                        fontSize: textStyle.fontSize! - 2,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                const Spacer(),
                trailingWidget ?? const SizedBox(),
              ],
            ),
          const SizedBox(height: 8),
          if (isExpanded) Flexible(child: formField) else formField,
          const SizedBox(height: 2),
          ErrorMessageWidget(errorText: errorText),
        ],
      ),
    );
  }
}
