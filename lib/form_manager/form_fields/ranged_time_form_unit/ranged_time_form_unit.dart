// ignore_for_file: prefer_const_constructors, avoid_single_cascade_in_expression_statements, file_names, use_key_in_widget_constructors

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tetbee__base/form_manager/form_fields/ranged_time_form_unit/widgets/time_text_field.dart';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:tetbee__base/models/common/ranged_time_model.dart';
import 'package:tetbee__base/tetbee__base.dart';

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
  bool showEndTime = true;
  // late bool _initialValue;

  @override
  void initState() {
    super.initState();
    attribute = widget.formUnit.key;
    formUnit = widget.formUnit.value;
    _formState = FormBuilder.of(context)!;
    rangedTimeModel =
        _formState.initialValue[attribute] ??
        RangedTimeModel(
          startTime: formUnit.baseTime,
          endTime: formUnit.baseTime!.add(Duration(hours: 5)),
        );
    showEndTime = rangedTimeModel.endTime != null;
  }

  @override
  void didUpdateWidget(covariant RangedTimeFormUnit oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  onChange(DateTime? startTime, DateTime? endTime) {
    if (startTime != null) {
      rangedTimeModel = rangedTimeModel.copyWith(startTime: startTime);
      if (rangedTimeModel.endTime != null &&
          rangedTimeModel.endTime!.isBefore(rangedTimeModel.startTime!)) {
        rangedTimeModel = rangedTimeModel.copyWith(
          endTime: rangedTimeModel.startTime!.add(Duration(hours: 4)),
        );
      }
    }
    if (endTime != null) {
      rangedTimeModel = rangedTimeModel.copyWith(endTime: endTime);
    }

    if (rangedTimeModel.endTime != null &&
        rangedTimeModel.endTime!
                .difference(rangedTimeModel.startTime!)
                .inHours >
            24) {
      rangedTimeModel = rangedTimeModel.copyWith(
        endTime: rangedTimeModel.endTime!.subtract(Duration(days: 1)),
      );
    }

    _formState.setInternalFieldValue(attribute, rangedTimeModel);
  }

  @override
  Widget build(BuildContext context) {
    return FormField<RangedTimeModel>(
      onSaved: (a) {
        FocusScope.of(context).unfocus();
        _formState.setInternalFieldValue(
          attribute,
          showEndTime
              ? rangedTimeModel
              : rangedTimeModel.copyWith(endTime: null),
        );
      },
      builder: (FormFieldState<RangedTimeModel> field) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ShiftTimeDisplayer(
                title: 'Start Time',
                displayMode: false,
                showDate: formUnit.showDate!,
                dateTime: rangedTimeModel.startTime!,
                show24Format: formUnit.show24Hour ?? false,
                onUpdatedTime: (TimeOfDay? time) {
                  if (time != null) {
                    onChange(
                      DateTime(
                        rangedTimeModel.startTime!.year,
                        rangedTimeModel.startTime!.month,
                        rangedTimeModel.startTime!.day,
                        time.hour,
                        time.minute,
                      ),
                      null,
                    );
                  }
                },
              ),
              SizedBox(width: 16),
              ShiftTimeDisplayer(
                title: 'End Time',
                displayMode: false,
                showDate: formUnit.showDate!,
                isClosed: !showEndTime,
                dateTime: rangedTimeModel.endTime,
                show24Format: formUnit.show24Hour ?? false,
                onUpdatedTime: (TimeOfDay? time) {
                  if (time != null) {
                    onChange(
                      null,
                      DateTime(
                        rangedTimeModel.endTime!.year,
                        rangedTimeModel.endTime!.month,
                        rangedTimeModel.endTime!.day,
                        time.hour,
                        time.minute,
                      ),
                    );
                  }
                },
              ),
              SizedBox(width: 16),
              HomeButton(
                iconData:
                    !showEndTime
                        ? FontAwesomeIcons.clock
                        : FontAwesomeIcons.cancel,
                onTap: () {
                  setState(() {
                    showEndTime = !showEndTime;
                    rangedTimeModel = rangedTimeModel.copyWith(
                      endTime: rangedTimeModel.startTime!.add(
                        Duration(hours: 5),
                      ),
                    );
                  });
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
