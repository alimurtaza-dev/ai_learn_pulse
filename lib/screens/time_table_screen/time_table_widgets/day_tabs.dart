import 'package:flutter/material.dart';
import 'package:ai_learn_pulse/gen/colors.gen.dart';
import 'package:ai_learn_pulse/utils/text_style.dart';

class DayTabs extends StatefulWidget {
  const DayTabs({
    super.key,
    required this.tabNames,
    required this.onTabSelected,
  });

  final List<String> tabNames;
  final Function(int) onTabSelected;

  @override
  State<DayTabs> createState() => _DayTabsState();
}

class _DayTabsState extends State<DayTabs> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: SizedBox(
        height: 35,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: widget.tabNames.length,
          separatorBuilder: (context, index) => const SizedBox(width: 8),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                  widget.onTabSelected(index);
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: _selectedIndex == index
                      ? ColorName.primaryColor
                      : ColorName.secondaryColor,
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: Center(
                  child: Text(
                    widget.tabNames[index],
                    style: AppTextStyle.appMediumTextStyle(
                      color: _selectedIndex == index
                          ? ColorName.white
                          : Colors.black.withValues(alpha: .6),
                      size: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
