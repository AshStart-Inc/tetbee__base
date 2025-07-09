import 'package:flutter/material.dart';

class CustomSwitchWidget extends StatelessWidget {
  final String title;
  final bool? value;
  final Future<void> Function(bool) onChange;
  const CustomSwitchWidget({
    super.key,
    required this.title,
    required this.value,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Text(
            title,
            style: Theme.of(
              context,
            ).textTheme.displayMedium!.copyWith(fontSize: 15),
          ),
          const Spacer(),
          Switch(
            activeColor: Theme.of(context).cardColor.withOpacity(0.4),
            inactiveThumbColor: Colors.transparent,
            inactiveTrackColor: Colors.white,
            value: value ?? false,
            onChanged: (bool value) async {
              await onChange(value);
            },
          ),
        ],
      ),
    );
  }
}
