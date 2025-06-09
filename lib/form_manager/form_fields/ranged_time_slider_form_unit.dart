// WIP: Refactored version of RangedTimeSliderFormUnit
// All functionality preserved; reduced redundancy, improved clarity

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:range_slider_flutter/range_slider_flutter.dart';
import 'package:like_button/like_button.dart';
import 'package:tetbee__base/form_manager/form_unit/form_unit.dart';
import 'package:tetbee__base/models/availability/daily_availability.dart';
import 'package:tetbee__base/models/common/ranged_time_model.dart';
import 'package:tetbee__base/utils/enums.dart';
import 'package:tetbee__base/widgets/buttons/home_button.dart';

class RangedTimeSliderFormUnit extends StatefulWidget {
  final MapEntry<String, FormUnit> formUnit;
  const RangedTimeSliderFormUnit({super.key, required this.formUnit});

  @override
  State<RangedTimeSliderFormUnit> createState() =>
      _RangedTimeSliderFormUnitState();
}

class _RangedTimeSliderFormUnitState extends State<RangedTimeSliderFormUnit> {
  late final FormUnit formUnit;
  late final String attribute;
  FormBuilderState? _formState;
  late final TextEditingController _commentController;

  late double minTime, maxTime, _lowerValue, _upperValue, minimumDistance;
  late int timeDivision, minimumHour;
  late bool canWorkButNotAvailable, showComment;
  late DailyAvailability dailyAvailability;
  late RangedTimeModel timeModel;

  @override
  void initState() {
    super.initState();
    formUnit = widget.formUnit.value;
    attribute = widget.formUnit.key;
    _formState = FormBuilder.of(context);
    _commentController = TextEditingController();

    minimumHour = formUnit.minimumHour ?? 3;
    timeDivision = _getTimeDivision(formUnit.dailyAvailabilityTimeInterval);
    timeModel = formUnit.baseTimeRange!;

    minTime = _convertToDiv(timeModel.startTime!);
    maxTime = _convertToDiv(timeModel.endTime!, allowOverflow: true);

    dailyAvailability =
        _formState!.instantValue[attribute] ??
        DailyAvailability(
          weekDay: formUnit.baseTimeRange!.startTime!.weekday,
          timeRange: timeModel,
          canWorkButNotPreferToWork: false,
        );

    _lowerValue = _clamp(
      _convertToDiv(dailyAvailability.timeRange.startTime!),
      minTime,
      maxTime,
    );
    _upperValue = _clamp(
      _convertToDiv(dailyAvailability.timeRange.endTime!, allowOverflow: true),
      minTime,
      maxTime,
    );
    minimumDistance = (timeDivision * minimumHour).toDouble();

    canWorkButNotAvailable = false;
    showComment = _commentController.text.isNotEmpty;
  }

  double _clamp(double val, double min, double max) => val.clamp(min, max);

  double _convertToDiv(DateTime dateTime, {bool allowOverflow = false}) {
    int hour = dateTime.hour;
    if (allowOverflow && timeModel.startTime!.day != dateTime.day) hour += 24;
    return hour * timeDivision + (dateTime.minute / (60 / timeDivision));
  }

  int _getTimeDivision(TimeInterval? interval) {
    switch (interval) {
      case TimeInterval.fifteen:
        return 4;
      case TimeInterval.oneHour:
        return 1;
      case TimeInterval.thirty:
      default:
        return 2;
    }
  }

  DateTime _fromDiv(double value) {
    int hour = value ~/ timeDivision;
    int minute = (60 * (((value / timeDivision) * 10) % 10) ~/ 10).toInt();
    return DateTime(
      formUnit.baseTimeRange!.startTime!.year,
      formUnit.baseTimeRange!.startTime!.month,
      formUnit.baseTimeRange!.startTime!.day,
      hour,
      minute,
    );
  }

  void _updateAvailability(double lower, double upper) {
    setState(() {
      _lowerValue = lower;
      _upperValue = upper;
      dailyAvailability = dailyAvailability.copyWith(
        timeRange: RangedTimeModel(
          startTime: _fromDiv(_lowerValue),
          endTime: _fromDiv(_upperValue),
        ),
      );
      _formState!.setInternalFieldValue(attribute, dailyAvailability);
    });
  }

