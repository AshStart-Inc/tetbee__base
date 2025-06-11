import 'package:flutter/material.dart';
import 'package:tetbee__base/theme/theme_constants.dart';
import 'package:tetbee__base/utils/enums.dart';

ThemeData getThemeByThemeType(
  AppTheme appTheme, {
  String? fontFamily,
  double? baseFontSize = 8,
}) {
  return ThemeConstants.generateTheme(
    appTheme,
    fontFamily: fontFamily,
    baseFontSize: baseFontSize!,
  );
}

BoxShadow mainScreenBoxShadow = BoxShadow(
  color: Colors.black.withOpacity(0.8),
  spreadRadius: 1,
  blurRadius: 5,
  offset: const Offset(0, 3), // changes position of shadow
);
BoxShadow secondBoxShadow = BoxShadow(
  color: Colors.black.withOpacity(0.5),
  spreadRadius: 1,
  blurRadius: 5,
  offset: const Offset(0, 3), // changes position of shadow
);
BoxShadow forthBoxShadow = const BoxShadow(
  color: Colors.white,
  spreadRadius: 1,
  blurRadius: 5,
  offset: Offset(0, 3), // changes position of shadow
);
BoxShadow thirdBoxShadow = BoxShadow(
  color: Colors.black.withOpacity(0.2),
  spreadRadius: 1,
  blurRadius: 5,
  offset: const Offset(0, 3), // changes position of shadow
);
ThemeData appManualLightTheme = ThemeData().copyWith(
  splashColor: Colors.transparent,
  // hoverColor: Colors.transparent,
  // canvasColor: Colors.transparent,
  // primaryColorLight: Colors.red.withOpacity(0.8),
  // // primaryColorDark: Color(0xffDCF542),
  // primaryColorDark: Color(0xffffc412),
  // errorColor: Colors.pink[600],
  // // scaffoldBackgroundColor: Color(0xff222224),
  // scaffoldBackgroundColor: Colors.grey[200],
  // // scaffoldBackgroundColor: Colors.yellow,
  // primaryColor: Color(0xff2EBAFB),
  // highlightColor: Colors.transparent,
  // //  const Color(
  // //   0xffD8FA03, //icon color// button text and border color
  // // ),
  // colorScheme: ThemeData.dark().colorScheme.copyWith(
  //       onSurface: Color(0xff272B34),
  //       onSecondary: Colors.pink[600],
  //       background: Color(0xff110002),
  //       onError: Colors.red,
  //       onPrimary: Color.fromARGB(255, 11, 73, 13), //bool picker selected color
  //     ),
  textTheme: ThemeData.light().textTheme.copyWith(),
  iconTheme: ThemeData.dark().iconTheme.copyWith(
    color: const Color(0xffEAEAEA), //main screne text
  ),
);
