import 'package:flutter/material.dart';

class CustomVerticalDivider extends StatelessWidget {
  final double height;
  final double width;
  const CustomVerticalDivider({super.key, this.height = 10, this.width = 1});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      color: Colors.grey.withOpacity(0.6),
      width: width,
      height: height,
    );
  }
}
