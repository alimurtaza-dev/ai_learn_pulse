import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/app_navigator.dart';
import '../../widgets/settings_list_tile_widget.dart';
import '../notification_screen/view/notification_settings_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 15),
          SettingsListTileWidget(
            onTap: () => _openNotificationSettingsScreen(context),
            title: "Notifications",
            icon: FontAwesomeIcons.bell,
          ),
          SettingsListTileWidget(
            onTap: () {},
            title: "Faq",
            subTitle: "See the tutorial again",
            icon: FontAwesomeIcons.question,
          ),
          SettingsListTileWidget(
            onTap: () {},
            title: "Privacy Policy",
            icon: FontAwesomeIcons.arrowRightFromBracket,
          ),
          SettingsListTileWidget(
            onTap: () {},
            title: "Term of use",
            icon: FontAwesomeIcons.arrowRightFromBracket,
          ),
          SettingsListTileWidget(
            onTap: () {},
            title: "Delete Account",
            color: Colors.red,
            icon: FontAwesomeIcons.trash,
          ),
          SettingsListTileWidget(
            onTap: () {},
            color: Colors.red,
            title: "Logout",
            icon: FontAwesomeIcons.arrowRightFromBracket,
          ),
        ],
      ),
    );
  }

  void _openNotificationSettingsScreen(BuildContext context) {
    AppNavigator.push(context, const NotificationSettingsScreen());
  }
}
