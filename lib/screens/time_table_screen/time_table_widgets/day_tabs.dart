import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/student_bloc/student_bloc.dart';
import '../../../gen/colors.gen.dart';
import '../../../utils/text_style.dart';

class DayTabs extends StatelessWidget {
  const DayTabs({
    super.key,
    required this.tabNames,
    required this.onTabSelected,
  });

  final List<String> tabNames;
  final Function(int) onTabSelected;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StudentBloc, StudentState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          child: SizedBox(
            height: 35,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: tabNames.length,
              separatorBuilder: (context, index) => const SizedBox(width: 8),
              itemBuilder: (context, index) {
                final isSelected = tabNames[index] == state.selectedDay;
                return GestureDetector(
                  onTap: () {
                    onTabSelected(index);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: isSelected
                          ? ColorName.primaryColor
                          : ColorName.secondaryColor,
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: Center(
                      child: Text(
                        tabNames[index].substring(0, 3).toUpperCase(),
                        style: AppTextStyle.appMediumTextStyle(
                          color: isSelected
                              ? ColorName.white
                              : ColorName.black.withValues(alpha: .6),
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
      },
    );
  }
}
