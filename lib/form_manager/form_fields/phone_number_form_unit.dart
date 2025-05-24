// ignore_for_file: must_call_super

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:tetbee__base/form_manager/form_unit/form_unit.dart';
import 'package:tetbee__base/form_manager/widgets/form_field_wrapper.dart';
import 'package:tetbee__base/models/common/phone_number_model.dart';

PhoneNumberModel _initialPhoneNumber = PhoneNumberModel(
  isoCode: "CA",
  phoneNumber: '4379728180',
);

class PhoneNumberFormUnit extends StatefulWidget {
  final MapEntry<String, FormUnit> formUnit;

  const PhoneNumberFormUnit({super.key, required this.formUnit});

  @override
  _PhoneNumberFormUnitState createState() => _PhoneNumberFormUnitState();
}

class _PhoneNumberFormUnitState extends State<PhoneNumberFormUnit> {
  FormBuilderState? _formState;
  late final String attribute;
  late final FormUnit formUnit;
  final GlobalKey<FormFieldState> _fieldKey = GlobalKey<FormFieldState>();
  late Map<String, dynamic> _initialValue;
  @override
  void initState() {
    super.initState();
    _formState = FormBuilder.of(context);
    attribute = widget.formUnit.key;
    formUnit = widget.formUnit.value;
    _initialValue =
        _formState!.initialValue[attribute] ?? _initialPhoneNumber.toJson();
  }

  @override
  Widget build(BuildContext context) {
    return FormFieldWrapper(
      label: formUnit.label,
      formField: IntlPhoneField(
        decoration: InputDecoration(
          labelText: 'Phone Number',
          border: OutlineInputBorder(borderSide: BorderSide()),
        ),
        languageCode: "en",
        onChanged: (phone) {
          print(phone.completeNumber);
        },
        onCountryChanged: (country) {
          print('Country changed to: ' + country.name);
        },
        // countries: const [Country(code: ,), "KR", "JP", "CN", "HK", "VN", "US", "TW"],
        // initialValue: PhoneNumber(
        //   isoCode: _initialValue['isoCode'],
        //   dialCode: _initialValue['dialCode'],
        //   phoneNumber: _initialValue['phoneNumber'],
        // ),
        // onInputChanged: (PhoneNumber number) {
        //   var result = <String, dynamic>{
        //     'isoCode': number.isoCode,
        //     'dialCode': number.dialCode,
        //     'phoneNumber': number.phoneNumber,
        //   };
        //   _initialValue = result;
        // },
        // validator: FormValidatorLogic.compose([
        //   if (formUnit.validators != null && formUnit.validators!.isNotEmpty)
        //     ...formUnit.validators!.map(
        //       (val) => getValidators(qFormValidator: val),
        //     ),
        // ]),
        // selectorConfig: const SelectorConfig(
        //   selectorType: PhoneInputSelectorType.DROPDOWN,
        // ),
        // textStyle: const TextStyle(color: Colors.black),
        // ignoreBlank: true,
        // autoValidateMode: AutovalidateMode.disabled,
        // selectorTextStyle: const TextStyle(color: Colors.black),
        // formatInput: true,
        // keyboardType: TextInputType.number,
        // inputBorder: OutlineInputBorder(),
        // onSaved: (PhoneNumber number) async {
        //   _formState?.setInternalFieldValue(attribute, _initialValue);
        // },
      ),
    );
  }
}
