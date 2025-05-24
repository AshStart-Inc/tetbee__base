import 'package:flutter/material.dart';

class CheckWidget extends StatelessWidget {
  final String title;
  final bool condition;
  const CheckWidget({super.key, required this.title, required this.condition});

  @override
  Widget build(BuildContext context) {
    const double iconSizel = 18;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          children: [
            Expanded(
              flex: 9,
              child: Text(title, style: Theme.of(context).textTheme.titleSmall),
            ),
            const SizedBox(width: 8),
            Expanded(
              flex: 2,
              child:
                  condition
                      ? Icon(
                        Icons.check_circle,
                        color: Theme.of(context).colorScheme.onPrimary,
                        size: iconSizel,
                      )
                      : Icon(
                        Icons.cancel,
                        color: Theme.of(context).colorScheme.onError,
                        size: iconSizel,
                      ),
            ),
          ],
        ),
      ),
    );
  }
}
