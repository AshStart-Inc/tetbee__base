import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:tetbee__base/utils/helper.dart';
import 'package:tetbee__base/widgets/top_notification_widget.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class CustomDialog {
  static void showTopNotificationWidget(
    BuildContext context, {
    required String title,
    required String body,
    String? imageUrl,
    Function()? onTap,
    Function()? onDismissed,
  }) {
    HapticFeedback.heavyImpact();
    showTopSnackBar(
      Overlay.of(context),
      displayDuration: Duration(seconds: 1),
      onDismissed: onDismissed,
      onTap: onTap,
      Material(
        child: TopNotificationWidget(
          imageUrl: imageUrl,
          title: title,
          body: body,
        ),
      ),
    );
  }

  static Future showToast(
    String message, {
    Color textColor = Colors.white,
    Color backgroundColor = Colors.black,
    Toast toastLength = Toast.LENGTH_LONG,
    int timeInSecForIosWeb = 2,
    ToastGravity gravity = ToastGravity.BOTTOM,
  }) {
    return Fluttertoast.showToast(
      msg: message,
      toastLength: toastLength,
      timeInSecForIosWeb: timeInSecForIosWeb,
      gravity: gravity,
      backgroundColor: backgroundColor,
      textColor: textColor,
      // webBgColor: "linear-gradient(to right, #7f9dcc, #7f9dcc)",
    );
  }

  static void showCustomDialog({
    required String info,
    required BuildContext context,
    bool noHeight = false,
  }) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return Center(
          child: Container(
            height:
                noHeight ? null : Helpers.getMQHeight(context: context) * 0.3,
            width: Helpers.getMQWidth(context: context) * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  left: 20,
                  right: 20,
                  bottom: 30,
                ),
                child: Center(
                  child: Text(
                    info,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  static void showNewCustomDialog({
    required BuildContext context,
    required Widget widget,
    double? height,
    double? width,
    double? radius,
  }) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return Center(
          child: Container(
            height: height ?? 400,
            width: width ?? 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius ?? 10),
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            child: Padding(padding: const EdgeInsets.all(4.0), child: widget),
          ),
        );
      },
    );
  }

  static void twoButtonAlert({
    required BuildContext context,
    required String desc,
    required String? title,
    required AlertType alertType,
    required String firstButtonText,
    required String secondButtonText,
    required Function firstOnPressed,
    required Function secondOnPressed,
    Function? closeFunction,
    Function? completeFunction,
  }) {
    Alert(
      closeFunction: () {
        closeFunction?.call();
      },
      context: context,
      type: alertType,
      style: AlertStyle(
        titleStyle: Theme.of(context).textTheme.titleMedium!,
        descStyle: Theme.of(
          context,
        ).textTheme.bodySmall!.copyWith(fontSize: 15),
      ),
      title: title ?? '',
      desc: desc,
      buttons: [
        DialogButton(
          border: Border.fromBorderSide(
            BorderSide(
              color: Theme.of(context).primaryColor,
              width: 2,
              style: BorderStyle.solid,
            ),
          ),
          color: Theme.of(context).cardColor,
          onPressed: firstOnPressed as void Function()?,
          width: 120,
          child: Text(
            firstButtonText,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        DialogButton(
          border: Border.fromBorderSide(
            BorderSide(
              color: Theme.of(context).primaryColor,
              width: 2,
              style: BorderStyle.solid,
            ),
          ),
          color: Theme.of(context).primaryColor,
          onPressed: secondOnPressed as void Function()?,
          width: 120,
          child: Text(
            secondButtonText,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ).show().whenComplete(() {
      completeFunction?.call();
    });
  }

  static void oneButtonAlert({
    required BuildContext context,
    required String desc,
    required String? title,
    AlertType alertType = AlertType.info,
    required String buttonText,
    required Function onPressed,
    Function? onComplete,
    Widget? content,
  }) {
    Alert(
      context: context,
      type: alertType,
      content: content ?? const SizedBox.shrink(),
      style: AlertStyle(
        titleStyle: Theme.of(context).textTheme.titleMedium!,
        descStyle: Theme.of(
          context,
        ).textTheme.bodySmall!.copyWith(fontSize: 15),
      ),
      title: title ?? '',
      desc: desc,
      buttons: [
        DialogButton(
          border: Border.fromBorderSide(
            BorderSide(
              color: Theme.of(context).primaryColor,
              width: 2,
              style: BorderStyle.solid,
            ),
          ),
          color: Theme.of(context).primaryColor,
          onPressed: () {
            HapticFeedback.lightImpact();
            onPressed();
          },
          width: 120,
          child: Text(
            buttonText,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ).show().whenComplete(() {
      onComplete?.call();
    });
  }
}

class BottoSheetItemModel {
  final String text;
  final IconData? iconData;
  final IconData? prefixIcon;
  final Function? onTap;
  final Widget? destination;
  final Widget? trailingWidget;
  final Widget? prefixWidget;

  BottoSheetItemModel({
    required this.text,
    this.iconData,
    this.onTap,
    this.destination,
    this.trailingWidget,
    this.prefixIcon,
    this.prefixWidget,
  });
}

void showCustomFormBottomSheet({
  required BuildContext context,
  Color barrierColor = Colors.black38,
  Color? backgroundColor,
  Color? drawerHandlerColor,
  double height = 80,
  List<BottoSheetItemModel>? list,
  Widget? widget,
  bool showHandler = true,
  Function? onComplete,
}) {
  showModalBottomSheet(
    barrierColor: barrierColor,
    backgroundColor: Colors.transparent,
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: (widget == null ? list!.length * height : height) + 50,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          color: backgroundColor ?? Theme.of(context).scaffoldBackgroundColor,
        ),
        child: SafeArea(
          child: Column(
            children: [
              if (showHandler)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 5,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:
                                drawerHandlerColor ??
                                Theme.of(
                                  context,
                                ).textTheme.headlineLarge!.color,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          height: 5,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:
                                drawerHandlerColor ??
                                Theme.of(
                                  context,
                                ).textTheme.headlineLarge!.color,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              widget != null
                  ? Expanded(child: widget)
                  : Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ...list!.map(
                        (e) => InkWell(
                          onTap: () {
                            Navigator.pop(context);
                            if (e.onTap != null) {
                              e.onTap!();
                            } else {
                              Helpers.materialPageRoute(
                                context: context,
                                destination: e.destination!,
                              );
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:
                                      e.prefixWidget ?? const SizedBox.shrink(),
                                ),
                                if (e.prefixIcon != null)
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(e.prefixIcon),
                                  ),
                                Text(e.text),
                                const Spacer(),
                                if (e.trailingWidget != null)
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: e.trailingWidget!,
                                  ),
                                if (e.iconData != null)
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      e.iconData,
                                      color:
                                          Theme.of(
                                            context,
                                          ).colorScheme.secondary,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
            ],
          ),
        ),
      );
    },
  ).whenComplete(() {
    onComplete?.call();
  });
}

void showCustomIconFormBottomSheet({
  required BuildContext context,
  Color barrierColor = Colors.black38,
  double height = 80,
  required List<IconButtonModel> iconButtonModels,
}) {
  showModalBottomSheet(
    barrierColor: barrierColor,
    context: context,
    builder: (BuildContext context) {
      return Container(
        color: Theme.of(context).cardColor,
        height: 100,
        child: SafeArea(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ...iconButtonModels.map(
                (e) => InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Helpers.materialPageRoute(
                      context: context,
                      destination: e.destination,
                    );
                  },
                  child: Icon(e.iconData),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

class CustomSmallIconButton extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Function onTap;
  final bool smallMode;
  final double? width;
  const CustomSmallIconButton({
    super.key,
    required this.onTap,
    required this.iconData,
    required this.text,
    this.width,
    this.smallMode = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          width: width ?? (smallMode ? 30 : 45),
          height: smallMode ? 30 : 45,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(30),
          ),
          child:
              smallMode
                  ? Icon(
                    iconData,
                    size: text.isEmpty ? 15 : 10,
                    color: Colors.white,
                  )
                  : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        iconData,
                        size: text.isEmpty ? 20 : 15,
                        color: Colors.white,
                      ),
                      text.isEmpty
                          ? Container()
                          : Text(
                            text,
                            style: const TextStyle(
                              fontSize: 7,
                              color: Colors.yellow,
                            ),
                          ),
                    ],
                  ),
        ),
      ),
    );
  }
}

class IconButtonModel {
  IconButtonModel({
    required this.iconData,
    required this.destination,
    required this.title,
  });

  final IconData iconData;
  final Widget destination;
  final String title;
}
