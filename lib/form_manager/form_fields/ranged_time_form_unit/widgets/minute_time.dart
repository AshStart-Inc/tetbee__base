import 'package:flutter/material.dart';
import 'dart:math';

class MinuteField extends StatelessWidget {
  final TextEditingController controller;

  const MinuteField({super.key, required this.controller});

  void _validateAndFormatMinute() {
    String raw = controller.text.replaceAll(RegExp(r'[^0-9]'), '');
    if (raw.isEmpty) {
      controller.text = '00';
      return;
    }

    int minute = int.tryParse(raw) ?? 0;
    minute = min(minute, 59);

    // 15분 단위로 반올림
    int rounded = (minute / 15).round() * 15;
    if (rounded > 45) rounded = 45;

    controller.text = rounded.toString().padLeft(2, '0');
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(labelText: 'Minute'),
      onEditingComplete: _validateAndFormatMinute,
      onTapOutside: (_) => _validateAndFormatMinute(),
    );
  }
}
