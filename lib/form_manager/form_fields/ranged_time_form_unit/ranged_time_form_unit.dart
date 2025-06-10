// ignore_for_file: prefer_const_constructors, avoid_single_cascade_in_expression_statements, file_names, use_key_in_widget_constructors

import 'dart:math';

import 'package:flutter/services.dart';
import 'package:tetbee__base/form_manager/form_fields/ranged_time_form_unit/widgets/time_text_field.dart';
import 'package:tetbee__base/form_manager/form_unit/form_unit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:tetbee__base/models/common/ranged_time_model.dart';

DateTime baseDateTime = DateTime(1992, 09, 17);

class RangedTimeFormUnit extends StatefulWidget {
  final MapEntry<String, FormUnit> formUnit;
  const RangedTimeFormUnit({super.key, required this.formUnit});

  @override
  State<RangedTimeFormUnit> createState() => _RangedTimeFormUnitState();
}

class _RangedTimeFormUnitState extends State<RangedTimeFormUnit> {
  late final FormBuilderState _formState;
  TextEditingController textEditingController = TextEditingController();
  late final String attribute;
  late final FormUnit formUnit;
  RangedTimeModel rangedTimeModel = RangedTimeModel();
  // late bool _initialValue;

  @override
  void initState() {
    super.initState();
    attribute = widget.formUnit.key;
    formUnit = widget.formUnit.value;
    _formState = FormBuilder.of(context)!;
    rangedTimeModel = RangedTimeModel(
      startTime: formUnit.baseTime,
      endTime: formUnit.baseTime!.add(Duration(hours: 5)),
    );
  }

  @override
  void didUpdateWidget(covariant RangedTimeFormUnit oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  onChange(DateTime? startTime, DateTime? endTime) {
    if (startTime != null) {
      rangedTimeModel = rangedTimeModel.copyWith(startTime: startTime);
    }
    if (endTime != null) {
      rangedTimeModel = rangedTimeModel.copyWith(endTime: endTime);
    }

    _formState.setInternalFieldValue(attribute, rangedTimeModel);
  }

  @override
  Widget build(BuildContext context) {
    return FormField<RangedTimeModel>(
      onSaved: (a) {
        FocusScope.of(context).unfocus();
      },
      builder: (FormFieldState<RangedTimeModel> field) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: TimeTextField(
                baseDate: rangedTimeModel.startTime!,
                show24Hours: true,
                onChange: (DateTime time) {
                  onChange(time, null);
                },
              ),
            ),
            Text('-'),
            Expanded(
              child: TimeTextField(
                baseDate: rangedTimeModel.endTime!,
                show24Hours: true,
                onChange: (DateTime time) {
                  onChange(null, time);
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
