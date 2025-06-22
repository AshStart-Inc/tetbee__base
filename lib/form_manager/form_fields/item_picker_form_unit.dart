import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:tetbee__base/form_manager/form_unit/form_unit.dart';
import 'package:tetbee__base/form_manager/form_validator/custom_form_validator.dart';
import 'package:tetbee__base/form_manager/form_validator/form_validation_logic.dart';
import 'package:tetbee__base/form_manager/widgets/form_field_wrapper.dart';

class ItemPickerFormUnit extends StatefulWidget {
  final MapEntry<String, FormUnit> formUnit;
  const ItemPickerFormUnit({super.key, required this.formUnit});

  @override
  State<ItemPickerFormUnit> createState() => _ItemPickerFormUnitState();
}

class _ItemPickerFormUnitState extends State<ItemPickerFormUnit> {
  List<dynamic> _initialValue = [];
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
    _initialValue =
        formUnit.isMultipleValueAllowed!
            ? _formState.initialValue[attribute] ?? formUnit.defaultValue ?? []
            : _formState.initialValue[attribute] != null
            ? [_formState.initialValue[attribute]]
            : formUnit.defaultValue ?? [];
  }

  void onChange() {
    _formState.setInternalFieldValue(
      attribute,
      formUnit.isMultipleValueAllowed!
          ? _initialValue
          : _initialValue.isEmpty
          ? null
          : _initialValue.first,
    );
    _formState.validate();
  }

  @override
  Widget build(BuildContext context) {
    return FormField<List<dynamic>>(
      key: _fieldKey,
      initialValue: _initialValue,
      validator: FormValidatorLogic.compose([
        if (formUnit.validators != null && formUnit.validators!.isNotEmpty)
          ...formUnit.validators!.map(
            (val) => getValidators(qFormValidator: val),
          ),
      ]),
      onSaved: (val) {
        onChange();
      },
      builder: (FormFieldState<List<dynamic>> field) {
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
    return Wrap(
      children: [
        ...formUnit.itemList!.map((item) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                HapticFeedback.heavyImpact();
                setState(() {
                  if (formUnit.isMultipleValueAllowed!) {
                    if (_initialValue.contains(item)) {
                      _initialValue.remove(item);
                    } else {
                      _initialValue.add(item);
                    }
                  } else {
                    if (_initialValue.contains(item)) {
                      _initialValue = [];
                    } else {
                      _initialValue = [item];
                    }
                  }
                });
                onChange();
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color:
                        !_initialValue.contains(item)
                            ? Theme.of(context).unselectedWidgetColor
                            : Theme.of(context).primaryColor,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 16,
                  ),
                  child: formUnit.itemBuilder!(context, item),
                ),
              ),
            ),
          );
        }),
      ],
    );
  }
}
