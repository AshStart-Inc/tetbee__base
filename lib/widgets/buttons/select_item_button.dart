import 'package:flutter/material.dart';
import 'package:tetbee__base/theme/theme_extension.dart';

class SelectItemButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final Color? iconColor;
  final IconData? iconData;
  final Function onTap;
  final double width;
  final bool showIcon;
  final double? height;
  final Color? buttonColor;
  const SelectItemButton({
    required this.text,
    required this.onTap,
    required this.isSelected,
    this.iconData,
    this.iconColor,
    this.showIcon = true,
    this.width = 140,
    this.height,
    super.key,
    this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: InkWell(
        onTap: () {
          onTap();
        },
        child: AnimatedContainer(
          // curve: Curves.decelerate,
          duration: Duration(milliseconds: 80),
          width: isSelected ? width : 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.black38,
              width: isSelected ? 4 : 0,
            ),
            color:
                isSelected
                    ? buttonColor ?? Theme.of(context).cardColor
                    : buttonColor?.withOpacity(0.4) ??
                        Theme.of(context).cardColor.withOpacity(0.4),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                isSelected
                    ? Center(
                      child: Text(
                        text,
                        style: Theme.of(
                          context,
                        ).primaryTextTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).baseTextColor,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                    : iconData == null
                    ? Center(
                      child: Text(
                        text[0],
                        style: Theme.of(context).textTheme.displaySmall!
                            .copyWith(fontSize: 10, color: Colors.white),
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                    : showIcon
                    ? Center(
                      child: Icon(
                        iconData,
                        color: iconColor ?? Theme.of(context).cardColor,
                      ),
                    )
                    : Center(
                      child: Text(
                        text,
                        style: Theme.of(context).textTheme.displaySmall!
                            .copyWith(fontSize: 10, color: Colors.white),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
          ),
        ),
      ),
    );

    // isSelected
    //     ? anido.JelloIn(
    //         child: child,
    //       )
    //     : child;
  }
}
