import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class CheckBoxWidget extends StatelessWidget {
  final String title;
  final bool isSelected;
  final Color? fillColor;
  final Function(bool?) onChange;
  const CheckBoxWidget({
    super.key,
    required this.isSelected,
    required this.onChange,
    required this.title,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChange(!isSelected);
      },
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              height: kIsWeb ? 20 : 15,
              width: 2,
              color: Theme.of(context).colorScheme.outline.withOpacity(0.3),
            ),
          ),
          Text(
            title,
            style: Theme.of(
              context,
            ).textTheme.displaySmall!.copyWith(fontSize: kIsWeb ? 15 : 12),
          ),
          const SizedBox(width: kIsWeb ? 8 : 2),
          SizedBox(
            height: 20,
            width: 20,
            child: Checkbox(
              fillColor: MaterialStateProperty.all(
                fillColor ?? Theme.of(context).primaryColor,
              ),
              value: isSelected,
              onChanged: onChange,
            ),
          ),
        ],
      ),
    );
  }
}
