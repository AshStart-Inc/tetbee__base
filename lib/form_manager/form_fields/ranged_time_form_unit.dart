// ignore_for_file: prefer_const_constructors, avoid_single_cascade_in_expression_statements, file_names, use_key_in_widget_constructors

import 'package:tetbee__base/form_manager/form_unit/form_unit.dart';
import 'package:tetbee__base/form_manager/widgets/error_message_widget.dart';
import 'package:tetbee__base/models/common/ranged_time_model.dart';
import 'package:tetbee__base/theme/theme_extension.dart';
import 'package:tetbee__base/utils/enums.dart';
import 'package:tetbee__base/utils/helper.dart';
import 'package:tetbee__base/widgets/buttons/home_button.dart';
import 'package:tetbee__base/widgets/buttons/select_item_button.dart';
import 'package:time_range_picker/time_range_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

DateTime _baseDateTime = DateTime(1992, 09, 17);

class RangedTimeFormUnit extends StatefulWidget {
  final MapEntry<String, FormUnit> formUnit;
  const RangedTimeFormUnit({super.key, required this.formUnit});

  @override
  RangedTimeFormUnitState createState() => RangedTimeFormUnitState();
}

class RangedTimeFormUnitState extends State<RangedTimeFormUnit> {
  FormBuilderState? _formState;

  late final String attribute;
  late final FormUnit formUnit;
  RangedTimeModel? _initialValue;
  late bool removeTime;
  late RangedTimeModel rangedTimeModel;
  late DateTime initialBaseTime;
  late String timeDiff;
  bool useEndTime = true;

  @override
  void initState() {
    super.initState();
    _formState = FormBuilder.of(context);
    attribute = widget.formUnit.key;
    formUnit = widget.formUnit.value;
    _initialValue = _formState?.initialValue[attribute];
    initialBaseTime = formUnit.baseTime ?? _baseDateTime;
    removeTime =
        _initialValue?.startTime == null && _initialValue?.endTime == null;
    if (_initialValue?.endTime == null) {
      useEndTime = formUnit.useEndTime ?? false;
      if (useEndTime && _initialValue != null) {
        _initialValue = _initialValue!.copyWith(
          endTime: DateTime(
            (initialBaseTime).year,
            (initialBaseTime).month,
            (initialBaseTime).day,
            23,
            00,
          ),
        );
      }
    }

    rangedTimeModel =
        (_initialValue != null && _initialValue!.startTime != null)
            ? _initialValue!
            : RangedTimeModel(
              startTime: DateTime(
                initialBaseTime.year,
                initialBaseTime.month,
                initialBaseTime.day,
                11,
                30,
              ),
              endTime: DateTime(
                initialBaseTime.year,
                initialBaseTime.month,
                initialBaseTime.day + 1,
                00,
                00,
              ),
            );

    if (formUnit.isLocalTimeMode!) {
      rangedTimeModel = rangedTimeModel;
      //  RangedTimeModel.convertToLocalRangedTimeModel(
      //   rangedTimeModel,
      // );
    }

    timeDiff = getTimeDiff(rangedTimeModel);
    setTime();
  }

  onSave() {
    setState(() {
      timeDiff = getTimeDiff(rangedTimeModel);
    });
    // widget.onChanged(
    //   removeTime ||
    //           (rangedTimeModel.endTime != null
    //               ? rangedTimeModel.startTime!.isAfter(rangedTimeModel.endTime!)
    //               : false)
    //       ? null
    //       : formUnit.isLocalTimeMode!
    //       ? RangedTimeModel.convertCurrentTimezoneAsSetedLocalTime(
    //         rangedTimeModel,
    //       ).toMap()
    //       : rangedTimeModel.toMap(),
    // );
  }

