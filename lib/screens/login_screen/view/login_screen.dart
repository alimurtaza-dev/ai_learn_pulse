import 'package:ai_learn_pulse/gen/assets.gen.dart';
import 'package:ai_learn_pulse/utils/text_style.dart';
import 'package:flutter/material.dart';

import '../../../../../gen/colors.gen.dart';
import '../../../../../utils/app_extensions.dart';
import '../../../../../utils/app_navigator.dart';
import '../../../../../utils/textfield_validations.dart';
import '../../../../../widgets/app_button.dart';
import '../../../../../widgets/app_text_field.dart';
import '../../forget_password_screens.dart/view/forget_password_screen.dart';
import '../../main_screen/view/main_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            30.sizeBoxHeight,
            Image.asset(Assets.appImages.loginScreenImage.path),
            Text(
              'Login to your Account',
              style: AppTextStyle.appMediumTextStyle(
                  size: 20,
                  color: ColorName.black,
                  fontWeight: FontWeight.w600),
            ),
            15.sizeBoxHeight,
            AppTextField(
              enableBorder: true,
              prefixIcon: Icon(Icons.email_outlined),

              hintText: "Email",
              // controller: loginCubit.passwordController,
              validator: TextFieldValidators.emailFieldValidation,
            ),
            15.sizeBoxHeight,
            const AppTextField(
              prefixIcon: Icon(Icons.lock_outline_rounded),

              enableBorder: true,
              isPassword: true,
              maxLine: 1,
              hintText: "Password",
              // controller: loginCubit.passwordController,
              validator: TextFieldValidators.passwordValidator,
            ),
            15.sizeBoxHeight,
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () => _openForgetPasswordScreen(context),
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: ColorName.primaryColor,
                  ),
                ),
              ),
            ),
            22.sizeBoxHeight,
            AppButton(
              onPressed: () => _openMainScreen(context),
              text: "LOGIN",
            ),
          ],
        ).paddingSymmetric(horizontal: 12),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "©2024 All Rights Reserved",
              style: AppTextStyle.appMediumTextStyle(
                size: 12,
                fontWeight: FontWeight.w300,
                color: ColorName.black.withValues(alpha: .60),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _openMainScreen(BuildContext context) {
    AppNavigator.removeAllPreviousAndPush(context, const MainScreen());
  }

  void _openForgetPasswordScreen(BuildContext context) {
    AppNavigator.push(context, const ForgetPasswordScreen());
  }
}
