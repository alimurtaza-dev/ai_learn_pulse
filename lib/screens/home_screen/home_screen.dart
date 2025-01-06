import 'package:ai_learn_pulse/bloc/home_bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

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
          return WillPopScope(
            onWillPop: () async {
              if (tabState.index != 0) {
                context
                    .read<HomeBloc>()
                    .add(UpdateTabChangeStates(TabChangeStates.values[0]));
                return false;
              }
              return true;
            },
            child: Scaffold(
              bottomNavigationBar: BottomNavigationBar(
                fixedColor: ColorName.primaryColor,
                backgroundColor: isDarkMode ? Colors.black : Colors.white,
                type: BottomNavigationBarType.fixed,
                currentIndex: TabChangeStates.values.indexOf(tabState),
                onTap: (value) {
                  context.read<HomeBloc>().add(
                        UpdateTabChangeStates(TabChangeStates.values[value]),
                      );
                },
                items: [
                  BottomNavigationBarItem(
                    icon: Assets.appIcons.home.svg(
                      height: 25,
                      colorFilter: ColorFilter.mode(
                        tabState == TabChangeStates.home
                            ? ColorName.primaryColor
                            : Colors.grey,
                        BlendMode.srcIn,
                      ),
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Assets.appIcons.timeTable.svg(
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
                    icon: Assets.appIcons.examination.svg(
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
                    icon: Assets.appIcons.settings.svg(
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
            ),
          );
        },
      ),
    );
  }

  Widget _buildBody(TabChangeStates tabState) {
    switch (tabState) {
      case TabChangeStates.home:
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/animations/in_progress.json',
                width: 200,
                height: 200,
                fit: BoxFit.contain,
              ),
              Text('In Progress')
            ],
          ),
        );
      case TabChangeStates.timeTable:
        return TimeTableScreen();

      case TabChangeStates.examination:
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/animations/in_progress.json',
                width: 200,
                height: 200,
                fit: BoxFit.contain,
              ),
              Text('In Progress')
            ],
          ),
        );
      case TabChangeStates.settings:
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/animations/in_progress.json',
                width: 200,
                height: 200,
                fit: BoxFit.contain,
              ),
              Text('In Progress')
            ],
          ),
        );
    }
  }
}
