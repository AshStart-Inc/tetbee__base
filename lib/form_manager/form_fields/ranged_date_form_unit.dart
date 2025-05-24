import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:tetbee__base/dialog/custom_dialog.dart';
import 'package:tetbee__base/form_manager/form_unit/form_unit.dart';
import 'package:tetbee__base/form_manager/widgets/form_field_wrapper.dart';
import 'package:tetbee__base/models/common/ranged_time_model.dart';
import 'package:tetbee__base/widgets/buttons/home_button.dart';
import 'package:tetbee__base/widgets/divier_with_text.dart';

class RangedDateFormUnit extends StatefulWidget {
  final MapEntry<String, FormUnit> formUnit;
  const RangedDateFormUnit({super.key, required this.formUnit});

  @override
  RangedDateFormUnitState createState() => RangedDateFormUnitState();
}

class RangedDateFormUnitState extends State<RangedDateFormUnit> {
  FormBuilderState? _formState;

  late final String attribute;
  late final FormUnit formUnit;
  RangedTimeModel? _initialDate;
  DateTime? _startDate;
  DateTime? _endDate;

  @override
  void initState() {
    super.initState();
    _formState = FormBuilder.of(context);
    attribute = widget.formUnit.key;
    formUnit = widget.formUnit.value;

    _startDate =
        formUnit.baseTime == null
            ? DateTime(
              DateTime.now().year,
              DateTime.now().month,
              DateTime.now().day,
              0,
              0,
              0,
            )
            : DateTime(
              formUnit.baseTime!.year,
              formUnit.baseTime!.month,
              formUnit.baseTime!.day,
              0,
              0,
              0,
            );
    _initialDate = RangedTimeModel(
      startTime: _startDate!,
      endTime: _endDate ?? _startDate!,
    );
  }

  Future<void> showDatePicker(
    Function(DateTime) onChange, {
    DateTime? minDate,
  }) async {
    CustomDialog.showNewCustomDialog(
      context: context,
      widget: SfDateRangePicker(
        initialDisplayDate: _startDate!,
        minDate:
            minDate ??
            DateTime(
              _startDate!.year,
              _startDate!.month,
              _startDate!.day,
              0,
              0,
              0,
            ),
        onSelectionChanged: (a) {
          onChange(a.value);
        },
        view: DateRangePickerView.year,
      ),
    );
  }

  Widget buildDataPicker(
    String label,
    DateTime? date,
    Function(DateTime) onChange, {
    DateTime? minDate,
  }) {
    return Column(
      children: [
        DividerWithText(label: label),
        Row(
          children: [
            if (date != null)
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  DateFormat.MMMMEEEEd().format(date),
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            const Spacer(),
            HomeButton(
              withPading: false,
              iconData: Icons.calendar_month_rounded,
              onTap: () {
                showDatePicker(onChange, minDate: _startDate!);
              },
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return FormField(
      initialValue: const [],
      validator:
          formUnit.isRanged!
              ? (List<dynamic>? val) {
                if (_startDate == null) {
                  return 'error';
                }
                return null;
              }
              : (List<dynamic>? val) {
                if (formUnit.minumumTimeRange == 0 && _endDate == null) {
                  return 'Error';
                }
                if (formUnit.minumumTimeRange != 0 &&
                    _initialDate!.endTime!
                            .difference(_initialDate!.startTime!)
                            .inDays <
                        formUnit.minumumTimeRange!) {
                  return 'Error';
                }

                return null;
              },
      onSaved: (dynamic val) {
        _formState!.setInternalFieldValue(attribute, _initialDate);
      },
      key: widget.key,
      builder: (FormFieldState val) {
        return FormFieldWrapper(
          label: formUnit.label,
          errorText: val.errorText,
          formField: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildDataPicker('Start Date', _startDate, (DateTime dateTime) {
                setState(() {
                  _startDate = dateTime;
                  if (_endDate != null && !_startDate!.isBefore(_endDate!)) {
                    _endDate = _startDate;
                  }
                  _initialDate = RangedTimeModel(
                    endTime: _endDate ?? _startDate!,
                    startTime: _startDate!,
                  );
                  Navigator.pop(context);
                });
              }),
              if (_startDate != null)
                buildDataPicker('End Date', _endDate, (DateTime dateTime) {
                  setState(() {
                    _endDate = dateTime;

                    _initialDate = RangedTimeModel(
                      endTime: _endDate!,
                      startTime: _startDate!,
                    );
                    Navigator.pop(context);
                  });
                }, minDate: _startDate),
            ],
          ),
        );
      },
    );
  }
}
