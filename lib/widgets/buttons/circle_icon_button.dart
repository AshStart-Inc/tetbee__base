import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  final Color? color;
  final Color? iconColor;
  final double radius;
  final IconData? iconData;
  final void Function() onTap;
  const CircleIconButton({
    super.key,
    required this.onTap,
    this.iconData,
    this.radius = 20,
    this.color,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onTap: onTap,
      child: CircleAvatar(
        radius: radius,
        backgroundColor: color ?? Theme.of(context).primaryColor,
        child: Icon(
          iconData ?? Icons.change_circle,
          color: iconColor ?? Theme.of(context).colorScheme.secondary,
          size: radius * 1.5,
        ),
      ),
    );
  }
}
