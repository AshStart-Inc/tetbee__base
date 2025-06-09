import 'package:flutter/material.dart';

class NewCheckBoxWidget extends StatelessWidget {
  final String title;
  final bool isSelected;
  final Color? fillColor;
  final Function(bool?) onChange;
  const NewCheckBoxWidget({
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
          Text(
            title,
            style: Theme.of(
              context,
            ).textTheme.displaySmall!.copyWith(fontSize: 15),
          ),
          const Spacer(),
          SizedBox(
            height: 25,
            width: 25,
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
