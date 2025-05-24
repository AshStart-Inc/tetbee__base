import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final IconData iconData;
  final Function onTap;
  final String? text;
  final Widget? tagWidget;
  final Color? color;
  final Color? iconColor;
  final double? size;
  final bool withPading;
  final String? toolTipMessage;
  final bool withContainer;
  const HomeButton({
    super.key,
    required this.iconData,
    required this.onTap,
    this.tagWidget,
    this.text,
    this.color,
    this.size = 35,
    this.iconColor,
    this.withPading = true,
    this.withContainer = true,
    this.toolTipMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: toolTipMessage ?? '',
      child: InkWell(
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        onTap: () {
          onTap.call();
        },
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                if (!withContainer)
                  Center(
                    child: Icon(iconData, size: size! * 0.6, color: iconColor),
                  ),
                if (withContainer)
                  Container(
                    margin: EdgeInsets.all(withPading ? 5.5 : 0),
                    width: size,
                    height: size,
                    decoration: BoxDecoration(
                      color:
                          color ?? Theme.of(context).cardColor.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Icon(
                        iconData,
                        size: size! * 0.6,
                        color:
                            iconColor ??
                            Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),
                if (text != null)
                  Padding(
                    padding: EdgeInsets.all(withPading ? 5.5 : 0),
                    child: Container(
                      height: 15,
                      width: size,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black87,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 2,
                          vertical: 2,
                        ),
                        child: Center(
                          child: Text(
                            text!,
                            style: Theme.of(context).textTheme.labelSmall!
                                .copyWith(fontSize: text!.length > 6 ? 5 : 7),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            if (tagWidget != null) tagWidget!,
          ],
        ),
      ),
    );
  }
}
