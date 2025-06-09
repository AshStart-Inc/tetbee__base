import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tetbee__base/dialog/custom_dialog.dart';
import 'package:tetbee__base/models/common/faq_model.dart';

class LabelWithInfoButton extends StatelessWidget {
  final FAQModel faqModel;
  final bool showInfo;
  final String? title;
  final bool smallTitle;
  final TextStyle? textStyle;
  final Color? iconColor;

  const LabelWithInfoButton({
    super.key,
    required this.faqModel,
    this.iconColor = Colors.white,
    this.showInfo = true,
    this.smallTitle = false,
    this.title,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title ?? faqModel.label!,
          style:
              textStyle ??
              (smallTitle
                  ? Theme.of(context).textTheme.displayMedium
                  : Theme.of(context).textTheme.displayLarge),
        ),
        SizedBox(width: smallTitle ? 5 : 10),
        if (faqModel.info!.isNotEmpty && showInfo)
          InkWell(
            child: Icon(Icons.info, color: iconColor),
            onTap: () {
              CustomDialog.showCustomDialog(
                info: faqModel.info!,
                context: context,
                noHeight: true,
              );
            },
          ),
      ],
    );
  }
}
