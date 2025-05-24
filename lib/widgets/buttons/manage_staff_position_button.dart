// ignore_for_file: depend_on_referenced_packages, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

// import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:tetbee__base/tetbee__base.dart';

class ManageStaffPositionButton extends StatelessWidget {
  final PositionModel positionModel;
  final bool isSelected;
  final Function? onTap;
  const ManageStaffPositionButton({
    required this.positionModel,
    this.onTap,
    required this.isSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: InkWell(
        onTap: () {
          onTap?.call();
        },
        child: Container(
          constraints: BoxConstraints(minWidth: 80),
          decoration: BoxDecoration(
            border:
                isSelected
                    ? Border.all(width: 5, color: positionModel.color!)
                    : Border.all(width: 5, color: Colors.grey.withOpacity(0.5)),
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).primaryTextColor.withOpacity(0.5),
            // boxShadow: [thirdBoxShadow],
          ),
          child: Center(
            child: Text(
              positionModel.name,
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
