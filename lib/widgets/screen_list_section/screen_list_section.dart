import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tetbee__base/widgets/buttons/select_item_button.dart';

class ButtonModel {
  final String text;
  final String key;
  final IconData? iconData;
  final Color? buttonColor;
  final Function? onTab;
  ButtonModel({
    required this.text,
    required this.key,
    this.iconData,
    this.buttonColor,
    this.onTab,
  });
}

class ScreenListSection extends StatefulWidget {
  final String? selectedKey;
  final Map<ButtonModel, dynamic> screens;
  const ScreenListSection({super.key, required this.screens, this.selectedKey});

  @override
  State<ScreenListSection> createState() => _ScreenListSectionState();
}

class _ScreenListSectionState extends State<ScreenListSection> {
  String? _selectedScreenKey;
  @override
  void initState() {
    super.initState();

    _selectedScreenKey = widget.selectedKey ?? widget.screens.keys.first.key;
  }

  getButtonModel() {
    ButtonModel? buttonModel;
    for (var element in widget.screens.keys) {
      if (_selectedScreenKey == element.key) {
        buttonModel = element;
      }
    }
    return buttonModel;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children:
                widget.screens.keys
                    .map(
                      (e) => SelectItemButton(
                        key: ValueKey(e),
                        buttonColor: e.buttonColor,
                        text: e.text,
                        iconData: e.iconData,
                        onTap: () {
                          e.onTab?.call();
                          setState(() {
                            _selectedScreenKey = e.key;
                            HapticFeedback.heavyImpact();
                          });
                        },
                        isSelected:
                            e.key ==
                            (_selectedScreenKey ??
                                widget.screens.keys.first.key),
                      ),
                    )
                    .toList(),
          ),
        ),
        Expanded(
          child:
              widget.screens[getButtonModel() ?? widget.screens.keys.first] ??
              widget.screens[widget.screens.keys.first],
        ),
      ],
    );
  }
}
