// Flutter imports:

//example
// FormCondition(
//             value: 3707764736,
//             attribute: 'color',
//             logicalOperator: LogicalOperator.isEqualTo,
//           ): LogicalOperator.or,
// FormCondition(
//             value: 3707764736,
//             attribute: 'color',
//             logicalOperator: LogicalOperator.isEqualTo,
//           ): null,

import 'package:tetbee__base/form_manager/form_manager_export.dart';

enum LogicalOperator {
  end,
  and,
  or,
  isEqualTo,
  isNotEqualTo,
  isLessThan,
  isLessThanOrEqualTo,
  isGreaterThan,
  isGreaterThanOrEqualTo,
  contains,
}

class FormCondition {
  FormCondition({
    required this.logicalOperator,
    required this.value,
    // @required this.builderFormFieldType,
    this.attribute,
  });

  LogicalOperator logicalOperator;

  dynamic value;
  // BuilderFormFieldType? builderFormFieldType;

  String? attribute;

  bool? getCondition({
    dynamic initialValue,
    bool? condition1,
    bool? condition2,
  }) {
    switch (logicalOperator) {
      case LogicalOperator.isEqualTo:
        return initialValue == value;
      case LogicalOperator.isNotEqualTo:
        return initialValue != value;
      case LogicalOperator.isLessThan:
        return initialValue < value;
      case LogicalOperator.isLessThanOrEqualTo:
        return initialValue <= value;
      case LogicalOperator.isGreaterThan:
        return initialValue > value;
      case LogicalOperator.isGreaterThanOrEqualTo:
        return initialValue >= value;
      case LogicalOperator.contains:
        return initialValue.contains(value);
      default:
        return false;
    }
  }
}

bool _getAndOrCondition({
  required LogicalOperator? logicalOperator,
  required bool condition1,
  required bool? condition2,
}) {
  switch (logicalOperator) {
    case LogicalOperator.and:
      return condition1 && condition2!;
    case LogicalOperator.or:
      return condition1 || condition2!;
    default:
      return false;
  }
}

bool? getFormCondition({
  required Map<String, dynamic> formValues,
  required Map<FormCondition, LogicalOperator>? formConditions,
  required dynamic initialValue,
  Map<String?, FormUnit?>? builderFieldsForm,
}) {
  if (formConditions!.length == 1 &&
      formConditions.keys.first.attribute == null) {
    return formConditions.keys.first.value;
  }
  final conditions = {};
  bool? result = false;
  // ignore: unnecessary_null_comparison
  if (formConditions != null) {
    formConditions.keys.toList().asMap().forEach((
      key,
      FormCondition formCondition,
    ) {
      dynamic initialValue0 =
          formCondition.attribute != null &&
                  formValues.containsKey(formCondition.attribute)
              ? formValues[formCondition.attribute]
              : builderFieldsForm?[formCondition.attribute];

      conditions[key] = {
        formCondition.getCondition(initialValue: initialValue0):
            formConditions[formCondition],
      };
    });
  }
  if (conditions.length == 1 ||
      conditions.values.first.values.first == LogicalOperator.end) {
    result = conditions[0]!.keys.first;
  } else {
    for (int i = 0; i < conditions.length; i++) {
      LogicalOperator? currentLogicalOperator = conditions[i]!.values.first;
      bool currentCondition = conditions[i]!.keys.first!;
      LogicalOperator? previousLogicalOperator;
      bool? previousCondition;

      if (!currentCondition && currentLogicalOperator == LogicalOperator.and) {
        result = false;
        break;
      }
      if (i != 0 && i + 1 <= conditions.length) {
        previousLogicalOperator = conditions[i - 1]!.values.first;
        previousCondition = conditions[i - 1]!.keys.first;

        result = _getAndOrCondition(
          logicalOperator: previousLogicalOperator,
          condition1: currentCondition,
          condition2: previousCondition,
        );
      }
    }
  }

  return result;
}
