import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final Function onChange;
  final Function onTap;
  final IconData iconData;
  final TextEditingController textEditingController;
  final String label;
  final String hint;
  const CustomSearchBar({
    super.key,
    this.hint = 'Search Name....',
    this.label = 'Name',
    this.iconData = Icons.cancel,
    required this.textEditingController,
    required this.onTap,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 12),
              child: TextField(
                onChanged: onChange as void Function(String)?,
                textCapitalization: TextCapitalization.sentences,
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
                decoration: InputDecoration(
                  hintText: hint,
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  hintStyle: Theme.of(context).textTheme.bodySmall,
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
