import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../utils/app_extensions.dart';
import '../../../../utils/screen_utils.dart';
import '../../../../utils/textfield_validations.dart';
import '../../../../widgets/app_button.dart';
import '../../../../widgets/app_text_field.dart';

class CreatePasswordScreen extends StatelessWidget {
  const CreatePasswordScreen({super.key});

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
                  30.sizeBoxHeight,
                  const Text(
                    "Reset your Password?",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  10.sizeBoxHeight,
                  40.sizeBoxHeight,
                  const AppTextField(
                    isPassword: true,
                    hintText: "Password",
                    // controller: loginCubit.passwordController,
                    validator: TextFieldValidators.emailFieldValidation,
                  ),
                  20.sizeBoxHeight,
                  const AppTextField(
                    isPassword: true,
                    hintText: "Confirm Password",
                    // controller: loginCubit.passwordController,
                    validator: TextFieldValidators.emailFieldValidation,
                  ),
                  40.sizeBoxHeight,
                  AppButton(
                      onPressed: () =>{},
                      text: "Reset"),
                  20.sizeBoxHeight,
                ],
              ).paddingSymmetric(horizontal: 20),
            ),
          ),
        ),
      ),
    );
  }

 
}
