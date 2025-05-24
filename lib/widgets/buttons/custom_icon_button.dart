import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    this.onTap,
    required this.icon,
    this.color,
    this.size = 18,
  });
  final Function()? onTap;
  final IconData icon;
  final Color? color;
  final double? size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10,
      child: InkWell(onTap: onTap, child: Icon(icon, color: color, size: size)),
    );
  }
}
