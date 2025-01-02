import 'package:ai_learn_pulse/bloc/home_bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../time_table_screen/time_table_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: BlocBuilder<HomeBloc, HomeStates>(
        builder: (context, state) {
          final tabState = (state as HomeInitial).tabState;
          return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: isDarkMode ? Colors.black : Colors.white,
              type: BottomNavigationBarType.fixed,
              currentIndex: TabChangeStates.values.indexOf(tabState),
              selectedItemColor: ColorName.primaryColor,
              onTap: (value) {
                context.read<HomeBloc>().add(
                      UpdateTabChangeStates(TabChangeStates.values[value]),
                    );
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: tabState == TabChangeStates.home
                        ? ColorName.primaryColor
                        : Colors.grey,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Assets.appIcons.placeHolder.svg(
                    height: 25,
                    colorFilter: ColorFilter.mode(
                      tabState == TabChangeStates.timeTable
                          ? ColorName.primaryColor
                          : Colors.grey,
                      BlendMode.srcIn,
                    ),
                  ),
                  label: 'Time Table',
                ),
                BottomNavigationBarItem(
                  icon: Assets.appIcons.placeHolder.svg(
                    height: 25,
                    colorFilter: ColorFilter.mode(
                      tabState == TabChangeStates.assessment
                          ? ColorName.primaryColor
                          : Colors.grey,
                      BlendMode.srcIn,
                    ),
                  ),
                  label: 'Assessment',
                ),
                BottomNavigationBarItem(
                  icon: Assets.appIcons.placeHolder.svg(
                    height: 25,
                    colorFilter: ColorFilter.mode(
                      tabState == TabChangeStates.examination
                          ? ColorName.primaryColor
                          : Colors.grey,
                      BlendMode.srcIn,
                    ),
                  ),
                  label: 'Examination',
                ),
                BottomNavigationBarItem(
                  icon: Assets.appIcons.placeHolder.svg(
                    height: 25,
                    colorFilter: ColorFilter.mode(
                      tabState == TabChangeStates.settings
                          ? ColorName.primaryColor
                          : Colors.grey,
                      BlendMode.srcIn,
                    ),
                  ),
                  label: 'Settings',
                ),
              ],
            ),
            body: _buildBody(tabState),
          );
        },
      ),
    );
  }

  Widget _buildBody(TabChangeStates tabState) {
    switch (tabState) {
      case TabChangeStates.home:
        return const Center(child: Text('Home Screen Content'));
      case TabChangeStates.timeTable:
        return TimeTableScreen();
      case TabChangeStates.assessment:
        return const Center(child: Text('Assessment Screen Content'));
      case TabChangeStates.examination:
        return const Center(child: Text('Examination Screen Content'));
      case TabChangeStates.settings:
        return const Center(child: Text('Settings Screen Content'));
    }
  }
}
