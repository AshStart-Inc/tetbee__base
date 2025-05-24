import 'package:tetbee__base/form_manager/form_validator/form_validation_logic.dart';

enum CustomFormValidatorType {
  isRequired,
  isMinLen,
  isMaxLen,
  isEmail,
  isPattern,
}

class CustomFormValidator {
  CustomFormValidator({required this.customFormValidatorType});

  CustomFormValidator.required({this.errorText})
    : customFormValidatorType = CustomFormValidatorType.isRequired;

  CustomFormValidator.isMinLen({required this.value, this.errorText})
    : customFormValidatorType = CustomFormValidatorType.isMinLen;

  CustomFormValidator.isMaxLen({required this.value, this.errorText})
    : customFormValidatorType = CustomFormValidatorType.isMaxLen;

  CustomFormValidator.isEmail({this.errorText})
    : customFormValidatorType = CustomFormValidatorType.isEmail;

  CustomFormValidator.isPattern({required this.value, this.errorText})
    : customFormValidatorType = CustomFormValidatorType.isPattern;

  final CustomFormValidatorType customFormValidatorType;
  dynamic value;
  String? errorText;

  // --This value is using for Last Name, First Name, Pronoun and Title
  static const nameFieldMaximumValue = 64;
  static const String phoneNumberPattern =
      r'^\([0-9]{3}\) ([0-9]{3})-([0-9]{4})$';
  static const String notAllowNumberAndSpecialCharacterPattern =
      r'^[a-zA-Z\u00C0-\u024F -]+$';
  static const isNumeric = r'^-?\d+(\.\d+)?$';
  static const String addressPattern = r'^[\w\d\s,#-]+$';
  static const String zipcodeUSPattern = r'^(?!0{3})\d{5}(?:-?\d{4})?$';
  static const String zipcodeCanadaPattern =
      r'^[ABCEGHJKLMNPRSTVXYabceghjklmnprstvxy]\d[ABCEGHJKLMNPRSTVWXYZabceghjklmnprstvwxyz]\s?\d[ABCEGHJKLMNPRSTVWXYZabceghjklmnprstvwxyz]\d$';
}

dynamic getValidators({required CustomFormValidator qFormValidator}) {
  switch (qFormValidator.customFormValidatorType) {
    case CustomFormValidatorType.isRequired:
      return FormValidatorLogic.required(
        errorText: qFormValidator.errorText ?? 'This field can\'t be empty.',
      );
    case CustomFormValidatorType.isMaxLen:
      return FormValidatorLogic.maxLength<dynamic>(
        qFormValidator.value!,
        errorText: qFormValidator.errorText ?? '',
      );
    case CustomFormValidatorType.isMinLen:
      return FormValidatorLogic.minLength<dynamic>(
        qFormValidator.value,
        errorText: qFormValidator.errorText ?? '',
      );
    case CustomFormValidatorType.isEmail:
      return FormValidatorLogic.email(
        errorText:
            qFormValidator.errorText ?? 'This field must be email format.',
      );

    case CustomFormValidatorType.isPattern:
      return FormValidatorLogic.match(
        qFormValidator.value,
        errorText: qFormValidator.errorText ?? '',
      );
  }
}
