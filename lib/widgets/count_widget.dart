import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CountWidget extends StatelessWidget {
  final IconData? iconData;
  final Color? iconColor;
  final int count;
  final double? size;
  final Function? onTap;
  final CrossAxisAlignment crossAxisAlignment;
  final Color? textColor;
  const CountWidget({
    super.key,
    this.iconColor,
    this.iconData,
    required this.count,
    this.size,
    this.onTap,
    this.textColor,
    this.crossAxisAlignment = CrossAxisAlignment.end,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap?.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(
            iconData ?? FontAwesomeIcons.check,
            color: iconColor ?? Colors.green,
            size: size ?? 13,
          ),
          const SizedBox(width: 2),
          Text(
            count.toString(),
            style: TextStyle(
              fontSize: 10,
              color: textColor ?? Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
