import 'package:flutter/material.dart';

// Package imports:
import 'package:flex_color_picker/flex_color_picker.dart' as picker;
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:tetbee__base/form_manager/form_unit/form_unit.dart';
import 'package:tetbee__base/form_manager/form_validator/custom_form_validator.dart';
import 'package:tetbee__base/form_manager/form_validator/form_validation_logic.dart';
import 'package:tetbee__base/form_manager/widgets/form_field_wrapper.dart';

// Define some custom colors for the custom picker segment.
// The 'guide' color values are from
// https://material.io/design/color/the-color-system.html#color-theme-creation
const Color guidePrimary = Color(0xFF6200EE);
const Color guidePrimaryVariant = Color(0xFF3700B3);
const Color guideSecondary = Color(0xFF03DAC6);
const Color guideSecondaryVariant = Color(0xFF018786);
const Color guideError = Color(0xFFB00020);
const Color guideErrorDark = Color(0xFFCF6679);
const Color blueBlues = Color(0xFF174378);

// Make a custom ColorSwatch to name map from the above custom colors.
final Map<ColorSwatch<Object>, String> colorsNameMap =
    <ColorSwatch<Object>, String>{
      picker.ColorTools.createPrimarySwatch(guidePrimary): 'Guide Purple',
      picker.ColorTools.createPrimarySwatch(guidePrimaryVariant):
          'Guide Purple Variant',
      picker.ColorTools.createAccentSwatch(guideSecondary): 'Guide Teal',
      picker.ColorTools.createAccentSwatch(guideSecondaryVariant):
          'Guide Teal Variant',
      picker.ColorTools.createPrimarySwatch(guideError): 'Guide Error',
      picker.ColorTools.createPrimarySwatch(guideErrorDark): 'Guide Error Dark',
      picker.ColorTools.createPrimarySwatch(blueBlues): 'Blue blues',
    };

class ColorFormUnit extends StatefulWidget {
  const ColorFormUnit({super.key, required this.formUnit});
  final MapEntry<String, FormUnit> formUnit;

  @override
  // ignore: library_private_types_in_public_api
  _ColorFormUnitState createState() => _ColorFormUnitState();
}

class _ColorFormUnitState extends State<ColorFormUnit> {
  int? _initialValue;
  late final FormBuilderState _formState;
  final GlobalKey<FormFieldState> _fieldKey = GlobalKey<FormFieldState>();
  late final String attribute;
  late final FormUnit formUnit;

  Map<String, dynamic>? map;
  bool showColorPicker = false;
  @override
  void initState() {
    attribute = widget.formUnit.key;
    formUnit = widget.formUnit.value;
    _formState = FormBuilder.of(context)!;
    _initialValue = _formState.initialValue[attribute] ?? Colors.black.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FormField<int>(
      key: _fieldKey,
      initialValue: _initialValue,
      validator: FormValidatorLogic.compose([
        if (formUnit.validators != null && formUnit.validators!.isNotEmpty)
          ...formUnit.validators!.map(
            (val) => getValidators(qFormValidator: val),
          ),
      ]),
      onSaved: (val) {
        _formState.setInternalFieldValue(attribute, _initialValue);
      },

      builder: (FormFieldState<int> field) {
        return FormFieldWrapper(
          label: formUnit.label,
          formField: CustomColorPickerWidget(
            initialValue: field.value ?? Colors.black.value,
            onChange: (Color color) {
              map = <String, dynamic>{'color': color.value};
              field.didChange(color.value);
              _initialValue = color.value;
            },
          ),
          errorText: field.errorText,
        );
      },
    );
  }
}

Future<bool> colorPickerDialog(
  BuildContext context,
  FormFieldState<int>? field,
  int initialValue,
  Function(Color) onChange,
) async {
  return picker.ColorPicker(
    color: Color(initialValue),
    onColorChanged: (Color color) {
      onChange(color);
    },
    width: 40,
    height: 40,
    borderRadius: 4,
    spacing: 5,
    runSpacing: 5,
    wheelDiameter: 155,
    heading: Text(
      'Select color',
      style: Theme.of(context).textTheme.labelMedium,
    ),
    subheading: Text(
      'Select color shade',
      style: Theme.of(context).textTheme.labelMedium,
    ),
    showMaterialName: true,
    showColorName: true,
    showColorCode: true,
    materialNameTextStyle: Theme.of(context).textTheme.bodySmall,
    colorNameTextStyle: Theme.of(context).textTheme.bodySmall,
    colorCodeTextStyle: Theme.of(context).textTheme.bodySmall,
    colorCodePrefixStyle: Theme.of(context).textTheme.bodySmall,
    selectedPickerTypeColor: Theme.of(context).colorScheme.primary,
    pickersEnabled: const <picker.ColorPickerType, bool>{
      picker.ColorPickerType.both: false,
      picker.ColorPickerType.primary: true,
      picker.ColorPickerType.accent: true,
      picker.ColorPickerType.bw: false,
      picker.ColorPickerType.custom: true,
      picker.ColorPickerType.wheel: false,
    },
    customColorSwatchesAndNames: colorsNameMap,
  ).showPickerDialog(
    context,
    constraints: const BoxConstraints(
      minHeight: 460,
      minWidth: 300,
      maxWidth: 320,
    ),
  );
}

