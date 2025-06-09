import 'package:flutter/material.dart';
import 'package:tetbee__base/utils/helper.dart';

class ScheduleSearchNameBar extends StatefulWidget {
  final void Function(String) onChange;
  final void Function() onClear;
  final IconData iconData;
  final TextEditingController textEditingController;
  final String label;
  final String hint;

  const ScheduleSearchNameBar({
    super.key,
    this.hint = 'Search Name....',
    this.label = 'Name',
    this.iconData = Icons.cancel,
    required this.textEditingController,
    required this.onClear,
    required this.onChange,
  });

  @override
  State<ScheduleSearchNameBar> createState() => _ScheduleSearchNameBarState();
}

class _ScheduleSearchNameBarState extends State<ScheduleSearchNameBar> {
  final FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        focusNode.requestFocus();
      },
      child: Container(
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.withOpacity(0.7)),
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 4, top: 15),
                child: SizedBox(
                  width: 70,
                  child: Center(
                    child: TextField(
                      focusNode: focusNode,
                      maxLength: 9,
                      onEditingComplete: () {
                        focusNode.unfocus();
                        Helpers.dismissKeyboard(context: context);
                      },
                      onChanged: widget.onChange,
                      textCapitalization: TextCapitalization.sentences,
                      controller: widget.textEditingController,
                      style: const TextStyle(color: Colors.black, fontSize: 10),
                      decoration: InputDecoration(
                        counterText: "",
                        hintText: widget.hint,
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 7,
                          color: Colors.black.withOpacity(0.6),
                        ),
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  widget.onClear();
                  focusNode.unfocus();
                  Helpers.dismissKeyboard(context: context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.delete,
                    size: 15,
                    color: Colors.grey.withOpacity(0.7),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
