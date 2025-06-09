import 'package:flutter/material.dart';

enum SortOption { createdAt, startTime, staffOrder, alphabetical }

String _getSortOptionDisplayName(SortOption sortOption) {
  switch (sortOption) {
    case SortOption.staffOrder:
      return 'Staff Order';
    case SortOption.createdAt:
      return 'Created Time';
    case SortOption.startTime:
      return 'Start Time';
    case SortOption.alphabetical:
      return 'Alphabetical';
  }
}

class FilterDropdown extends StatelessWidget {
  final SortOption selectedValue;
  final List<SortOption> options;
  final void Function(SortOption?) onChange;
  const FilterDropdown({
    super.key,
    required this.options,
    required this.selectedValue,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Theme.of(context).colorScheme.outline.withOpacity(0.2),
          ),
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: Row(
            children: [
              Icon(
                Icons.sort,
                size: 15,
                color: Theme.of(context).colorScheme.outline,
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton<SortOption>(
                  dropdownColor: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(10),
                  iconSize: 0.0,
                  value: selectedValue,
                  style: Theme.of(context).textTheme.displaySmall,
                  items: [
                    ...options.map(
                      (e) => DropdownMenuItem<SortOption>(
                        value: e,
                        child: Container(
                          color: Colors.transparent,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: Text(
                              _getSortOptionDisplayName(e),
                              style: Theme.of(
                                context,
                              ).textTheme.titleSmall!.copyWith(fontSize: 13),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                  onChanged: onChange,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
