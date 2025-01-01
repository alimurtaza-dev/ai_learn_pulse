import 'package:ai_learn_pulse/repository/auth_repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'bloc/bloc/login_bloc.dart';
import 'gen/colors.gen.dart';
import 'screens/login_screen/login_screen.dart';

GetIt getIt = GetIt.instance;
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  servicesLocator();
  runApp(
    const AiLearnPulse(),
  );
}

class AiLearnPulse extends StatelessWidget {
  const AiLearnPulse({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: ColorName.white,
          canvasColor: ColorName.white,
          appBarTheme: const AppBarTheme(
            surfaceTintColor: ColorName.white,
          )),
      home: LoginScreen(),
    );
  }
}

// Function for initializing service locator
void servicesLocator() {
  getIt.registerLazySingleton<AuthRepository>(() => AuthRepository());
  getIt.registerFactory<LoginBloc>(
      () => LoginBloc(authRepository: getIt<AuthRepository>()));
}
