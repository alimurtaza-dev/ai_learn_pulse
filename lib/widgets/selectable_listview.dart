import 'package:flutter/material.dart';

import '../gen/colors.gen.dart';

class SelectableListView extends StatefulWidget {
  final List<String> items;
  final Function(String) onSelect;

  const SelectableListView({
    super.key,
    required this.items,
    required this.onSelect,
  });

  @override
  createState() => _SelectableListViewState();
}

class _SelectableListViewState extends State<SelectableListView> {
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = 0; // Select the first item by default
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
                widget.onSelect(widget.items[index]);
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? ColorName.primaryColor
                    : Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: Center(
                child: Text(
                  widget.items[index],
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
