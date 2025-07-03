import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:tetbee__base/form_manager/form_constants.dart';
import 'package:tetbee__base/form_manager/form_validator/form_validation_logic.dart';
import 'package:tetbee__base/form_manager/widgets/form_field_wrapper.dart';
import 'package:tetbee__base/tetbee__base.dart';

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
  late final TextEditingController textEditingController;
  late final FocusNode focusNode;
  FormFieldState<String>? formState;
  String? initialValue;
  @override
  void initState() {
    super.initState();
    _formState = FormBuilder.of(context);
    attribute = widget.formUnit.key;
    formUnit = widget.formUnit.value;
    initialValue = _formState?.initialValue[attribute];
    textEditingController = TextEditingController();
    textEditingController.text = initialValue ?? '';
    focusNode = FocusNode();
  }

  void onValueChange(String value, FormFieldState<String> state) {
    initialValue = value;
    state.didChange(initialValue);
    if (state.errorText != null) {
      state.validate();
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return FormField<String>(
      onSaved: (value) {
        if (formState?.errorText != null) {
          focusNode.requestFocus();
        }
        _formState!.setInternalFieldValue(attribute, value);
      },
      initialValue: initialValue,
      validator: FormValidatorLogic.compose([
        if (formUnit.validators != null && formUnit.validators!.isNotEmpty)
          ...formUnit.validators!.map(
            (val) => getValidators(qFormValidator: val),
          ),
      ]),
      builder: (FormFieldState<String> state) {
        formState = state;
        Color borderColor =
            state.errorText == null
                ? Theme.of(context).baseTextColor
                : Theme.of(context).colorScheme.error;
        return FormFieldWrapper(
          errorText: state.errorText,
          label: formUnit.label,
          subLabel: formUnit.subLabel,
          trailingWidget: formUnit.trailingWidget,
          formField: SizedBox(
            height: formUnit.maxLines! > 1 ? null : FormConstants.baseHeight,
            child: TextField(
              maxLines: formUnit.maxLines,
              keyboardType: formUnit.textInputType,
              focusNode: focusNode,
              controller: textEditingController,
              onChanged: (v) => onValueChange(v, state),
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
              buildCounter: (
                BuildContext context, {
                required int currentLength,
                required bool isFocused,
                required int? maxLength,
              }) {
                return null;
              },
              decoration: InputDecoration(
                hint: Text(
                  'Enter the ${formUnit.label}...',
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: Theme.of(context).unselectedWidgetColor,
                  ),
                ),
                isDense: true,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: borderColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: borderColor, width: 1.5),
                  borderRadius: BorderRadius.circular(8),
                ),
                contentPadding: EdgeInsets.all(8),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: borderColor, width: 1.5),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
