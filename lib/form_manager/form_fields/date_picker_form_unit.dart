import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:tetbee__base/form_manager/widgets/form_field_wrapper.dart';
import 'package:tetbee__base/models/common/ranged_time_model.dart';
import 'package:tetbee__base/tetbee__base.dart';

class DatePickerFormUnit extends StatefulWidget {
  final MapEntry<String, FormUnit> formUnit;
  const DatePickerFormUnit({super.key, required this.formUnit});

  @override
  DatePickerFormUnitState createState() => DatePickerFormUnitState();
}

class DatePickerFormUnitState extends State<DatePickerFormUnit> {
  FormBuilderState? _formState;
  late final String attribute;
  late final FormUnit formUnit;
  dynamic _initialValue;
  late DateRangePickerController controller;
  late DateSelectionMode selectedDateSelectionMode;
  FormFieldState<dynamic>? formFieldState;

  @override
  void initState() {
    super.initState();
    attribute = widget.formUnit.key;
    formUnit = widget.formUnit.value;
    _formState = FormBuilder.of(context);
    controller = DateRangePickerController();
    // _initialValue = _formState?.initialValue[attribute] ?? [];
    selectedDateSelectionMode =
        formUnit.dateSelectionModes == null ||
                formUnit.dateSelectionModes!.isEmpty
            ? DateSelectionMode.single
            : formUnit.dateSelectionModes!.first;
  }

