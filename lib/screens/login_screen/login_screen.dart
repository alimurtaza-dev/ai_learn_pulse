import 'package:ai_learn_pulse/main.dart';
import 'package:ai_learn_pulse/screens/home_screen/home_screen.dart';
import 'package:ai_learn_pulse/utils/app_alerts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ai_learn_pulse/gen/assets.gen.dart';
import 'package:ai_learn_pulse/utils/text_style.dart';
import 'package:ai_learn_pulse/gen/colors.gen.dart';
import 'package:ai_learn_pulse/utils/app_extensions.dart';
import 'package:ai_learn_pulse/utils/app_navigator.dart';
import 'package:ai_learn_pulse/widgets/app_button.dart';
import 'package:ai_learn_pulse/widgets/app_text_field.dart';
import 'package:ai_learn_pulse/utils/app_phone_field.dart';
import 'package:ai_learn_pulse/screens/forget_password_screens.dart/forget_password_screen.dart';

import '../../bloc/login_bloc/login_bloc.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginBloc>(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: BlocListener<LoginBloc, LoginStates>(
              listenWhen: (previous, current) =>
                  previous.status != current.status,
              listener: (context, state) {
                if (state.status == LoginStatus.success) {
                  AppAlerts.showSuccessMessage(context, state.message);
                  AppNavigator.removeAllPreviousAndPush(context, HomeScreen());
                } else if (state.status == LoginStatus.success) {
                  AppAlerts.showErrorMessage(context, state.message);
                }
              },
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
                  BlocBuilder<LoginBloc, LoginStates>(
                    builder: (context, state) {
                      return AppPhoneField(
                        disableLengthCheck: true,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        onChanged: (value) {
                          context
                              .read<LoginBloc>()
                              .add(EmailChanged(phone: value.completeNumber));
                        },
                      );
                    },
                  ),
                  15.sizeBoxHeight,
                  BlocBuilder<LoginBloc, LoginStates>(
                    buildWhen: (previous, current) =>
                        previous.phone != current.phone,
                    builder: (context, state) {
                      return AppTextField(
                        prefixIcon: const Icon(Icons.lock_outline_rounded),
                        enableBorder: true,
                        isPassword: true,
                        maxLine: 1,
                        hintText: "Password",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password required';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          context
                              .read<LoginBloc>()
                              .add(PasswordChanged(password: value));
                        },
                      );
                    },
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
                  BlocBuilder<LoginBloc, LoginStates>(
                    buildWhen: (previous, current) =>
                        previous.status != current.status,
                    builder: (context, state) {
                      return AppButton(
                        
                        isUploading: state.status == LoginStatus.loading,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            context.read<LoginBloc>().add(LoginApi());
                          }
                        },
                        text: "LOGIN",
                      );
                    },
                  ),
                ],
              ),
            ).paddingSymmetric(horizontal: 12),
          ),
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
      ),
    );
  }

  void _openForgetPasswordScreen(BuildContext context) {
    AppNavigator.push(context, const ForgetPasswordScreen());
  }
}
