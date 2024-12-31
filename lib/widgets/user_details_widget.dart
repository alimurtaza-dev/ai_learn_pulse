import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';

class UserDetails extends StatelessWidget {
  final String? title;
  const UserDetails({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          Assets.appIcons.placeHolder.svg(height: 30),
          const SizedBox(width: 4),
          Text(
            title ?? "@username",
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(width: 4),
          const CircleAvatar(
            radius: 10,
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.check,
              size: 15,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 5),
        ],
      ),
    );
  }
}
