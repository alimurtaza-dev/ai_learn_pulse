import 'package:flutter/material.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../../utils/app_extensions.dart';
import '../../../../../utils/app_navigator.dart';
import '../../../../../utils/screen_utils.dart';
import '../../../../../utils/textfield_validations.dart';
import '../../../../../widgets/app_button.dart';
import '../../../../../widgets/app_text_field.dart';
import '../../../../../widgets/rich_text_widget.dart';
import '../../login_screen/view/login_screen.dart';
import '../../verification_screen/view/verification_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: SizedBox(
              width: ScreenUtil.maxMobileWidth,
              child: Column(
                children: [
                  Assets.appIcons.placeHolder.svg(height: 100),
                  10.sizeBoxHeight,
                  // Assets.appIcons.logo.svg(height: 40),
                  30.sizeBoxHeight,
                  const AppTextField(
                    hintText: "Email",
                    // controller: loginCubit.passwordController,
                    validator: TextFieldValidators.passwordValidator,
                  ),
                  10.sizeBoxHeight,
                  const AppTextField(
                    hintText: "Username",
                    // controller: loginCubit.passwordController,
                    validator: TextFieldValidators.passwordValidator,
                  ),
                  10.sizeBoxHeight,
                  const AppTextField(
                    isPassword: true,
                    hintText: "Password",
                    // controller: loginCubit.passwordController,
                    validator: TextFieldValidators.passwordValidator,
                  ),
                  10.sizeBoxHeight,
                  const AppTextField(
                    isPassword: true,
                    hintText: "Confirm Password",
                    // controller: loginCubit.passwordController,
                    validator: TextFieldValidators.passwordValidator,
                  ),
                  30.sizeBoxHeight,
                  AppButton(
                      onPressed: () => _openVerificationScreen(context),
                      text: "Sign Up"),
                  10.sizeBoxHeight,
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (value) {}),
                      AppRichTextWidget(
                        dontHaveAccount: "I agree to the",
                        text: " Terms and Conditions ",
                        moreText: MediaQuery.sizeOf(context).width > 600
                            ? "and"
                            : "\nand ",
                        lastHiding: " Privacy Policy",
                        onTap: () {},
                      ),
                    ],
                  ),
                  10.sizeBoxHeight,
                  AppRichTextWidget(
                    dontHaveAccount: "Already have an Account?",
                    text: " Sign in",
                    onTap: () => _openLoginScreen(context),
                  ),
                  20.sizeBoxHeight,
                ],
              ).paddingSymmetric(vertical: 20, horizontal: 20),
            ),
          ),
        ),
      ),
    );
  }

  void _openLoginScreen(BuildContext context) {
    AppNavigator.push(context, const LoginScreen());
  }

  void _openVerificationScreen(BuildContext context) {
    AppNavigator.push(context, const VerificationScreen());
  }
}
