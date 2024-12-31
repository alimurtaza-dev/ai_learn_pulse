import 'package:flutter/material.dart';
import '../../../utils/app_navigator.dart';
import '../../../utils/enums.dart';
import '../../../utils/screen_utils.dart';
import '../../../utils/textfield_validations.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/app_text_field.dart';
import '../../../widgets/date_selection_widget.dart';
import '../../../widgets/edit_profile_image_view.dart';
import '../../../widgets/gender_selection_widget.dart';
import '../../../widgets/loading_screen_view.dart';
import '../../../widgets/network_image_view.dart';
import '../../show_your_interest_screen/view/show_your_interest_screen.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        title: const Text("Profile Settings"),
      ),
      body: LoadingScreenView(
        isLoading: false,
        child: SizedBox(
          width: ScreenUtil.maxMobileWidth,
          child: Form(
            // key: profileCubit.formKey,
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  const NetworkImageView(
                    "https://images.unsplash.com/photo-1504805572947-34fad45aed93?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFjZWJvb2slMjBjb3ZlcnxlbnwwfHwwfHx8MA%3D%3D",
                    width: double.infinity,
                    fit: BoxFit.fill,
                    height: 150,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 80),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            EditProfileImageView(
                                initialImageUrl: "",
                                // profileCubit.initialImage,
                                onImageSelection: (value) {}
                                // profileCubit.onImageSelection,
                                ),
                            SizedBox(height: height * 0.01),
                            const Text(
                              // "${AppData.user?.firstName ?? ""} ${AppData.user?.lastName ?? ""}"
                              "Name",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text("User Name",
                                style: TextStyle(fontSize: 14)),
                          ],
                        ),
                        SizedBox(height: height * 0.03),
                        AppTextField(
                          validator: (value) =>
                              TextFieldValidators.emptyFieldValidator(
                                  value, "Enter Your First name"),
                          hintText: "First Name",
                          // controller: profileCubit.firstNameController,
                        ),
                        SizedBox(height: height * 0.02),
                        AppTextField(
                          validator: (value) =>
                              TextFieldValidators.emptyFieldValidator(
                                  value, "Enter Your Last name"),
                          hintText: "Last Name",
                          // controller: profileCubit.lastNameController,
                        ),
                        SizedBox(height: height * 0.02),
                        DateSelectionWidget(
                          onDateSelection: (value) {},
                        ),
                        SizedBox(height: height * 0.02),
                        const Text("Gender"),
                        SizedBox(height: height * 0.01),
                        GenderSelectionWidget(
                          onSelection: (value) {},
                          initialGender: GenderType.female,
                        ),
                        SizedBox(height: height * 0.04),
                        AppButton(
                          onPressed: () => _openYourIntesetScreen(context),
                          // => profileCubit.onProfileUpdatePress(),
                          text: "Update",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _openYourIntesetScreen(BuildContext context) {
    AppNavigator.push(context, const ShowYourInterestScreen());
  }
}
