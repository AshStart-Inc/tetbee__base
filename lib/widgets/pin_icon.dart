import 'package:flutter/material.dart';

class PinIcon extends StatelessWidget {
  final bool isImportant;
  final Color? color;
  final double? size;
  const PinIcon({
    super.key,
    required this.isImportant,
    this.color,
    this.size = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/pin.png')),
      ),
    );
  }
}
