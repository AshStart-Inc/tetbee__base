import 'package:flutter/material.dart';

class ErrorMessageWidget extends StatelessWidget {
  final TextStyle? validationMessageTextStyle;
  final String? errorText;
  final bool withScrollView;
  final bool userNullSize;
  const ErrorMessageWidget({
    super.key,
    required this.errorText,
    this.validationMessageTextStyle,
    this.withScrollView = true,
    this.userNullSize = false,
  });

  @override
  Widget build(BuildContext context) {
    Widget textWidget = SizedBox(
      height: userNullSize ? null : 20,
      child:
          errorText == null
              ? const SizedBox.shrink()
              : Padding(
                padding: const EdgeInsets.only(left: 5, top: 5),
                child: Text(
                  errorText!,
                  style:
                      validationMessageTextStyle ??
                      TextStyle(
                        color: Theme.of(context).colorScheme.error,
                        fontSize: 12.0,
                      ),
                ),
              ),
    );
    return withScrollView
        ? SingleChildScrollView(child: textWidget)
        : textWidget;
  }
}
