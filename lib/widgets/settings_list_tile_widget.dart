import 'package:flutter/material.dart';

class SettingsListTileWidget extends StatelessWidget {
  final Function onTap;
  final String? title;
  final String? subTitle;
  final IconData? icon;
  final Color? color;

  const SettingsListTileWidget(
      {super.key,
      required this.onTap,
      this.title,
      this.subTitle,
      this.icon,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.5),
      child: Card(
        child: ListTile(
          leading: Icon(
            icon,
            color: color,
          ),
          tileColor: Colors.transparent,
          onTap: () => onTap(),
          title: Text(title ?? '',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: color,
                fontSize: 16,
              )),
          subtitle: Text(subTitle ?? ''),
        ),
      ),
    );
  }
}
