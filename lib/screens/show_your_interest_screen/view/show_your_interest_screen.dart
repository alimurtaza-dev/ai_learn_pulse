import 'package:flutter/material.dart';
import '../../../utils/app_navigator.dart';
import '../../../utils/screen_utils.dart';
import '../../../widgets/app_text_field.dart';
import '../../../widgets/user_intersets_widget.dart';
import '../../main_screen/view/main_screen.dart';
import '../../../utils/app_extensions.dart';

class ShowYourInterestScreen extends StatelessWidget {
  const ShowYourInterestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              "Skip",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: SizedBox(
          width: ScreenUtil.maxMobileWidth,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "What Are Your Interests?",
                  maxLines: 1,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                10.sizeBoxHeight,
                const Text(
                  "Tell us what you like, so we can recommend initial content on the app. ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                10.sizeBoxHeight,
                const AppTextField(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search..football",
                  // controller: loginCubit.passwordController,
                ),
                10.sizeBoxHeight,
                SelectableChipsWidget(
                  chipOptions: const [
                    'Football',
                    'Cricket',
                    'Netflix',
                    'Music',
                    'Gaming',
                    'Football',
                    'Basketball',
                    'Traveling',
                    'Cooking',
                    'Reading',
                    'Hiking',
                    'Photography',
                    'Yoga',
                    'Fishing',
                    'Painting',
                    'Gardening',
                    'Cycling',
                    'Running',
                    'Swimming',
                    'Fitness',
                    'Surfing',
                    'Dancing',
                    'Writing',
                    'Birdwatching',
                    'Knitting',
                    'Chess',
                    'Astronomy',
                    'Baking',
                    'Martial Arts',
                    'Golf',
                    'Skiing',
                    'Snowboarding',
                    'Skateboarding',
                    'Blogging',
                    'Volunteering',
                    'Meditation',
                    'Woodworking',
                    'Pottery',
                    'Calligraphy',
                    'Puzzle Solving',
                    'Fashion',
                    'DIY Crafts',
                    'Model Building',
                    'Robotics',
                    'Coding',
                    'Wine Tasting',
                  ],
                  onSelectionChanged: (value) {
                  },
                )
              ],
            ).paddingSymmetric(horizontal: 20),
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Container(
          height: 110,
          alignment: Alignment.center,
          child: Column(
            children: [
              const Divider(color: Color.fromARGB(255, 234, 194, 194)),
              20.sizeBoxHeight,
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ElevatedButton(
                      onPressed: () => _openMainScreen(context),
                      child: const Text(
                        "Finish",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _openMainScreen(BuildContext context) {
    AppNavigator.push(context, const MainScreen());
  }
}
