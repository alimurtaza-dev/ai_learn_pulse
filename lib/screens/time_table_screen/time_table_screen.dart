import 'package:ai_learn_pulse/widgets/loading_animation.dart';
import 'package:ai_learn_pulse/widgets/network_image_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app_constants/app_constants.dart';
import '../../bloc/student_bloc/student_bloc.dart';
import '../../gen/colors.gen.dart';
import '../../main.dart';
import '../../utils/mobile_appbar.dart';
import '../../utils/text_style.dart';
import 'time_table_widgets/day_tabs.dart';

class TimeTableScreen extends StatelessWidget {
  const TimeTableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<StudentBloc>()..add(FetchTimetableEvent()),
      child: Scaffold(
        appBar: MobileAppBar(
          isShowBackButton: false,
          title: 'Time Table',
        ),
        body: BlocBuilder<StudentBloc, StudentState>(
          builder: (context, state) {
            return Column(
              children: [
                DayTabs(
                  tabNames: AppConstants.dayTabsList,
                  onTabSelected: (index) {
                    final selectedDay = AppConstants.dayTabsList[index];
                    context
                        .read<StudentBloc>()
                        .add(SelectDayEvent(selectedDay));
                  },
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  child: Row(
                    spacing: 12,
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
                  child: _buildTimetableContent(state),
                ),
              ],
            );
          },
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
      ),
    );
  }

  Widget _buildTimetableContent(StudentState state) {
    if (state.status == StudentStatus.loading) {
      return const Center(child: LoadingAnimation());
    } else if (state.status == StudentStatus.error) {
      return Center(child: Text(state.message));
    } else if (state.status == StudentStatus.success) {
      final filteredClasses = state.timetable
          .where((timetable) =>
              timetable.day?.toLowerCase() == state.selectedDay.toLowerCase())
          .toList();

      if (filteredClasses.isEmpty) {
        return const Center(child: Text('No classes available for this day.'));
      }

      return ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: filteredClasses.length,
        itemBuilder: (context, index) {
          final classInfo = filteredClasses[index];
          final bool isPrimary = index <= 2;
          final Color dotColor = isPrimary
              ? ColorName.primaryColor
              : ColorName.darkGrey.withValues(alpha: .6);
          final Color lineColor = isPrimary
              ? ColorName.primaryColor
              : ColorName.darkGrey.withValues(alpha: .6);

          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: 80,
                    child: Text(
                      classInfo.timeFrom!,
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
                      classInfo.timeTo!,
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
                width: 12,
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
                    if (index < filteredClasses.length)
                      Container(
                        width: 2,
                        height: 150,
                        color: lineColor,
                      ),
                  ],
                ),
              ),
              Expanded(
                child: Card(
                  elevation: 0,
                  color: ColorName.primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      spacing: 12,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 5,
                          children: [
                            Text(
                              classInfo.courseId?.title ?? 'No Title',
                              style: AppTextStyle.appMediumTextStyle(
                                size: 18,
                                color: ColorName.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              classInfo.courseId?.description ?? '',
                              style: AppTextStyle.appMediumTextStyle(
                                size: 14,
                                color: ColorName.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          spacing: 6,
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: ColorName.white,
                            ),
                            Text(
                              "Room ${classInfo.roomNo ?? ''}",
                              style: AppTextStyle.appMediumTextStyle(
                                size: 14,
                                color: ColorName.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          spacing: 6,
                          children: [
                            SizedBox(
                                height: 20,
                                width: 20,
                                child: CircleAvatar(
                                  child: ClipOval(
                                    child: NetworkImageView(
                                        classInfo.teacherId?.user?.contacts
                                                ?.imageUrl ??
                                            '',
                                        fit: BoxFit.cover,
                                        height: 20,
                                        width: 20),
                                  ),
                                )),
                            Text(
                              "${classInfo.teacherId?.user?.contacts?.fName ?? ''} ${classInfo.teacherId?.user?.contacts?.fName ?? ''}",
                              style: AppTextStyle.appMediumTextStyle(
                                size: 14,
                                color: ColorName.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      );
    } else {
      return const Center(child: Text('No data available'));
    }
  }
}
