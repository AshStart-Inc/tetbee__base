import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart' as anido;

class UnreadInfoBadge extends StatelessWidget {
  final int count;
  final bool showJustTag;

  const UnreadInfoBadge({
    super.key,
    required this.count,
    this.showJustTag = false,
  });

  @override
  Widget build(BuildContext context) {
    return count == 0
        ? SizedBox(height: 1, width: 1)
        : anido.ZoomIn(
          child: Container(
            height: 22,
            width: 22,
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).colorScheme.onError,
                width: 2,
              ),
              color: Theme.of(context).primaryColorLight,
              //  Color(
              //   0xffFF8C10,
              // ),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child:
                  showJustTag
                      ? SizedBox.shrink()
                      : Text(
                        count.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
            ),
          ),
        );
  }
}
