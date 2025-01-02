import 'package:ai_learn_pulse/repository/auth_repository/auth_repository.dart';
import 'package:ai_learn_pulse/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';

import 'bloc/login_bloc/login_bloc.dart';
import 'gen/colors.gen.dart';

GetIt getIt = GetIt.instance;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
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
      home: SplashScreen(),
    );
  }
}

// Function for initializing service locator
void servicesLocator() {
  getIt.registerLazySingleton<AuthRepository>(() => AuthRepository());
  getIt.registerFactory<LoginBloc>(
      () => LoginBloc(authRepository: getIt<AuthRepository>()));
}
