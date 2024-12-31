import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../../gen/colors.gen.dart';
import '../../home_screen/view/home_screen.dart';
import '../cubit/main_screen_cubit.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return BlocProvider(
      create: (context) => MainScreenCubit(),
      child: BlocBuilder<MainScreenCubit, MainScreenState>(
        builder: (context, state) {
          return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: isDarkMode ? Colors.black : Colors.white,
              type: BottomNavigationBarType.fixed,
              currentIndex: MainScreenState.values.indexOf(state),
              selectedItemColor: ColorName.primaryColor,
              onTap: (value) {
                context
                    .read<MainScreenCubit>()
                    .updateIndex(MainScreenState.values[value]);
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: state == MainScreenState.home
                        ? ColorName.primaryColor
                        : Colors.grey,
                  ),
                  label: 'Home',
                ),
                //! Required for future
                // BottomNavigationBarItem(
                //   icon: Assets.appIcons.explore.svg(
                //     height: 25,
                //     colorFilter: ColorFilter.mode(
                //       state == MainScreenState.explore
                //           ? ColorName.primaryColor
                //           : Colors.grey,
                //       BlendMode.srcIn,
                //     ),
                //   ),
                //   label: 'Explore',
                // ),
                BottomNavigationBarItem(
                  icon: Assets.appIcons.placeHolder.svg(
                    height: 25,
                    colorFilter: ColorFilter.mode(
                      state == MainScreenState.map
                          ? ColorName.primaryColor
                          : Colors.grey,
                      BlendMode.srcIn,
                    ),
                  ),
                  label: 'Map',
                ),
                BottomNavigationBarItem(
                  icon: Assets.appIcons.placeHolder.svg(
                    height: 25,
                    colorFilter: ColorFilter.mode(
                      state == MainScreenState.profile
                          ? ColorName.primaryColor
                          : Colors.grey,
                      BlendMode.srcIn,
                    ),
                  ),
                  label: 'Profile',
                ),
              ],
            ),
            body: _buildBody(state),
          );
        },
      ),
    );
  }

  Widget _buildBody(MainScreenState state) {
    switch (state) {
      case MainScreenState.home:
        return const HomeScreen();

      //! Required for future
      // case MainScreenState.explore:
      //   return const Center(
      //     child: Scaffold(
      //       body: Center(
      //         child: Text(
      //           'Explore Screen',
      //           style: TextStyle(fontSize: 24),
      //         ),
      //       ),
      //     ),
      //   );
      case MainScreenState.map:
        return const SizedBox();
      case MainScreenState.profile:
        return const SizedBox.shrink();
    }
  }
}