  Widget buildModeSelection() {
    if (formUnit.dateSelectionModes == null ||
        formUnit.dateSelectionModes!.isEmpty ||
        formUnit.dateSelectionModes!.length == 1) {
      return SizedBox.shrink();
    }
    return Row(
      children: [
        ...formUnit.dateSelectionModes!.map((mode) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                setState(() {
                  selectedDateSelectionMode = mode;
                  _initialValue = null;
                  controller.selectedDate = null;
                  controller.selectedDates = null;
                  controller.selectedRange = null;
                  controller.selectedRanges = null;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color:
                      mode == selectedDateSelectionMode
                          ? Theme.of(context).primaryColor.withOpacity(0.7)
                          : null,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(mode.name),
                ),
              ),
            ),
          );
        }),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return FormField<dynamic>(
      initialValue: _initialValue,
      validator: (value) {
        if (_initialValue == null) {
          return 'Please Select Date';
        }

        if (_initialValue is PickerDateRange) {
          PickerDateRange timeRange = _initialValue;
          if ((timeRange.endDate == null || timeRange.startDate == null)) {
            return 'Please Select proper date range';
          }
          if (!formUnit.allowSameDate!) {
            if ((timeRange.startDate == timeRange.endDate)) {
              return 'Please Select proper date range';
            }
            if (selectedDateSelectionMode == DateSelectionMode.rangedMonth) {
              if (timeRange.startDate!.weekday == timeRange.endDate!.weekday) {
                return 'Please Select proper Month range';
              }
              if (_areBothEndOfMonth(
                timeRange.startDate!,
                timeRange.endDate!,
              )) {
                return 'Please Select proper Month range';
              }
              if (_areBothStartOfMonth(
                timeRange.startDate!,
                timeRange.endDate!,
              )) {
                return 'Please Select proper Month range';
              }
              if (timeRange.startDate!.isEndOfMonth()) {
                return 'Please Select proper date range';
              }
            }

            if (selectedDateSelectionMode == DateSelectionMode.weekly &&
                formUnit.defaultStartWeekday != null) {
              if (timeRange.startDate!.weekday !=
                  formUnit.defaultStartWeekday) {
                return 'Please Select ${DateHelpers.getWeekdayFullFormat(formUnit.defaultStartWeekday!)} for start date.';
              }

              if (timeRange.startDate != null &&
                  timeRange.endDate != null &&
                  timeRange.startDate!.weekday == timeRange.endDate!.weekday) {
                return 'Please Select proper date range';
              }
              if (timeRange.startDate!.difference(timeRange.endDate!).inDays !=
                  -6) {
                return 'Please Select proper date range';
              }
            }
          }
        }

        return null;
      },
      onSaved: (dynamic val) {
        if (_initialValue is DateTime) {
          _formState!.setInternalFieldValue(attribute, _initialValue);
        } else if (_initialValue is List) {
          List<DateTime> value = <DateTime>[
            ...(_initialValue as List).map((e) => e),
          ];
          _formState!.setInternalFieldValue(attribute, value);
        } else if (_initialValue is PickerDateRange) {
          _formState!.setInternalFieldValue(
            attribute,
            RangedTimeModel(
              startTime: (_initialValue as PickerDateRange).startDate,
              endTime: (_initialValue as PickerDateRange).endDate,
            ),
          );
        }
      },
      key: widget.key,
      builder: (FormFieldState<dynamic> val) {
        formFieldState = val;
        return FormFieldWrapper(
          label: formUnit.label,
          subLabel: formUnit.subLabel,
          trailingWidget: formUnit.trailingWidget,
          errorText: val.errorText,
          formField: Column(
            children: [
              buildModeSelection(),
              buildDatePicker(),
              if ((_initialValue is! DateTime)) buildSelectedDates(),
            ],
          ),
        );
      },
    );
  }

  DateRangePickerSelectionMode getDateSelectionMode(
    DateSelectionMode dataSelectionMode,
  ) {
    switch (dataSelectionMode) {
      case DateSelectionMode.multiple:
        return DateRangePickerSelectionMode.multiple;
      case DateSelectionMode.rangedMonth:
      case DateSelectionMode.weekly:
        return DateRangePickerSelectionMode.range;
      case DateSelectionMode.single:
        return DateRangePickerSelectionMode.single;
    }
  }

  Widget buildDatePicker() {
    return SfDateRangePicker(
      key: ValueKey(selectedDateSelectionMode),
      controller: controller,
      toggleDaySelection: true,
      backgroundColor: Colors.white,
      headerStyle: DateRangePickerHeaderStyle(backgroundColor: Colors.white),
      selectionMode: getDateSelectionMode(selectedDateSelectionMode),
      rangeSelectionColor: Colors.transparent,
      selectableDayPredicate:
          (selectedDateSelectionMode == DateSelectionMode.rangedMonth)
              ? (DateTime date) {
                final isFirstDay = date.day == 1;
                final isLastDay =
                    date.day == DateTime(date.year, date.month + 1, 0).day;

                return isFirstDay || isLastDay;
              }
              : (formUnit.defaultStartWeekday != null &&
                  selectedDateSelectionMode == DateSelectionMode.weekly)
              ? (DateTime date) {
                final int start = formUnit.defaultStartWeekday!;
                final int prev = start == 1 ? 7 : start - 1;

                return date.weekday == start || date.weekday == prev;
              }
              : null,
      onSelectionChanged: (args) {
        setState(() {
          _initialValue = args.value;
          formFieldState?.validate();
        });
        // setState(() {
        //   if (args.value is PickerDateRange) {
        //     _initialValue = RangedTimeModel(
        //       startTime: args.value.startDate,
        //       endTime: args.value.endDate,
        //     );
        //   } else if (args.value is DateTime) {
        //     _initialValue = RangedTimeModel(startTime: args.value);
        //   }
        //   print(_initialValue);
        //   // else if (args.value is List<DateTime>) {
        //   //   print(args.value.length.toString());
        //   // } else {
        //   //   print(args.value.length.toString());
        //   // }
        // });
      },
      view: DateRangePickerView.month,
    );
  }

  Widget buildSelectedDates() {
    if (_initialValue is DateTime) {
      return Text(_initialValue.toString());
    }
    if (_initialValue is PickerDateRange) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if ((_initialValue as PickerDateRange).startDate != null)
              Text(
                (_initialValue as PickerDateRange).startDate!.toIsoDateString,
              ),
            Text('    -   '),
            if ((_initialValue as PickerDateRange).endDate != null)
              Text((_initialValue as PickerDateRange).endDate!.toIsoDateString),
          ],
        ),
      );
    } else if (_initialValue is DateTime) {
      return Text(_initialValue.toIsoDateString);
    } else if (_initialValue is List) {
      List<DateTime> dates = [..._initialValue];
      dates.sort();
      return Column(
        children: [
          ...dates.map((value) {
            return Text((value).toIsoDateString);
          }),
        ],
      );
    } else {
      return SizedBox.shrink();
    }
    // return Row(children: []);
  }
}

bool _areBothEndOfMonth(DateTime date1, DateTime date2) {
  bool isEndOfMonth(DateTime date) {
    final lastDay = DateTime(date.year, date.month + 1, 0).day;
    return date.day == lastDay;
  }

  return isEndOfMonth(date1) && isEndOfMonth(date2);
}

bool _areBothStartOfMonth(DateTime date1, DateTime date2) {
  return date1.day == 1 && date2.day == 1;
}
