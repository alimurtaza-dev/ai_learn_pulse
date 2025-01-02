import 'package:ai_learn_pulse/app_constants/app_constants.dart';
import 'package:ai_learn_pulse/gen/colors.gen.dart';
import 'package:ai_learn_pulse/utils/mobile_appbar.dart';
import 'package:ai_learn_pulse/utils/text_style.dart';
import 'package:flutter/material.dart';

import 'time_table_widgets/day_tabs.dart';

class TimeTableScreen extends StatelessWidget {
  const TimeTableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> classes = [
      {
        'startTime': '09:00 AM',
        'endTime': '09:50 AM',
        'lecture': 'Mathematics',
        'room': 'Room 101',
      },
      {
        'startTime': '10:00 AM',
        'endTime': '10:50 AM',
        'lecture': 'Physics',
        'room': 'Room 102',
      },
      {
        'startTime': '11:00 AM',
        'endTime': '11:50 AM',
        'lecture': 'Chemistry',
        'room': 'Room 103',
      },
      {
        'startTime': '12:00 PM',
        'endTime': '12:50 PM',
        'lecture': 'Biology',
        'room': 'Room 104',
      },
    ];

    final int ongoingLectureIndex = 2;

    return Scaffold(
      appBar: MobileAppBar(
        isShowBackButton: false,
        title: 'Time Table',
      ),
      body: Column(
        children: [
          DayTabs(
            tabNames: AppConstants.dayTabsList,
            onTabSelected: (index) {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 80,
                  child: Text(
                    'Time',
                    style: AppTextStyle.appMediumTextStyle(
                      size: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    'Course',
                    style: AppTextStyle.appMediumTextStyle(
                      size: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: classes.length,
              itemBuilder: (context, index) {
                final classInfo = classes[index];
                final bool isPrimary = index <= ongoingLectureIndex;
                final Color dotColor = isPrimary
                    ? ColorName.primaryColor
                    : ColorName.darkGrey.withValues(alpha: .6);
                final Color lineColor = isPrimary
                    ? ColorName.primaryColor
                    : ColorName.darkGrey.withValues(alpha: .6);

                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Time Column
                    Column(
                      children: [
                        SizedBox(
                          width: 80,
                          child: Text(
                            classInfo['startTime']!,
                            style: AppTextStyle.appMediumTextStyle(
                              size: 13,
                              fontWeight: FontWeight.bold,
                              color: ColorName.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 80,
                          child: Text(
                            classInfo['endTime']!,
                            style: AppTextStyle.appMediumTextStyle(
                              size: 13,
                              fontWeight: FontWeight.bold,
                              color: ColorName.darkGrey.withValues(alpha: .6),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 16,
                      child: Column(
                        children: [
                          Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                              color: dotColor,
                              shape: BoxShape.circle,
                            ),
                          ),
                          if (index < classes.length)
                            Container(
                              width: 2,
                              height: 80,
                              color: lineColor,
                            ),
                        ],
                      ),
                    ),
                    // Course Column
                    Expanded(
                      child: Card(
                        elevation: 0,
                        color: ColorName.primaryColor,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                classInfo['lecture']!,
                                style: AppTextStyle.appMediumTextStyle(
                                  size: 16,
                                  color: ColorName.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                classInfo['room']!,
                                style: AppTextStyle.appMediumTextStyle(
                                  size: 14,
                                  color: ColorName.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorName.primaryColor,
        shape: const CircleBorder(),
        onPressed: () {},
        child: const Icon(
          Icons.download_rounded,
          color: ColorName.white,
          size: 30,
        ),
      ),
    );
  }
}
