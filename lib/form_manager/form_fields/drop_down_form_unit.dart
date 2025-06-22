import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:tetbee__base/form_manager/form_constants.dart';
import 'package:tetbee__base/form_manager/form_unit/form_unit.dart';
import 'package:tetbee__base/form_manager/form_validator/custom_form_validator.dart';
import 'package:tetbee__base/form_manager/form_validator/form_validation_logic.dart';
import 'package:tetbee__base/form_manager/widgets/form_field_wrapper.dart';

class DropDownFormUnit extends StatefulWidget {
  final MapEntry<String, FormUnit> formUnit;
  const DropDownFormUnit({super.key, required this.formUnit});

  @override
  State<DropDownFormUnit> createState() => _DropDownFormUnitState();
}

class _DropDownFormUnitState extends State<DropDownFormUnit> {
  dynamic _initialValue;
  late final FormBuilderState _formState;
  final GlobalKey<FormFieldState> _fieldKey = GlobalKey<FormFieldState>();
  late final String attribute;
  late final FormUnit formUnit;

  @override
  void initState() {
    super.initState();
    attribute = widget.formUnit.key;
    formUnit = widget.formUnit.value;
    _formState = FormBuilder.of(context)!;
    _initialValue = _formState.initialValue[attribute] ?? formUnit.defaultValue;
  }

  void onChange(dynamic value, {FormFieldState<dynamic>? field}) {
    _initialValue = value;
    setState(() {});

    field?.didChange(value);
    _formState.setInternalFieldValue(attribute, _initialValue);
    if (field?.errorText != null) {
      field!.validate();
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormField<dynamic>(
      key: _fieldKey,
      initialValue: _initialValue,
      validator: FormValidatorLogic.compose([
        if (formUnit.validators != null && formUnit.validators!.isNotEmpty)
          ...formUnit.validators!.map(
            (val) => getValidators(qFormValidator: val),
          ),
      ]),
      onSaved: (val) {
        onChange(_initialValue);
      },
      builder: (FormFieldState<dynamic> field) {
        return FormFieldWrapper(
          label: formUnit.label,
          subLabel: formUnit.subLabel,
          trailingWidget: formUnit.trailingWidget,
          formField: buildWidget(field, context),
          errorText: field.errorText,
        );
      },
    );
  }

  Widget buildWidget(FormFieldState field, BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(),
      ),
      child: SizedBox(
        height: FormConstants.baseHeight,
        width: double.maxFinite,
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            hint: Text(
              formUnit.hint ?? 'Select the ${formUnit.label}...',
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: Theme.of(context).unselectedWidgetColor,
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16),
            value: _initialValue,
            items: [
              ...formUnit.itemList!.map(
                (value) => DropdownMenuItem(
                  onTap: () {},
                  value: value,
                  child:
                      formUnit.itemBuilder?.call(context, value) ??
                      Text(value.toString()),
                ),
              ),
            ],
            onChanged: (value) => onChange(value, field: field),
          ),
        ),
      ),
    );
  }
}
