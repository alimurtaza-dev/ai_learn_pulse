import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/helper_functions.dart';
import 'profile_state.dart';

class ControllerFactory {
  static TextEditingController createController() {
    return TextEditingController();
  }
}

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitState()) {
    // emailController.text = AppData.user?.email ?? "";
    // firstNameController.text = AppData.user?.firstName ?? "";
    // lastNameController.text = AppData.user?.lastName ?? "";
    // phoneController.text = AppData.user?.phone ?? "";
    // measureSystemController.text = AppData.user?.measurementSystem ?? "";
    // measurementSystem = stringToEnum(AppData.user?.measurementSystem ?? "");
    // riderType = AppData.user?.riderType?.name;
    // riderTypeId = AppData.user?.riderTypeId;
    // estimatedAvgController.text =
    //     AppData.user?.estimatedAvgCadence.toString() ?? "";
    // estimatedFtpController.text = AppData.user?.estimatedFtp.toString() ?? "";
    // _initialImage = AppData.user?.profileImage ?? "";
  }

  final List<TextEditingController> _textControllers = List.generate(
    8,
    (index) => ControllerFactory.createController(),
  );

  final formKey = GlobalKey<FormState>();

  TextEditingController get emailController => _textControllers[0];
  TextEditingController get firstNameController => _textControllers[1];
  TextEditingController get lastNameController => _textControllers[2];
  TextEditingController get phoneController => _textControllers[3];
  TextEditingController get estimatedFtpController => _textControllers[4];
  TextEditingController get estimatedAvgController => _textControllers[5];
  TextEditingController get measureSystemController => _textControllers[6];
  TextEditingController get passwordController => _textControllers[7];

  String? fullPhoneNumber;
  String? pickedImage;
  String? _initialImage;

  String? alreadySavedImgUrl;
  // UserModel? currentUser = AppData.user;
  String? get initialImage => _initialImage;

  Future<void> onProfileUpdatePress() async {
    if (formKey.currentState?.validate() ?? false) {
      hideKeyBoard();
      // await _profileUpdate();
    }
  }

  // Future<void> _profileUpdate() async {
  //   try {
  //     emit(LoadingState());
  //     final apiResponse = await _authApiProvider.profileUpdate(
  //         firstName: firstNameController.text,
  //         lastName: lastNameController.text,
  //         measurementSystem: measurementSystem,
  //         estimatedAvgCadence: estimatedAvgController.text,
  //         estimatedFtp: estimatedFtpController.text,
  //         riderTypeId: riderTypeId,
  //         password: passwordController.text,
  //         profileImage: pickedImage);
  //     _handleApiResponse(apiResponse);
  //   } catch (e) {
  //     emit(FailedState(e.toString()));
  //   }
  // }

  // void _handleApiResponse(AuthModel apiResponse) {
  //   if (apiResponse.statusCode == HttpStatus.created &&
  //       apiResponse.data != null) {
  //     currentUser = apiResponse.data!.user!;
  //     AppData.updateCurrentUser(currentUser!);
  //     emit(ProfileUpdatedState());
  //   } else {
  //     _handleError(apiResponse);
  //   }
  // }

  // void _handleError(AuthModel apiResponse) {
  //   final String? errors = apiResponse.errors;

  //   if (errors != null) {
  //     emit(FailedState(errors));
  //   } else if (apiResponse.statusCode == HttpStatus.badRequest ||
  //       apiResponse.statusCode == HttpStatus.unauthorized) {
  //     emit(FailedState(apiResponse.message));
  //   }
  // }

  @override
  Future<void> close() {
    for (var controller in _textControllers) {
      controller.dispose();
    }
    return super.close();
  }

  void onImageSelection(String image) {
    pickedImage = image;
  }
}