  void setTime({DateTime? startTime, DateTime? endTime}) {
    rangedTimeModel =
        useEndTime
            ? formUnit.isLocalTimeMode!
                ? rangedTimeModel.copyWith(
                  startTime: startTime ?? rangedTimeModel.startTime,
                  endTime: endTime ?? rangedTimeModel.endTime,
                )
                : rangedTimeModel.copyWith(
                  startTime: startTime ?? rangedTimeModel.startTime,
                  endTime: endTime ?? rangedTimeModel.endTime,
                )
            : formUnit.isLocalTimeMode!
            ? RangedTimeModel(
              startTime: startTime ?? rangedTimeModel.startTime,
              endTime: null,
            )
            : RangedTimeModel(
              startTime: startTime ?? rangedTimeModel.startTime,
              endTime: null,
            );
  }

  @override
  Widget build(BuildContext context) {
    return FormField<TimeRange>(
      onSaved: (dynamic val) {
        _formState!.setInternalFieldValue(attribute, rangedTimeModel);
      },
      key: widget.key,
      builder: (FormFieldState val) {
        return Container(
          decoration: formUnit.boxDecoration,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              formUnit.labelWidget ??
                  (formUnit.label.isNotEmpty
                      ? Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          formUnit.label,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.background,
                          ),
                        ),
                      )
                      : SizedBox.shrink()),
              Row(
                children: [
                  if (removeTime)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Closed',
                        style: TextStyle(
                          color: Theme.of(
                            context,
                          ).baseTextColor.withOpacity(0.5),
                          fontSize: 20,
                        ),
                      ),
                    ),
                  if (!removeTime)
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color:
                              rangedTimeModel.endTime != null &&
                                      rangedTimeModel.startTime!.isAfter(
                                        rangedTimeModel.endTime!,
                                      )
                                  ? Colors.red.withOpacity(0.4)
                                  : Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (formUnit.startTimeLabel != null)
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 2,
                                    left: 4,
                                  ),
                                  child: Text(formUnit.startTimeLabel!),
                                ),
                              DateTimeTextFieldWidget(
                                timeInterval:
                                    formUnit.dailyAvailabilityTimeInterval!,
                                startTime:
                                    rangedTimeModel.startTime ??
                                    DateTime(
                                      initialBaseTime.year,
                                      initialBaseTime.month,
                                      initialBaseTime.day,
                                      rangedTimeModel.startTime == null
                                          ? 00
                                          : 00,
                                      00,
                                    ),
                                getDateTime: (DateTime? dt) {
                                  setTime(startTime: dt);
                                  onSave();
                                },
                                baseDate: initialBaseTime,
                                key: Key('startTime/${attribute}'),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('-'),
                          ),
                          if (useEndTime)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (formUnit.endTimeLabel != null)
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 2,
                                      left: 4,
                                    ),
                                    child: Text(formUnit.endTimeLabel!),
                                  ),
                                DateTimeTextFieldWidget(
                                  timeInterval:
                                      formUnit.dailyAvailabilityTimeInterval!,
                                  startTime:
                                      rangedTimeModel.endTime ??
                                      rangedTimeModel.startTime ??
                                      DateTime(
                                        initialBaseTime.year,
                                        initialBaseTime.month,
                                        initialBaseTime.day,
                                        rangedTimeModel.startTime == null
                                            ? 00
                                            : 00,
                                        00,
                                      ),
                                  getDateTime: (DateTime? dt) {
                                    late DateTime? et;
                                    if (dt != null) {
                                      if (rangedTimeModel.startTime!.hour >
                                          dt.hour) {
                                        et = dt.add(Duration(days: 1));
                                      } else {
                                        et = dt;
                                      }
                                    } else {
                                      et = dt;
                                    }
                                    setTime(endTime: et);
                                    onSave();
                                  },
                                  baseDate: initialBaseTime,
                                  isStartTime: false,
                                  key: Key('endTime/${attribute}'),
                                ),
                              ],
                            ),
                          if (formUnit.showWorkTime! &&
                              useEndTime &&
                              !rangedTimeModel.startTime!.isAfter(
                                rangedTimeModel.endTime!,
                              ))
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                timeDiff,
                                style: TextStyle(
                                  color:
                                      rangedTimeModel.startTime!.isAfter(
                                            rangedTimeModel.endTime!,
                                          )
                                          ? Colors.red.withOpacity(0.4)
                                          : Colors.black,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (formUnit.showRemoveEndTime ?? false)
                        HomeButton(
                          iconColor:
                              !useEndTime
                                  ? Theme.of(context).primaryColorDark
                                  : Colors.red.withOpacity(0.5),
                          color: Theme.of(context).primaryTextColor,
                          onTap: () {
                            setState(() {
                              useEndTime = !useEndTime;
                            });

                            if (useEndTime) {
                              setTime(
                                endTime: rangedTimeModel.startTime!.add(
                                  Duration(hours: 6),
                                ),
                              );
                            } else {
                              setTime();
                            }
                            onSave();
                          },
                          iconData: !useEndTime ? Icons.restore : Icons.close,
                          text: 'End Time',
                        ),
                      if (formUnit.showCloseButton ?? true)
                        SelectItemButton(
                          buttonColor: Theme.of(context).primaryTextColor,
                          iconColor:
                              removeTime
                                  ? Theme.of(context).baseTextColor
                                  : Colors.red.withOpacity(0.5),
                          onTap: () {
                            setState(() {
                              removeTime = !removeTime;
                            });
                            setTime();
                            onSave();
                          },
                          isSelected: false,
                          iconData:
                              removeTime
                                  ? Icons.watch_later_outlined
                                  : Icons.close,
                          text: '',
                        ),
                    ],
                  ),
                ],
              ),
              if (!removeTime &&
                  formUnit.showWorkTime! &&
                  useEndTime &&
                  rangedTimeModel.startTime!.isAfter(rangedTimeModel.endTime!))
                ErrorMessageWidget(errorText: 'Invalid Time'),
            ],
          ),
        );
      },
    );
  }
}

