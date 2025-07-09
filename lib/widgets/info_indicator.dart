import 'package:flutter/material.dart';

class InfoIndicator extends StatelessWidget {
  final Color circleColor;
  final double? titleFontSize;
  final String text;
  final String? description;
  const InfoIndicator({
    super.key,
    required this.circleColor,
    required this.text,
    this.description,
    this.titleFontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.circle, color: circleColor, size: 10),
            const SizedBox(width: 4),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: titleFontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        if (description != null && description!.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 2, left: 12),
            child: Text(
              description!,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: titleFontSize == null ? null : titleFontSize! + 3,
              ),
            ),
          ),
      ],
    );
  }
}
