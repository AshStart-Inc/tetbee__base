import 'dart:math';

import 'package:flutter/material.dart';

class HourField extends StatelessWidget {
  final TextEditingController controller;
  final bool show24Hours;

  const HourField({
    super.key,
    required this.controller,
    required this.show24Hours,
  });

  void _validateAndFormatHour() {
    String raw = controller.text.replaceAll(RegExp(r'[^0-9]'), '');
    if (raw.isEmpty) {
      controller.text = '00';
      return;
    }

    int hour = int.tryParse(raw) ?? 0;

    if (show24Hours) {
      hour = min(hour, 23);
    } else {
      if (hour == 0) hour = 12;
      hour = min(hour, 12);
    }

    controller.text = hour.toString().padLeft(2, '0');
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(labelText: 'Hour'),
      onEditingComplete: _validateAndFormatHour,
      onTapOutside: (_) => _validateAndFormatHour(),
    );
  }
}
