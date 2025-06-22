import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart' as anido;

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
      height: userNullSize ? null : 15,
      child:
          errorText == null
              ? const SizedBox.shrink()
              : anido.SlideInRight(
                duration: Duration(milliseconds: 200),
                child: Padding(
                  padding: const EdgeInsets.only(left: 2),
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
              ),
    );
    return withScrollView
        ? SingleChildScrollView(child: textWidget)
        : textWidget;
  }
}
