import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:tetbee__base/form_manager/form_unit/form_unit.dart';
import 'package:tetbee__base/form_manager/widgets/form_field_wrapper.dart';

class BooleanFormUnit extends StatefulWidget {
  final MapEntry<String, FormUnit> formUnit;
  const BooleanFormUnit({super.key, required this.formUnit});

  @override
  BooleanFormUnitState createState() => BooleanFormUnitState();
}

class BooleanFormUnitState extends State<BooleanFormUnit> {
  late final FormBuilderState _formState;
  late final String attribute;
  late final FormUnit formUnit;
  late bool _initialValue;

  @override
  void initState() {
    super.initState();
    attribute = widget.formUnit.key;
    formUnit = widget.formUnit.value;
    _formState = FormBuilder.of(context)!;
    _initialValue = _formState.initialValue[attribute] ?? formUnit.defaultValue;
  }

  @override
  Widget build(BuildContext context) {
    Widget button = InkWell(
      onTap: () {
        setState(() {
          _initialValue = !_initialValue;
          _formState.setInternalFieldValue(attribute, _initialValue);
        });
      },
      child: Icon(
        _initialValue ? Icons.check_circle_rounded : Icons.cancel_outlined,
        color:
            _initialValue
                ? Theme.of(context).colorScheme.onPrimary
                : Theme.of(
                  context,
                ).textTheme.headlineLarge!.color!.withOpacity(0.2),
        size: 30,
      ),
    );
    return FormField(
      initialValue: _initialValue,
      onSaved: (dynamic val) {
        _formState.setInternalFieldValue(attribute, _initialValue);
      },
      key: widget.key,
      builder: (FormFieldState val) {
        return InkWell(
          onTap: () {
            setState(() {
              _initialValue = !_initialValue;
            });
          },
          child: FormFieldWrapper(
            label: formUnit.label,
            formField: button,
            errorText: val.errorText,
            trailingWidget: formUnit.trailingWidget,
          ),
        );
      },
    );
  }
}
