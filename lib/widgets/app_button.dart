import 'package:flutter/material.dart';

import '../gen/colors.gen.dart';
import '../utils/text_style.dart';
import '../widgets/loading_animation.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key,
      this.width,
      required this.text,
      required this.onPressed,
      this.btnColor,
      this.height,
      this.textColor,
      this.isUploading = false,
      this.textSize});

  final double? width, height;
  final double? textSize;
  final String text;
  final bool isUploading;

  final Color? btnColor;
  final Color? textColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 50,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        color: btnColor ?? ColorName.primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: btnColor ?? ColorName.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
          onPressed: onPressed,
          child: isUploading
              ? const LoadingAnimation(
                  color: ColorName.white,
                )
              : Text(
                  text,
                  style: AppTextStyle.appMediumTextStyle(
                      size: textSize ?? 18, color: textColor ?? Colors.white),
                )),
    );
  }
}