class CustomColorPickerWidget extends StatefulWidget {
  const CustomColorPickerWidget({
    super.key,
    required this.initialValue,
    required this.onChange,
  });
  final int initialValue;
  final Function(Color) onChange;

  @override
  _CustomColorPickerWidgetState createState() =>
      _CustomColorPickerWidgetState();
}

class _CustomColorPickerWidgetState extends State<CustomColorPickerWidget> {
  bool? opacity;
  @override
  void initState() {
    super.initState();
    opacity = Color(widget.initialValue).opacity != 1;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 300,
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    '0x${picker.ColorTools.colorCode(Color(widget.initialValue))}',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  leading: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey.withOpacity(0.2)),
                    ),
                    child: picker.ColorIndicator(
                      width: 44,
                      height: 44,
                      borderRadius: 4,
                      color: Color(widget.initialValue),
                      onSelect: () async {
                        if (!(await colorPickerDialog(
                          context,
                          null,
                          widget.initialValue,
                          (Color color) {
                            widget.onChange(color);
                          },
                        ))) {
                        } else {}
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomSlider extends StatelessWidget {
  const CustomSlider({
    Key? key,
    required this.initialValue,
    required this.labelText,
    this.onChanged,
    this.max = 10,
    this.min = 0,
    required this.divisions,
    this.fractionDigits = 2,
    this.showValue = true,
  }) : super(key: key);
  final bool showValue;

  final double? initialValue;
  final String? labelText;
  final double? max;
  final double? min;
  final Function(double)? onChanged;
  final int? divisions;
  final int? fractionDigits;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (labelText != null) Text(labelText!),
          Slider(
            label: labelText,
            min: min!,
            max: max!,
            divisions: divisions!,
            value: initialValue!,
            onChanged: onChanged,
          ),
          Center(
            child: Text(
              initialValue!.toStringAsFixed(fractionDigits!),
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}

// class CustomToggleWidget extends StatelessWidget {
//   const CustomToggleWidget({
//     Key? key,
//     required this.toggleButtons,
//     required this.isSelected,
//     required this.onPressed,
//     this.fillColor,
//   }) : super(key: key);
//   final Color? fillColor;
//   final List<bool> isSelected;
//   final Map<String, QToggleButtonModel> toggleButtons;
//   final Function(int) onPressed;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: ToggleButtons(
//         fillColor: fillColor ?? Colors.blue[300],
//         borderRadius: BorderRadius.circular(10),
//         isSelected: isSelected,
//         children: [
//           ...toggleButtons.keys
//               .map((e) => Tooltip(
//                     message: toggleButtons[e]!.label,
//                     child: toggleButtons[e]!.icon,
//                   ))
//               .toList()
//         ],
//         onPressed: onPressed,
//       ),
//     );
//   }
// }

// class QToggleButtonModel {
//   final Icon icon;
//   final String label;
//   QToggleButtonModel({
//     required this.icon,
//     required this.label,
//   });

//   QToggleButtonModel copyWith({
//     Icon? icon,
//     String? label,
//   }) {
//     return QToggleButtonModel(
//       icon: icon ?? this.icon,
//       label: label ?? this.label,
//     );
//   }

//   QToggleButtonModel.fromMap(Map<String, dynamic> map)
//       : icon = map['icon'] != null
//             ? map['icon'] is IconData
//                 ? const Icon(
//                     Icons.color_lens,
//                   )
//                 : Icon(
//                     Icons.color_lens,
//                     color: Color(
//                       map['icon']?['color'] ?? Colors.blue.value,
//                     ),
//                   )
//             : const Icon(Icons.error),
//         label = map['label'] ?? '';

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'icon': {
//         'iconData': {
//           'codePoint': icon.icon!.codePoint,
//           'fontFamily': icon.icon!.fontFamily,
//         },
//         'color': icon.color?.value ?? Colors.black.value,
//       },
//       'label': label,
//     };
//   }
// }
