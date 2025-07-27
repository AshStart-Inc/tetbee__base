import 'package:flutter/material.dart';
import 'package:tetbee__base/form_manager/form_unit/form_unit_base.dart';
import 'package:tetbee__base/models/common/ranged_time_model.dart';
import 'package:tetbee__base/models/common/time_zone_model.dart';
import 'package:tetbee__base/utils/enums.dart';
import 'package:time_range_picker/time_range_picker.dart';

class FormUnit extends FormUnitBase {
  //TEXT Fields
  FormUnit.text({
    required super.label,
    super.trailingWidget,
    super.subLabel,
    super.defaultValue,
    super.errorText,
    super.validators,
    super.readOnly,
    super.formConditions,
    this.textInputType = TextInputType.name,
    this.textStyle,
    this.maxLength,
    this.hintStyle,
    this.allowWhiteSpace,
    this.hint,
    this.maxLines = 1,
    this.minLength,
  }) : super(formUnitType: FormUnitType.text);
  int? maxLength;
  int? minLength;
  String? hint;
  int? maxLines;
  TextStyle? textStyle;
  TextStyle? hintStyle;
  TextInputType? textInputType;
  bool? allowWhiteSpace;

  FormUnit.color({
    required super.label,
    super.trailingWidget,
    this.hint,
    super.subLabel,
    super.defaultValue,
    super.errorText,
    super.validators,
    super.readOnly,
    super.formConditions,
  }) : super(formUnitType: FormUnitType.color);

  FormUnit.boolean({
    required super.label,
    super.trailingWidget,
    this.hint,
    super.subLabel,
    super.defaultValue = false,
    super.errorText,
    super.validators,
    super.readOnly,
    super.formConditions,
    this.titleWidget,
    this.headingWidget,
  }) : super(formUnitType: FormUnitType.boolean);
  Widget? titleWidget;
  Widget? headingWidget;
  FormUnit.phoneNumber({
    required super.label,
    super.trailingWidget,
    this.hint,
    super.subLabel,
    super.defaultValue,
    super.errorText,
    super.validators,
    super.readOnly,
    super.formConditions,
  }) : super(formUnitType: FormUnitType.phoneNumber);

  FormUnit.itemPicker({
    required super.label,
    super.trailingWidget,
    this.hint,
    super.subLabel,
    super.defaultValue,
    super.errorText,
    super.validators,
    super.readOnly,
    super.formConditions,
    //
    this.isMultipleValueAllowed = false,
    this.itemList,
    required this.itemBuilder,
    this.itemListMode = ItemListMode.listView,
  }) : super(formUnitType: FormUnitType.itemPicker);
  ItemListMode? itemListMode;
  bool? isMultipleValueAllowed;
  List<dynamic>? itemList;
  Widget Function(BuildContext, dynamic)? itemBuilder;

  FormUnit.dropdown({
    required super.label,
    super.trailingWidget,
    this.hint,
    super.subLabel,
    super.defaultValue,
    super.errorText,
    super.validators,
    super.readOnly,
    super.formConditions,
    //
    this.isMultipleValueAllowed = false,
    this.itemList,
    required this.itemBuilder,
  }) : super(formUnitType: FormUnitType.dropdown);

  FormUnit.rangedDatePicker({
    required super.label,
    super.trailingWidget,
    this.hint,
    super.subLabel,
    super.defaultValue,
    super.errorText,
    super.readOnly,
    super.formConditions,
    //
    this.baseTime,
    this.typeMode,
    this.isRanged = true,
    this.minumumTimeRange = 5,
  }) : super(formUnitType: FormUnitType.rangedDatePicker);

  FormUnit.rangedTimePicker({
    required super.label,
    super.trailingWidget,
    this.hint,
    super.subLabel,
    super.defaultValue,
    super.errorText,
    super.readOnly,
    super.formConditions,
    required this.baseTime,
    //
    this.labelWidget,
    this.startTime,
    this.endTime,
    this.timeInterval,
    this.minDuration,
    this.disabledTime,
    this.minmumText = 'Closed',
    this.maximumText,
    this.notAvailableButtonRequired,
    this.typeMode,
    this.useEndTime,
    this.isLocalTimeMode = false,
    this.showCloseButton = true,
    this.showRemoveEndTime = false,
    this.showWorkTime = true,
    this.timeZone,
    this.startTimeLabel,
    this.endTimeLabel,
    this.dailyAvailabilityTimeInterval = TimeInterval.thirty,
    this.showDate = true,
  }) : super(formUnitType: FormUnitType.rangedTimePicker);

  //date
  bool? isLocalTimeMode;
  Widget? labelWidget;
  TimeOfDay? startTime;
  TimeOfDay? endTime;
  Duration? timeInterval;
  Duration? minDuration;
  TimeRange? disabledTime;
  bool? isRanged;
  String? maximumText;
  String? minmumText;
  bool? notAvailableButtonRequired;
  bool? typeMode;
  DateTime? baseTime;
  int? minumumTimeRange;
  bool? useEndTime;
  bool? showCloseButton;
  bool? showRemoveEndTime;
  bool? showWorkTime;
  BoxDecoration? boxDecoration;
  TimeZoneModel? timeZone;
  String? startTimeLabel;
  String? endTimeLabel;
  TimeInterval? dailyAvailabilityTimeInterval;
  bool? showDate;

  FormUnit.mediaPicker({
    required super.label,
    super.trailingWidget,
    super.defaultValue,
    super.errorText,
    super.readOnly,
    super.formConditions,
    //
    this.dataPath,
    this.widgetHeight = 150,
    this.imageQuality = 50,
    this.dataType = const [DataType.img],
    this.maxImgNumber = 1,
  }) : super(formUnitType: FormUnitType.mediaPicker);
  double? widgetHeight;
  List<DataType>? dataType;
  int? imageQuality;
  int? maxImgNumber;
  String? dataPath;

  FormUnit.datePicker({
    super.label = '',
    super.trailingWidget,
    super.defaultValue,
    super.errorText,
    super.readOnly,
    super.validators,
    super.formConditions,
    //
    this.dateSelectionModes,
    this.defaultStartWeekday,
    this.allowSameDate = false,
    this.earliestDate,
  }) : super(formUnitType: FormUnitType.datePicker);
  int? defaultStartWeekday;
  List<DateSelectionMode>? dateSelectionModes;
  bool? allowSameDate;
  DateTime? earliestDate;

  FormUnit.rangedTimeSlider({
    super.label = '',
    super.trailingWidget,
    super.defaultValue,
    super.errorText,
    super.readOnly,
    super.formConditions,
    //
    this.minimumHour,
    this.labelWidget,
    required this.baseTimeRange,
    this.dailyAvailabilityTimeInterval = TimeInterval.thirty,
    this.useNotPreferedDay,
    this.withPadding = true,
    this.show24Hour = false,
    this.useDailyComment = true,
    this.showTimeRange = false,
    this.isClosed = false,
  }) : super(formUnitType: FormUnitType.rangedTimeSlider);
  bool? show24Hour;
  int? minimumHour;
  RangedTimeModel? baseTimeRange;
  bool? useNotPreferedDay;
  bool? useDailyComment;
  bool? withPadding;
  bool? showTimeRange;
  //if this value is true, the availability silder will not be available
  // and display closed text.
  bool? isClosed;

  FormUnit.customWidget({
    super.label = '',
    super.trailingWidget,
    super.formConditions,
    //
    required this.widget,
  }) : super(formUnitType: FormUnitType.customWidget);
  Widget? widget;
}
