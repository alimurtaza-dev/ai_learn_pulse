import 'package:flutter/material.dart';

import '../gen/colors.gen.dart';

class SelectableChipsWidget extends StatefulWidget {
  final List<String> chipOptions;
  final Function(List<String>) onSelectionChanged;

  const SelectableChipsWidget({
    super.key,
    required this.chipOptions,
    required this.onSelectionChanged,
  });

  @override
  createState() => _SelectableChipsWidgetState();
}

class _SelectableChipsWidgetState extends State<SelectableChipsWidget> {
  List<String> selectedChips = [];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 5.0,
      runSpacing: 5.0,
      children: widget.chipOptions.map((String chip) {
        return ActionChip(
          label: Text(
            chip,
            style: TextStyle(
              color: selectedChips.contains(chip) ? Colors.white : Colors.black,
            ),
          ),
          onPressed: () => setState(() {
            if (selectedChips.contains(chip)) {
              selectedChips.remove(chip);
            } else {
              selectedChips.add(chip);
            }
            widget.onSelectionChanged(selectedChips);
          }),
          backgroundColor: selectedChips.contains(chip)
              ? ColorName.primaryColor
              : Colors.grey[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
            side: BorderSide(
              color: selectedChips.contains(chip)
                  ? Colors.transparent
                  : Colors.grey.shade600,
            ),
          ),
        );
      }).toList(),
    );
  }
}
