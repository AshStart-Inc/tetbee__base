import 'package:flutter/material.dart';
import 'package:tetbee__base/form_manager/widgets/error_message_widget.dart';

class FormFieldWrapper extends StatelessWidget {
  final String label;
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
    Key? key,
    required this.label,
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
      padding: padding,
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (trailingWidget == null)
            Text(label, maxLines: 2, style: textStyle),
          if (trailingWidget != null)
            Row(
              children: [
                if (showLabel) Text(label, maxLines: 2, style: textStyle),
                const Spacer(),
                trailingWidget ?? const SizedBox(),
              ],
            ),
          const SizedBox(height: 8),
          if (isExpanded) Flexible(child: formField) else formField,
          ErrorMessageWidget(errorText: errorText),
        ],
      ),
    );
  }
}
