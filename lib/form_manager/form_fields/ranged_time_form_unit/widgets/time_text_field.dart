import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tetbee__base/models/common/ranged_time_model.dart';

class TimeTextField extends StatefulWidget {
  final DateTime baseDate;
  final bool show24Hours;
  final RangedTimeModel? rangedTimeModel;
  final Function(DateTime dateTime) onChange;
  const TimeTextField({
    super.key,
    required this.show24Hours,
    this.rangedTimeModel,
    required this.onChange,
    required this.baseDate,
  });

  @override
  State<TimeTextField> createState() => _TimeTextFieldState();
}

class _TimeTextFieldState extends State<TimeTextField> {
  late final TextEditingController hourTextEditingController;
  late final TextEditingController minuteTextEditingController;

  late final FocusNode hourFocusNode;
  late final FocusNode minuteFocusNode;

  @override
  void initState() {
    super.initState();
    hourTextEditingController = TextEditingController();
    minuteTextEditingController = TextEditingController();
    hourTextEditingController.text = widget.baseDate.hour.toString().padLeft(
      2,
      '0',
    );

    minuteTextEditingController.text = widget.baseDate.minute
        .toString()
        .padLeft(2, '0');

    hourFocusNode = FocusNode();
    minuteFocusNode = FocusNode();

    hourFocusNode.addListener(() {
      if (!hourFocusNode.hasFocus) {
        _validateHour();
      }
    });

    minuteFocusNode.addListener(() {
      if (!minuteFocusNode.hasFocus) {
        _validateMinute();
      }
    });
  }

  @override
  void didUpdateWidget(covariant TimeTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  void _validateHour() {
    String raw = hourTextEditingController.text.replaceAll(
      RegExp(r'[^0-9]'),
      '',
    );
    int hour = int.tryParse(raw) ?? 0;
    if (widget.show24Hours) {
      hour = min(hour, 23);
    } else {
      if (hour == 0) hour = 12;
      hour = min(hour, 12);
    }
    hourTextEditingController.text = hour.toString().padLeft(2, '0');
    changeTextToDateTime();
  }

  void _validateMinute() {
    String raw = minuteTextEditingController.text.replaceAll(
      RegExp(r'[^0-9]'),
      '',
    );
    int minVal = int.tryParse(raw) ?? 0;
    int rounded = (minVal / 15).round() * 15;
    if (rounded > 45) rounded = 45;
    minuteTextEditingController.text = rounded.toString().padLeft(2, '0');
    changeTextToDateTime();
  }

  void changeTextToDateTime() {
    widget.onChange(
      DateTime(
        widget.baseDate.year,
        widget.baseDate.month,
        widget.baseDate.day,
        int.parse(hourTextEditingController.text),
        int.parse(minuteTextEditingController.text),
      ),
    );
  }

  @override
  void dispose() {
    hourTextEditingController.dispose();
    minuteTextEditingController.dispose();
    hourFocusNode.dispose();
    minuteFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,

      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 25,
              height: 20,
              child: TextField(
                controller: hourTextEditingController,
                focusNode: hourFocusNode,
                inputFormatters: [LengthLimitingTextInputFormatter(2)],
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: InputBorder.none, // 기본 border 제거
                  enabledBorder: InputBorder.none, // 비활성 상태 border 제거
                  focusedBorder: InputBorder.none, // 포커스 상태 border 제거
                  // hintText: '00', // 선택사항
                ),
              ),
            ),
            const SizedBox(width: 10, child: Text(':')),
            SizedBox(
              width: 25,
              child: Center(
                child: TextField(
                  controller: minuteTextEditingController,
                  focusNode: minuteFocusNode,
                  keyboardType: TextInputType.number,
                  inputFormatters: [LengthLimitingTextInputFormatter(2)],
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