  @override
  Widget build(BuildContext context) {
    return FormField<double>(
      onSaved:
          (val) =>
              _formState!.setInternalFieldValue(attribute, dailyAvailability),
      builder: (field) {
        return Padding(
          padding: EdgeInsets.only(
            left: formUnit.withPadding ?? false ? 0 : 20,
            top: 4,
          ),
          child: AnimatedContainer(
            height: showComment ? 128 : 85,
            duration: const Duration(milliseconds: 150),
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(
                  context,
                ).textTheme.headlineLarge!.color!.withOpacity(0.1),
              ),
              color:
                  dailyAvailability.isUnavailable(minimumHour)
                      ? Colors.red.withOpacity(0.05)
                      : null,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child:
                  showComment
                      ? SingleChildScrollView(child: _buildForm(context))
                      : _buildForm(context),
            ),
          ),
        );
      },
    );
  }

  Widget _buildForm(BuildContext context) {
    return Column(
      children: [
        _buildTopRow(context),
        // if (formUnit.useNotPreferedDay ?? false) _buildLikeButtonRow(context),
        _buildSliderRow(context),
        if (showComment) _buildCommentField(context),
      ],
    );
  }

  Widget _buildTopRow(BuildContext context) {
    return Row(
      children: [
        formUnit.labelWidget ??
            _buildLabelWidget(
              DateFormat('E').format(formUnit.baseTimeRange!.startTime!),
              context,
            ),
        const Spacer(),

        if (formUnit.useDailyComment ?? false) _buildCommentToggle(context),
      ],
    );
  }

  Widget _buildLikeButtonRow(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Text(
          "Available, but I don't prefer to work.",
          style: theme.textTheme.bodySmall!.copyWith(
            color:
                canWorkButNotAvailable
                    ? theme.textTheme.headlineLarge!.color
                    : theme.textTheme.headlineLarge!.color!.withOpacity(0.5),
            fontSize: 11,
            fontWeight:
                canWorkButNotAvailable ? FontWeight.bold : FontWeight.w200,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 20),
          child: LikeButton(
            size: 20,
            likeBuilder:
                (isLiked) => Icon(
                  isLiked
                      ? FontAwesomeIcons.circleCheck
                      : FontAwesomeIcons.cancel,
                  color:
                      isLiked
                          ? theme.colorScheme.secondary.withOpacity(0.8)
                          : Colors.white60,
                  size: 25,
                ),
            isLiked: canWorkButNotAvailable,
            onTap: (isLiked) async => canWorkButNotAvailable,
          ),
        ),
      ],
    );
  }

  Widget _buildCommentToggle(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: InkWell(
        onTap: () {
          HapticFeedback.heavyImpact();
          setState(() {
            showComment = !showComment;
            if (!showComment) _commentController.text = '';
            dailyAvailability = dailyAvailability.copyWith(
              comment: _commentController.text,
            );

            _formState!.setInternalFieldValue(attribute, dailyAvailability);
          });
        },
        child: Icon(
          showComment
              ? FontAwesomeIcons.solidComment
              : FontAwesomeIcons.comment,
          color:
              showComment
                  ? theme.colorScheme.secondary.withOpacity(0.8)
                  : theme.textTheme.headlineLarge!.color,
        ),
      ),
    );
  }

  Widget _buildSliderRow(BuildContext context) {
    return Row(
      children: [
        Expanded(child: _buildSlider(context)),
        if (!dailyAvailability.isUnavailable(minimumHour))
          _buildResetButton(context),
      ],
    );
  }

  Widget _buildSlider(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: RangeSliderFlutter(
              min: minTime,
              max: maxTime,
              minimumDistance: minimumDistance,
              values: [_lowerValue, _upperValue],
              selectByTap: false,
              tooltip: RangeSliderFlutterTooltip(
                custom: (a) {
                  final hour = (a / timeDivision).floor();
                  final minute =
                      (60 * (((a / timeDivision) * 10) % 10) ~/ 10).toInt();
                  return Container(
                    decoration: BoxDecoration(
                      color: theme.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '${hour.toString().padLeft(2, '0')} : ${minute.toString().padLeft(2, '0')}',
                    ),
                  );
                },
              ),
              touchSize: 5,
              handlerHeight: 25,
              key: Key('RangeSliderFlutterFomr/\$attribute'),
              onDragging: (index, low, high) {
                if ((low != _lowerValue && low % 1 == 0) ||
                    (high != _upperValue && high % 1 == 0)) {
                  HapticFeedback.lightImpact();
                }
                setState(() {
                  _lowerValue = low;
                  _upperValue = high;
                });
              },
              onDragCompleted:
                  (index, low, high) => _updateAvailability(low, high),
              rangeSlider: true,
              textPositionTop: 5,
              trackBar: RangeSliderFlutterTrackBar(
                activeTrackBarHeight: 10,
                inactiveTrackBarHeight: 5,
                activeTrackBar: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: theme.primaryColorDark,
                ),
                inactiveTrackBar: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                ),
              ),
              textBackgroundColor: theme.primaryColorDark,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Text(
              dailyAvailability.getAvailableTime(
                formUnit.baseTimeRange!,
                minimumHour,
                formUnit.show24Hour!,
              ),
              style: TextStyle(
                color:
                    dailyAvailability.isAvailableWholeDay(
                          formUnit.baseTimeRange!,
                        )
                        ? theme.colorScheme.onPrimary
                        : dailyAvailability.isUnavailable(minimumHour)
                        ? theme.colorScheme.error.withOpacity(0.7)
                        : theme.colorScheme.secondary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildResetButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4),
      child: HomeButton(
        size: 30,
        withPading: false,
        iconData: Icons.timer_off_rounded,
        onTap: () {
          HapticFeedback.heavyImpact();
          _updateAvailability(minTime, minTime + (timeDivision * 3));
          canWorkButNotAvailable = false;
        },
      ),
    );
  }

  Widget _buildCommentField(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 40,
      child: TextField(
        controller: _commentController,
        onChanged: (val) {
          setState(() {
            dailyAvailability = dailyAvailability.copyWith(comment: val);
            _formState!.setInternalFieldValue(attribute, dailyAvailability);
          });
        },
        style: TextStyle(
          fontSize: 10,
          color: theme.textTheme.headlineLarge!.color!,
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(5.0, 1.0, 5.0, 1.0),
          labelText: 'Comment',
          hintText: 'Comment',
          hintStyle: TextStyle(
            fontSize: 8,
            color: theme.textTheme.headlineLarge!.color!,
          ),
          labelStyle: TextStyle(
            fontSize: 8,
            color: theme.textTheme.headlineLarge!.color!,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(
              width: 3,
              color: theme.textTheme.headlineLarge!.color!,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(
              width: 3,
              color: theme.textTheme.headlineLarge!.color!,
            ),
          ),
          errorStyle: TextStyle(color: theme.colorScheme.onError, fontSize: 10),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(width: 1, color: Colors.red[100]!),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(width: 1, color: theme.colorScheme.onError),
          ),
        ),
      ),
    );
  }

  Widget _buildLabelWidget(String text, BuildContext context) {
    return Text(
      text,
      style: Theme.of(
        context,
      ).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
    );
  }
}
