import 'package:flutter/material.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../../utils/app_extensions.dart';
import '../../../../../utils/app_navigator.dart';
import '../../../../../utils/screen_utils.dart';
import '../../../../../utils/textfield_validations.dart';
import '../../../../../widgets/app_button.dart';
import '../../../../../widgets/app_text_field.dart';
import '../../verification_screen/view/verification_screen.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: SizedBox(
              width: ScreenUtil.maxMobileWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Assets.appIcons.placeHolder.svg(height: 100),
                  10.sizeBoxHeight,
                  // Assets.appIcons.appName.svg(height: 40),
                  30.sizeBoxHeight,
                  const Text(
                    "Forget your Password?",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  10.sizeBoxHeight,
                  const Text(
                    "Fill in your email and we will send you a verification code so you can reset your password",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
                  ),
                  40.sizeBoxHeight,
                  const AppTextField(
                    hintText: "email or username",
                    // controller: loginCubit.passwordController,
                    validator: TextFieldValidators.emailFieldValidation,
                  ),
                  40.sizeBoxHeight,
                  AppButton(
                      onPressed: () => _openVerificationScreen(context),
                      text: "Submit"),
                  20.sizeBoxHeight,
                ],
              ).paddingSymmetric(horizontal: 20),
            ),
          ),
        ),
      ),
    );
  }

  void _openVerificationScreen(BuildContext context) {
    AppNavigator.push(context, const VerificationScreen());
  }
}