class DateTimeTextFieldWidget extends StatefulWidget {
  final DateTime baseDate;
  final DateTime startTime;
  final bool isStartTime;
  final Function(DateTime?) getDateTime;
  final TimeInterval timeInterval;

  const DateTimeTextFieldWidget({
    Key? key,
    this.isStartTime = true,
    required this.baseDate,
    required this.getDateTime,
    required this.startTime,
    required this.timeInterval,
  });

  @override
  State<DateTimeTextFieldWidget> createState() =>
      _DateTimeTextFieldWidgetState();
}

class _DateTimeTextFieldWidgetState extends State<DateTimeTextFieldWidget> {
  late bool isValid;
  late FocusNode hourNode;
  late FocusNode minuteNode;
  late FocusNode timeSectionNode;
  late TextEditingController hourTextEditingController;
  late TextEditingController minuteTextEditingController;
  late TextEditingController timeSectionTextEditingController;
  late DateTime dateTime;
  @override
  void initState() {
    super.initState();
    hourNode = FocusNode(debugLabel: '${widget.key}hourNode');
    minuteNode = FocusNode(debugLabel: '${widget.key}minuteNode');
    timeSectionNode = FocusNode(debugLabel: '${widget.key}timeSectionNode');
    hourTextEditingController = TextEditingController();
    minuteTextEditingController = TextEditingController();
    timeSectionTextEditingController = TextEditingController();

    //set initial time
    hourTextEditingController.text =
        widget.startTime.hour == 0
            ? widget.isStartTime
                ? '12'
                : '00'
            : widget.startTime.hour == 12
            ? '12'
            : (widget.startTime.hour > 12
                ? widget.startTime.hour - 12 < 10
                    ? '0${widget.startTime.hour - 12}'
                    : '${widget.startTime.hour - 12}'
                : widget.startTime.hour < 10
                ? '0${widget.startTime.hour}'
                : widget.startTime.hour.toString());
    minuteTextEditingController.text =
        widget.startTime.minute == 0
            ? '00'
            : widget.startTime.minute < 10
            ? '0${widget.startTime.minute}'
            : widget.startTime.minute.toString();
    timeSectionTextEditingController.text =
        widget.startTime.hour > 12 ? 'pm' : 'am';
    dateTime = widget.baseDate;
    isValid = isTimeValid();
  }

