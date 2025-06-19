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
    super.defaultValue,
    super.errorText,
    super.validators,
    super.readOnly,
    this.textInputType = TextInputType.text,
    this.textStyle,
    this.maxLength,
    this.maxLine,
    this.hintStyle,
    this.allowWhiteSpace,
    this.hint,
    this.minLength,
  }) : super(formUnitType: FormUnitType.text);
  int? maxLine;
  int? maxLength;
  int? minLength;
  String? hint;
  TextStyle? textStyle;
  TextStyle? hintStyle;
  TextInputType? textInputType;
  bool? allowWhiteSpace;

  FormUnit.color({
    required super.label,
    super.defaultValue,
    super.errorText,
    super.validators,
    super.readOnly,
  }) : super(formUnitType: FormUnitType.color);

  FormUnit.boolean({
    required super.label,
    super.defaultValue = false,
    super.errorText,
    super.validators,
    super.readOnly,
  }) : super(formUnitType: FormUnitType.boolean);
  FormUnit.phoneNumber({
    required super.label,
    super.defaultValue,
    super.errorText,
    super.validators,
    super.readOnly,
  }) : super(formUnitType: FormUnitType.phoneNumber);

  FormUnit.itemPicker({
    required super.label,
    super.defaultValue,
    super.errorText,
    super.validators,
    super.readOnly,
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

  FormUnit.rangedDatePicker({
    required super.label,
    super.defaultValue,
    super.errorText,
    super.readOnly,
    //
    this.baseTime,
    this.typeMode,
    this.isRanged = true,
    this.minumumTimeRange = 5,
  }) : super(formUnitType: FormUnitType.rangedDatePicker);

  FormUnit.rangedTimePicker({
    required super.label,
    super.defaultValue,
    super.errorText,
    super.readOnly,
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

  FormUnit.mediaPicker({
    required super.label,
    super.defaultValue,
    super.errorText,
    super.readOnly,

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
    super.defaultValue,
    super.errorText,
    super.readOnly,
    super.validators,
    //
    this.dateSelectionModes,
    this.defaultStartWeekday,
  }) : super(formUnitType: FormUnitType.datePicker);
  int? defaultStartWeekday;
  List<DateSelectionMode>? dateSelectionModes;

  FormUnit.rangedTimeSlider({
    super.label = '',
    super.defaultValue,
    super.errorText,
    super.readOnly,
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
  }) : super(formUnitType: FormUnitType.rangedTimeSlider);
  bool? show24Hour;
  int? minimumHour;
  RangedTimeModel? baseTimeRange;
  bool? useNotPreferedDay;
  bool? useDailyComment;
  bool? withPadding;
  bool? showTimeRange;

  FormUnit.customWidget({
    super.label = '',
    //
    required this.widget,
  }) : super(formUnitType: FormUnitType.customWidget);
  Widget? widget;
}
