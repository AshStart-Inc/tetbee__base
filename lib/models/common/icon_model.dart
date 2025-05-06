// ignore_for_file: invalid_annotation_target

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'icon_model.freezed.dart';
part 'icon_model.g.dart';

const int _radix = 16;
const IconData _errorIcon = FontAwesomeIcons.circleExclamation;

@freezed
class IconModel with _$IconModel {
  const factory IconModel({
    required int id,
    required String unicode,
    required String style,
    String? name,
    String? family,
  }) = _IconModel;

  const IconModel._();

  factory IconModel.fromJson(Map<String, dynamic> json) =>
      _$IconModelFromJson(json);

  IconData get toIconData {
    switch (style) {
      case 'Solid':
        return IconDataSolid(int.parse(unicode, radix: _radix));
      case 'Regular':
        return IconDataRegular(int.parse(unicode, radix: _radix));
      case 'Light':
        return IconDataLight(int.parse(unicode, radix: _radix));
      case 'Thin':
        return IconDataThin(int.parse(unicode, radix: _radix));
      case 'Duotone':
        return IconDataDuotone(int.parse(unicode, radix: _radix));
      default:
        return _errorIcon;
    }
  }

  static IconData get getErrorIcon => _errorIcon;
}
