import 'package:flutter/material.dart';

class InfoIndicator extends StatelessWidget {
  final Color circleColor;
  final String text;
  const InfoIndicator({
    super.key,
    required this.circleColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.circle, color: circleColor, size: 10),
        const SizedBox(width: 4),
        Text(text, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}
