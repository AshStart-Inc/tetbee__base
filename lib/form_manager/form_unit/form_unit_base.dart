import 'package:flutter/material.dart';
import 'package:tetbee__base/form_manager/form_validator/custom_form_validator.dart';

enum FormUnitType {
  text,
  color,
  boolean,
  phoneNumber,
  itemPicker,
  rangedDatePicker,
  rangedTimePicker,
  mediaPicker,
  datePicker,
  rangedTimeSlider,
  customWidget,
  dropdown,
}

abstract class FormUnitBase {
  final FormUnitType formUnitType;
  final String label;
  final String subLabel;
  final bool readOnly;
  Widget? trailingWidget;
  String? errorText;
  dynamic defaultValue;
  List<CustomFormValidator>? validators;

  FormUnitBase({
    required this.formUnitType,
    required this.label,
    this.subLabel = '',
    this.readOnly = false,
    this.validators,
    this.errorText,
    this.defaultValue,
    this.trailingWidget,
  });
}
