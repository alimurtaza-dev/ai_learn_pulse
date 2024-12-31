import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../../gen/colors.gen.dart';
import '../../../../../utils/app_extensions.dart';
import '../../../../../utils/app_navigator.dart';
import '../../../../../utils/screen_utils.dart';
import '../../../../../widgets/app_button.dart';
import '../../profile_screen/view/edit_profile_screen.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: ScreenUtil.maxMobileWidth,
            child: Column(
              children: [
                Assets.appIcons.placeHolder.svg(height: 100),
                10.sizeBoxHeight,
                Assets.appIcons.placeHolder.svg(height: 40),
                50.sizeBoxHeight,
                const Text(
                  "Verification Code",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                15.sizeBoxHeight,
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: 'Please enter the 6-digit code\nwe sent to ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: "beantalk@gmail.com",
                          style: const TextStyle(
                            fontSize: 16,
                            color: ColorName.primaryColor,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {}),
                    ],
                  ),
                ),
                25.sizeBoxHeight,
                Pinput(
                  // controller: cubit.otpController,
                  focusedPinTheme: PinTheme(
                    width: 56,
                    height: 56,
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: ColorName.primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorName.primaryColor),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  defaultPinTheme: PinTheme(
                    width: 56,
                    height: 56,
                    textStyle: const TextStyle(
                        fontSize: 20,
                        color: ColorName.darkGrey,
                        fontWeight: FontWeight.w600),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  length: 6,
                  errorTextStyle:
                      const TextStyle(color: ColorName.primaryColor),
                  validator: (s) {
                    if (s == null || s.isEmpty || s.length < 4) {
                      return "Enter verification code to continue";
                    }
                    return null;
                  },
                ),
                25.sizeBoxHeight,
                AppButton(
                  onPressed: () => _openEditProfileScreen(context),
                  //  isResetPassword
                  //     ? cubit.verifyForgetPasswordUser()
                  //     : cubit.verifyUser(),
                  text: "Verify",
                ),
                25.sizeBoxHeight,
                Center(
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      text: 'Didn’t receive a code?',
                      style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' Resend Code',
                            style: TextStyle(
                              fontSize: 16,
                              color: Theme.of(context).primaryColor,
                            ),
                            recognizer: TapGestureRecognizer()
                            // ..onTap = () => cubit.resendCode(),
                            ),
                      ],
                    ),
                  ),
                ),
              ],
            ).paddingSymmetric(horizontal: 20, vertical: 60),
          ),
        ),
      ),
    );
  }

  void _openEditProfileScreen(BuildContext context) {
    AppNavigator.push(context, const EditProfileScreen());
  }
}
