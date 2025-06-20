import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:tetbee__base/form_manager/form_unit/form_unit.dart';
import 'package:tetbee__base/form_manager/form_validator/custom_form_validator.dart';
import 'package:tetbee__base/form_manager/form_validator/form_validation_logic.dart';
import 'package:tetbee__base/form_manager/widgets/form_field_wrapper.dart';

class TextFormUnit extends StatefulWidget {
  final MapEntry<String, FormUnit> formUnit;
  const TextFormUnit({super.key, required this.formUnit});

  @override
  State<TextFormUnit> createState() => _TextFormUnitState();
}

class _TextFormUnitState extends State<TextFormUnit> {
  FormBuilderState? _formState;

  late final String attribute;
  late final FormUnit formUnit;
  String? initialValue;
  @override
  void initState() {
    super.initState();
    _formState = FormBuilder.of(context);
    attribute = widget.formUnit.key;
    formUnit = widget.formUnit.value;
    initialValue = _formState?.initialValue[attribute];
  }

  @override
  Widget build(BuildContext context) {
    return FormFieldWrapper(
      label: formUnit.label,
      formField: FormBuilderTextField(
        style: TextStyle(fontSize: 15),
        maxLength: formUnit.maxLength,
        validator: FormValidatorLogic.compose([
          if (formUnit.validators != null && formUnit.validators!.isNotEmpty)
            ...formUnit.validators!.map(
              (val) => getValidators(qFormValidator: val),
            ),
        ]),
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
        name: attribute,
        initialValue: initialValue,
      ),
    );
  }
}
