import 'package:flutter/material.dart';

class SatisfyInfoWidget extends StatelessWidget {
  final bool isSatisfied;
  final String satisfiedLabel;
  final String unsatisfiedLabel;

  const SatisfyInfoWidget({
    super.key,
    required this.isSatisfied,
    required this.satisfiedLabel,
    required this.unsatisfiedLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 24),
      child: Row(
        children: [
          Icon(
            Icons.circle_outlined,
            size: 15,
            color: Theme.of(context).primaryColor,
          ),
          const SizedBox(width: 8),
          isSatisfied
              ? Text(
                satisfiedLabel,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Theme.of(context).colorScheme.error,
                ),
              )
              : Text(
                unsatisfiedLabel,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
          const Spacer(),
          Icon(
            !isSatisfied
                ? Icons.check_circle_rounded
                : Icons.check_circle_outline_outlined,
            color:
                isSatisfied
                    ? Theme.of(context).colorScheme.onError
                    : Theme.of(context).colorScheme.onPrimary,
          ),
        ],
      ),
    );
  }
}
