import 'package:flutter/material.dart';

import '../gen/colors.gen.dart';

class SettingsTabView extends StatelessWidget {
  const SettingsTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              labelColor: Theme.of(context).colorScheme.onSurface,
              isScrollable: true,
              indicatorColor: ColorName.primaryColor,
              tabs: const [
                Tab(text: 'Feed'),
                Tab(text: 'About'),
                Tab(text: 'Manage'),
                Tab(text: 'List'),
              ],
            ),
          ),
          const Divider(
            height: 1,
            color: Colors.grey,
          ),
          const Expanded(
            child: TabBarView(
              children: [
                Center(child: Text('Feed Content')),
                Center(child: Text('About Content')),
                Center(child: Text('Manage Content')),
                Center(child: Text('Manage List')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
