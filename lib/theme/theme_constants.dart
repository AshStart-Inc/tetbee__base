import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tetbee__base/utils/enums.dart';

class ThemeConstants {
  //commonColor
  static double appbaseFontSize = 8;

  static Color yellowColor1 = const Color(0xffffc412);
  static Color yellowColor2 = const Color(0xfffedc56);

  // const Color(0xfffedc56);

  // const Color(0xfffdfd96);

  // const Color(0xffeedc82);
  //  const Color(0xffFADA5E);

  // const Color(0xffFCC808).withOpacity(0.8);
  // static Color yellowColor2 = const Color(0xffFCC808);

  // static Color yellowColor2 = const Color(0xffF5D552);

  static Color redColor1 = Colors.red.withOpacity(0.8);
  static Color redColor2 = Color(0xffDC143C);
  static Color lightThemeBaseFontColor = Colors.black;

  //light theme
  static Color primaryBlueColor = const Color(0xffffc412);

  // const Color(0xffFCF185);
  // const Color(0xff69c7fa);
  // const Color(0xff2EBAFB);

  static Color lightBaseFontColor = Colors.black;

  //dark theme
  static Color primaryDarkColor = const Color(0xff121111);
  static Color darkBaseFontColor = Colors.white;

  static ThemeData generateTheme(
    AppTheme appTheme, {
    String? fontFamily,
    double baseFontSize = 8,
  }) {
    ThemeData baseTheme = getBaseTheme(appTheme);
    final Color primaryColor = getPrimaryColor(appTheme);
    final Color carColor = getCardColor(appTheme);
    final Color scaffoldBackgroundColor = getScaffoldColor(appTheme);
    final Color baseFontColor = getBaseFontColor(appTheme);
    final Color baseOppositFontColor = getBaseFontColor(
      appTheme,
      isOpposit: true,
    );
    final Color baseBorderColor = getBaseBorderColor(appTheme);

    final Color specialColor = getSpecialColor(appTheme);
    return baseTheme.copyWith(
      // primaryColor: primaryColor,
      primaryColor: Color(0xFFF5C518),
      // scaffoldBackgroundColor: Colors.black,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Color(0xFFF5C518),
        brightness: Brightness.dark,
        outline: baseBorderColor,
        onTertiary: Colors.lightBlue,
        onPrimaryContainer: const Color(0xff6b3e2e),
        onSurface: const Color(0xff272B34),
        onSecondary: Colors.pink[600],
        secondary: specialColor,
        background: const Color(0xff110002),
        onError: ThemeConstants.redColor2,
        error: Color(0xffB22222),
        primaryContainer: primaryColor,
        primary: Colors.lightBlue.withOpacity(0.5),
        onPrimary: const Color.fromARGB(
          255,
          11,
          73,
          13,
        ), //bool picker selected color
      ),

      //
      splashColor: Colors.transparent,
      expansionTileTheme: getBaseTheme(
        appTheme,
      ).expansionTileTheme.copyWith(iconColor: baseFontColor),
      checkboxTheme: baseTheme.checkboxTheme.copyWith(
        checkColor: MaterialStateProperty.resolveWith((states) {
          return baseOppositFontColor;
        }),
      ),
      hoverColor: Colors.transparent,
      // canvasColor: Colors.transparent,
      cupertinoOverrideTheme: NoDefaultCupertinoThemeData(),

      cardColor: carColor,
      sliderTheme: baseTheme.sliderTheme.copyWith(
        activeTrackColor: primaryColor,
        thumbColor: primaryColor,
        inactiveTrackColor: baseFontColor.withOpacity(0.3),
      ),
      datePickerTheme: baseTheme.datePickerTheme.copyWith(
        backgroundColor: baseOppositFontColor,
      ),
      dividerTheme: baseTheme.dividerTheme.copyWith(
        color: getDividerColor(appTheme),
      ),
      snackBarTheme: baseTheme.snackBarTheme.copyWith(
        backgroundColor: baseFontColor.withOpacity(0.8),
        actionTextColor: baseOppositFontColor,
      ),
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      primaryColorLight: ThemeConstants.redColor1,
      primaryColorDark: ThemeConstants.yellowColor1,

      // primaryColorDark: Color(0xffDCF542),
      // scaffoldBackgroundColor: Color(0xff222224),
      // scaffoldBackgroundColor: Colors.yellow,
      // highlightColor: Colors.transparent,
      //  const Color(
      //   0xffD8FA03, //icon color// button text and border color
      // ),

      // primaryIconTheme: ThemeData.dark().primaryIconTheme.copyWith(
      //       color: Color(0xffDCF542),
      //     ),
      primaryIconTheme: ThemeData.dark().primaryIconTheme.copyWith(
        // color: Color(0xffffc412),
        color: const Color(0xffffc412),
      ),
      // inputDecorationTheme: ThemeData.dark().inputDecorationTheme.copyWith(
      //       labelStyle: TextStyle(
      //         color: Colors.grey,
      //         fontSize: 15,
      //       ),
      //     ),
      dividerColor: getDividerColor(appTheme),
      primaryTextTheme: ThemeData.dark().primaryTextTheme.copyWith(
        headlineLarge: TextStyle(color: baseOppositFontColor),
        headlineMedium: TextStyle(color: baseOppositFontColor),
        headlineSmall: TextStyle(color: baseOppositFontColor),
        titleLarge: TextStyle(
          fontSize: appbaseFontSize * 3.0,
          color: baseOppositFontColor,
          fontWeight: FontWeight.bold,
        ),
        titleMedium: TextStyle(
          fontSize: appbaseFontSize * 2.3,
          fontWeight: FontWeight.bold,
          color: baseOppositFontColor,
        ),
        titleSmall: TextStyle(
          color: baseOppositFontColor,
          fontWeight: FontWeight.bold,
        ),
        labelLarge: TextStyle(color: baseOppositFontColor),
        labelMedium: TextStyle(
          fontSize: appbaseFontSize * 1.2,
          color: baseOppositFontColor,
          fontWeight: FontWeight.bold,
        ),
        labelSmall: TextStyle(
          letterSpacing: 0,
          color: baseOppositFontColor,
          fontSize: baseFontSize * 0.8,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: TextStyle(color: baseOppositFontColor),
        bodyMedium: TextStyle(color: baseOppositFontColor),
        bodySmall: TextStyle(
          fontSize: appbaseFontSize * 1.4,
          color: baseOppositFontColor.withOpacity(0.7),
        ),
        displayLarge: TextStyle(
          //loaidng screen
          fontSize: appbaseFontSize * 2.5,
          color: baseOppositFontColor,
          fontWeight: FontWeight.bold,
        ),
        displayMedium: TextStyle(
          //bottomsheet handler
          fontSize: appbaseFontSize * 2,
          color: baseOppositFontColor,
          fontWeight: FontWeight.bold,
        ),
        displaySmall: TextStyle(
          fontSize: appbaseFontSize,
          color: baseOppositFontColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      textTheme: ThemeData.light().textTheme.copyWith(
        headlineLarge: TextStyle(color: baseFontColor),
        headlineMedium: TextStyle(
          fontSize: appbaseFontSize * 3.8,
          color: baseFontColor,
        ),
        headlineSmall: TextStyle(color: baseFontColor),
        titleLarge: TextStyle(
          fontSize: appbaseFontSize * 3.0,
          color: baseFontColor,
          fontWeight: FontWeight.bold,
        ),
        titleMedium: TextStyle(
          fontSize: appbaseFontSize * 2.3,
          fontWeight: FontWeight.bold,
          color: baseFontColor,
        ),
        titleSmall: TextStyle(
          fontSize: appbaseFontSize * 1.5,
          color: baseFontColor,
          fontWeight: FontWeight.bold,
        ),
        labelLarge: TextStyle(
          color: baseFontColor,
          fontSize: appbaseFontSize * 1.6,
        ),
        labelMedium: TextStyle(
          fontSize: appbaseFontSize * 1.4,
          color: baseFontColor,
          fontWeight: FontWeight.bold,
        ),
        labelSmall: TextStyle(
          letterSpacing: 0,
          color: ThemeConstants.yellowColor1,
          fontSize: appbaseFontSize * 1.2,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: TextStyle(color: baseFontColor),
        bodyMedium: TextStyle(
          color: baseFontColor,
          fontWeight: FontWeight.bold,
          fontSize: appbaseFontSize * 1.8,
        ),
        bodySmall: TextStyle(
          //use is like caption
          fontSize: appbaseFontSize * 1.4,
          color: baseFontColor.withOpacity(0.6),
        ),
        displayLarge: TextStyle(color: baseFontColor),
        displayMedium: TextStyle(
          //bottomsheet handler
          fontSize: appbaseFontSize * 2,
          color: baseFontColor,
          fontWeight: FontWeight.bold,
        ),
        displaySmall: TextStyle(
          //bottomsheet handler
          fontSize: appbaseFontSize * 1.2,
          color: baseFontColor,
        ),
      ),
      iconTheme: ThemeData.dark().iconTheme.copyWith(
        color: const Color(0xffEAEAEA), //main screne text
      ),
    );
  }

  static ThemeData getBaseTheme(AppTheme appTheme) {
    switch (appTheme) {
      case AppTheme.light:
        return ThemeData.light();
      case AppTheme.dark:
        return ThemeData.dark();
    }
  }

  static Color getPrimaryColor(AppTheme appTheme) {
    switch (appTheme) {
      case AppTheme.light:
        return ThemeConstants.yellowColor2;
      case AppTheme.dark:
        return ThemeConstants.primaryDarkColor;
    }
  }

  static Color getBaseFontColor(AppTheme appTheme, {bool isOpposit = false}) {
    switch (appTheme) {
      case AppTheme.light:
        return isOpposit
            ? ThemeConstants.darkBaseFontColor
            : ThemeConstants.lightBaseFontColor;
      case AppTheme.dark:
        return isOpposit
            ? ThemeConstants.lightBaseFontColor
            : ThemeConstants.darkBaseFontColor;
    }
  }

  static Color getSpecialColor(AppTheme appTheme, {bool isOpposit = false}) {
    switch (appTheme) {
      case AppTheme.light:
        return Colors.black.withOpacity(0.8);
      case AppTheme.dark:
        return Colors.white;
    }
  }

  static Color getCardColor(AppTheme appTheme) {
    switch (appTheme) {
      case AppTheme.light:
        return ThemeConstants.yellowColor2;
      case AppTheme.dark:
        return ThemeConstants.primaryDarkColor;
    }
  }

  static Color getScaffoldColor(AppTheme appTheme) {
    switch (appTheme) {
      case AppTheme.light:
        return const Color(0xffFAF9F6);
      // const Color(0xffF5F2F2);
      case AppTheme.dark:
        return Colors.grey[800]!;
    }
  }

  static Color getBaseBorderColor(AppTheme appTheme) {
    switch (appTheme) {
      case AppTheme.light:
        return Colors.black;
      case AppTheme.dark:
        return Colors.white;
    }
  }

  static Color getDividerColor(AppTheme appTheme) {
    switch (appTheme) {
      case AppTheme.light:
        return Colors.grey.withOpacity(0.15);
      case AppTheme.dark:
        return Colors.white10;
    }
  }
}
