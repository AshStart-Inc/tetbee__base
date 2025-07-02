import 'package:flutter/material.dart';
import 'package:tetbee__base/models/work_place/position_model.dart';

class PositionCricleWidget extends StatelessWidget {
  final double? size;
  final PositionModel positionModel;
  final bool showFullName;
  final double? fontSize;
  const PositionCricleWidget({
    super.key,
    required this.positionModel,
    this.size = 18,
    this.showFullName = false,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return showFullName
        ? Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            boxShadow: [
              BoxShadow(
                color: Theme.of(
                  context,
                ).unselectedWidgetColor.withValues(alpha: 0.3),
                offset: Offset(1, 1),
              ),
            ],
            borderRadius: BorderRadius.circular(10),
            color: (positionModel.color ?? Theme.of(context).primaryColor)
                .withValues(alpha: 0.9),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            child: Text(
              showFullName ? positionModel.name : positionModel.name[0],
              style: Theme.of(context).primaryTextTheme.labelSmall!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize:
                    fontSize ??
                    (!showFullName || positionModel.name.length < 8 ? 8 : 7),
              ),
            ),
          ),
        )
        : Container(
          height: size,
          width: size,
          decoration: BoxDecoration(
            color: (positionModel.color ?? Theme.of(context).primaryColor)
                .withOpacity(0.9),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              showFullName ? positionModel.name : positionModel.name[0],
              style: Theme.of(context).primaryTextTheme.displayMedium!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            ),
          ),
        );
  }
}
