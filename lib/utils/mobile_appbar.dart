import 'package:flutter/material.dart';

import '../gen/colors.gen.dart';
import 'app_navigator.dart';
import 'text_style.dart';

class MobileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MobileAppBar(
      {super.key, this.title = '', this.isShowBackButton = true});

  final String title;
  final bool isShowBackButton;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorName.white,
      title: Text(
        title,
        style: AppTextStyle.appMediumTextStyle(
            color: ColorName.black, fontWeight: FontWeight.w600, size: 17),
      ),
      centerTitle: true,
      leading: isShowBackButton
          ? GestureDetector(
              onTap: () => AppNavigator.pop(context),
              child: const Icon(Icons.arrow_back_ios_new,
                  size: 20, color: ColorName.primaryColor))
          : const SizedBox.shrink(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