  bool isTimeValid() {
    return hourTextEditingController.text.isNotEmpty &&
        minuteTextEditingController.text.isNotEmpty;
  }

  setTime() {
    int hour = 0;
    if (hourTextEditingController.text.isNotEmpty) {
      if (timeSectionTextEditingController.text == 'pm') {
        hour =
            int.parse(hourTextEditingController.text) == 12
                ? int.parse(hourTextEditingController.text)
                : int.parse(hourTextEditingController.text) + 12;
      } else {
        hour = int.parse(hourTextEditingController.text);
      }
    }

    dateTime = DateTime(
      widget.baseDate.year,
      widget.baseDate.month,
      widget.baseDate.day,
      hour,
      minuteTextEditingController.text.isEmpty
          ? 0
          : int.parse(minuteTextEditingController.text),
    );
    setState(() {
      isValid = isTimeValid();
    });
  }

  @override
  Widget build(BuildContext context) {
    const double topPadding = 7;
    double width = Helpers.getMQWidth(context: context) * 0.9 * 0.063;
    final TextStyle textStyle = Theme.of(context).textTheme.bodyMedium!
        .copyWith(fontWeight: FontWeight.bold, fontSize: width * 0.61);

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color:
              isValid
                  ? Colors.black.withOpacity(0.3)
                  : Colors.red.withOpacity(0.4),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: topPadding),
                    child: SizedBox(
                      width: width,
                      height: kIsWeb ? 8 : 20,
                      child: TextField(
                        onTap: () {
                          moveTextFieldCursorToEnd(hourTextEditingController);
                        },
                        textInputAction: TextInputAction.next,
                        controller: hourTextEditingController,
                        focusNode: hourNode,
                        style: textStyle,
                        onChanged: (String val) {
                          if (val.isNotEmpty) {
                            if (val.length > 2 || int.parse(val) > 12) {
                              hourTextEditingController.text = '12';
                              moveTextFieldCursorToEnd(
                                hourTextEditingController,
                              );
                            }
                            if (val.length == 2) {
                              hourNode.unfocus();
                              minuteNode.requestFocus();
                            }
                          }
                          setTime();
                          widget.getDateTime(isValid ? dateTime : null);
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(border: InputBorder.none),
                        onSubmitted: (_) => context.nextEditableTextFocus(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: Text(':', style: textStyle),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: topPadding),
                    child: SizedBox(
                      width: width,
                      height: kIsWeb ? 8 : 20,
                      child: TextField(
                        style: textStyle,
                        onTap: () {
                          moveTextFieldCursorToEnd(minuteTextEditingController);
                        },
                        onSubmitted: (_) => context.nextEditableTextFocus(),
                        controller: minuteTextEditingController,
                        focusNode: minuteNode,
                        onChanged: (String val) {
                          if (val.isNotEmpty) {
                            if (val.length > 2 || int.parse(val) > 59) {
                              minuteTextEditingController.text = '00';
                              moveTextFieldCursorToEnd(
                                minuteTextEditingController,
                              );
                            }

                            if (val.length == 2) {
                              minuteNode.unfocus();
                              timeSectionNode.requestFocus();
                            }
                          }
                          setTime();
                          widget.getDateTime(isValid ? dateTime : null);
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: topPadding),
              child: SizedBox(
                width: 30,
                height: kIsWeb ? 8 : 20,
                child: TextField(
                  style: textStyle,
                  focusNode: timeSectionNode,
                  onTap: () {
                    moveTextFieldCursorToEnd(timeSectionTextEditingController);
                  },
                  onChanged: (val) {
                    if (val.length < 2) {
                      if (timeSectionTextEditingController.text.contains('a')) {
                        timeSectionTextEditingController.text = 'am';
                      } else {
                        timeSectionTextEditingController.text = 'pm';
                      }
                    } else {
                      String addedString = val[val.length - 1];
                      if (addedString == 'a') {
                        timeSectionTextEditingController.text = 'am';
                      } else if (addedString == 'p') {
                        timeSectionTextEditingController.text = 'pm';
                      } else {
                        timeSectionTextEditingController.text = val.replaceAll(
                          addedString,
                          '',
                        );
                      }
                    }
                    moveTextFieldCursorToEnd(timeSectionTextEditingController);
                    setTime();
                    widget.getDateTime(isValid ? dateTime : null);
                  },
                  controller: timeSectionTextEditingController,
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void moveTextFieldCursorToEnd(TextEditingController textEditingController) {
  textEditingController
    ..selection = TextSelection.collapsed(
      offset: textEditingController.text.length,
    );
}

extension Utility on BuildContext {
  void nextEditableTextFocus() {
    do {
      FocusScope.of(this).nextFocus();
    } while (FocusScope.of(this).focusedChild?.context?.widget
        is! EditableText);
  }
}

String getTimeDiff(RangedTimeModel rangedTimeModel) {
  int hour = 0;
  int minute = 0;

  if (rangedTimeModel.endTime != null && rangedTimeModel.startTime != null) {
    bool minuteDiff =
        rangedTimeModel.startTime!.minute > rangedTimeModel.endTime!.minute;
    if (rangedTimeModel.startTime?.day != rangedTimeModel.endTime?.day) {
      hour =
          (rangedTimeModel.endTime!.hour + 24) -
          rangedTimeModel.startTime!.hour;
      if (minuteDiff) {
        hour -= 1;
      }
      minute =
          minuteDiff
              ? rangedTimeModel.startTime!.minute -
                  rangedTimeModel.endTime!.minute
              : rangedTimeModel.endTime!.minute -
                  rangedTimeModel.startTime!.minute;
    } else {
      hour = rangedTimeModel.endTime!.hour - rangedTimeModel.startTime!.hour;
      if (minuteDiff) {
        hour -= 1;
      }
      minute =
          minuteDiff
              ? rangedTimeModel.startTime!.minute -
                  rangedTimeModel.endTime!.minute
              : rangedTimeModel.endTime!.minute -
                  rangedTimeModel.startTime!.minute;
    }
  } else if (rangedTimeModel.endTime == null &&
      rangedTimeModel.startTime != null) {
    //TODO//this for when you make the schdule
  }
  return rangedTimeModel.startTime != null && rangedTimeModel.endTime != null
      ? '${hour}h ${minute < 10 ? '0$minute' : minute}m '
      : '';
}

TimeOfDay getTimeDiffTimeOfDay(RangedTimeModel rangedTimeModel) {
  int hour = 0;
  int minute = 0;

  if (rangedTimeModel.endTime != null && rangedTimeModel.startTime != null) {
    bool minuteDiff =
        rangedTimeModel.startTime!.minute > rangedTimeModel.endTime!.minute;
    if (rangedTimeModel.startTime?.day != rangedTimeModel.endTime?.day) {
      hour =
          (rangedTimeModel.endTime!.hour + 24) -
          rangedTimeModel.startTime!.hour;
      if (minuteDiff) {
        hour -= 1;
      }
      minute =
          minuteDiff
              ? rangedTimeModel.startTime!.minute -
                  rangedTimeModel.endTime!.minute
              : rangedTimeModel.endTime!.minute -
                  rangedTimeModel.startTime!.minute;
    } else {
      hour = rangedTimeModel.endTime!.hour - rangedTimeModel.startTime!.hour;
      if (minuteDiff) {
        hour -= 1;
      }
      minute =
          minuteDiff
              ? rangedTimeModel.startTime!.minute -
                  rangedTimeModel.endTime!.minute
              : rangedTimeModel.endTime!.minute -
                  rangedTimeModel.startTime!.minute;
    }
  } else if (rangedTimeModel.endTime == null &&
      rangedTimeModel.startTime != null) {
    //TODO//this for when you make the schdule
  }
  return rangedTimeModel.startTime != null && rangedTimeModel.endTime != null
      ? TimeOfDay(hour: hour, minute: minute)
      : TimeOfDay(hour: 0, minute: 0);
}
