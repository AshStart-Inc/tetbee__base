import 'package:flutter/material.dart';
import 'package:tetbee__base/utils/helper.dart';
import 'package:tetbee__base/widgets/new_check_box_widget.dart';

class FilterItemModel {
  final String id;
  final String name;
  final Color color;
  FilterItemModel({required this.color, required this.id, required this.name});
}

class PositionFilterWidget extends StatefulWidget {
  final List<FilterItemModel> items;
  final List<String> selectedItems;
  final void Function(String) onSelect;

  const PositionFilterWidget({
    super.key,
    required this.items,
    required this.onSelect,
    required this.selectedItems,
  });

  @override
  State<PositionFilterWidget> createState() => _PositionFilterWidgetState();
}

class _PositionFilterWidgetState extends State<PositionFilterWidget> {
  OverlayEntry? overlay;
  final GlobalKey key = GlobalKey();

  late List<String> selectedList;

  @override
  void initState() {
    super.initState();
    selectedList = [...widget.selectedItems];
  }

  void dismissOverlay() {
    overlay?.remove();
    overlay = null;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: key,
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {
          overlay = OverlayEntry(
            builder: (context) {
              return _buildOverlay(context);
            },
          );
          Overlay.of(context).insert(overlay!);
        },
        child: Container(
          height: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Theme.of(context).colorScheme.outline.withOpacity(0.2),
            ),
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.people_outline_sharp,
                  size: 15,
                  color: Theme.of(context).colorScheme.outline,
                ),
                const SizedBox(width: 8),
                Text(
                  'Position Filter',
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall!.copyWith(fontSize: 13),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOverlay(BuildContext context) {
    Offset widgetOffset = (key.currentContext!.findRenderObject() as RenderBox)
        .localToGlobal(Offset.zero);
    return Material(
      child: Stack(
        children: [
          InkWell(
            splashColor: Colors.transparent,
            onTap: () {
              dismissOverlay();
            },
            child: SizedBox(
              height: Helpers.getMQHeight(context: context),
              width: Helpers.getMQWidth(context: context),
            ),
          ),
          Positioned(
            top: widgetOffset.dy,
            left: widgetOffset.dx,
            child: Container(
              height: 40 + (widget.items.length * 35),
              width: 200,
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                border: Border.all(),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(children: [Text('Position Filter'), Spacer()]),
                    ...widget.items.map(
                      (p) => Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: NewCheckBoxWidget(
                          key: ValueKey(p.id),
                          fillColor: p.color,
                          isSelected: selectedList.contains(p.id),
                          onChange: (bool? add) {
                            widget.onSelect(p.id);
                            if (selectedList.contains(p.id)) {
                              selectedList.remove(p.id);
                            } else {
                              selectedList.add(p.id);
                            }
                            overlay!.markNeedsBuild();
                          },
                          title: p.name,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
