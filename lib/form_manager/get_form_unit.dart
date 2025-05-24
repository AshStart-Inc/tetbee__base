import 'package:flutter/material.dart';
import 'package:tetbee__base/form_manager/form_fields/boolean_form_unit.dart';
import 'package:tetbee__base/form_manager/form_fields/color_form_unit.dart';
import 'package:tetbee__base/form_manager/form_fields/date_picker_form_unit.dart';
import 'package:tetbee__base/form_manager/form_fields/item_picker_form_unit.dart';
import 'package:tetbee__base/form_manager/form_fields/media_picker_form_unit.dart';
import 'package:tetbee__base/form_manager/form_fields/phone_number_form_unit.dart';
import 'package:tetbee__base/form_manager/form_fields/ranged_date_form_unit.dart';
import 'package:tetbee__base/form_manager/form_fields/ranged_time_form_unit.dart';
import 'package:tetbee__base/form_manager/form_fields/ranged_time_slider_form_unit.dart';
import 'package:tetbee__base/form_manager/form_fields/text_form_unit.dart';
import 'package:tetbee__base/form_manager/form_unit/form_unit.dart';
import 'package:tetbee__base/form_manager/form_unit/form_unit_base.dart';

Widget getFormUnit(MapEntry<String, FormUnit> entry, dynamic initialValue) {
  switch (entry.value.formUnitType) {
    case FormUnitType.text:
      return TextFormUnit(formUnit: entry);
    case FormUnitType.color:
      return ColorFormUnit(formUnit: entry);
    case FormUnitType.boolean:
      return BooleanFormUnit(formUnit: entry);
    case FormUnitType.phoneNumber:
      return PhoneNumberFormUnit(formUnit: entry);
    case FormUnitType.itemPicker:
      return ItemPickerFormUnit(formUnit: entry);
    case FormUnitType.rangedDatePicker:
      return RangedDateFormUnit(formUnit: entry);
    case FormUnitType.rangedTimePicker:
      return RangedTimeFormUnit(formUnit: entry);
    case FormUnitType.mediaPicker:
      return MediaPickerFormUnit(formUnit: entry);
    case FormUnitType.datePicker:
      return DatePickerFormUnit(formUnit: entry);
    case FormUnitType.rangedTimeSlider:
      return RangedTimeSliderFormUnit(formUnit: entry);
  }
}
