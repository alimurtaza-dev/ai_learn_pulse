import 'package:ai_learn_pulse/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

import '../gen/colors.gen.dart';

class AppPhoneField extends StatelessWidget {
  final TextEditingController? controller;
  final String? initialCountryCode;
  final Function(PhoneNumber)? onChanged;
  final String invalidNumberMessage;
  final String? Function(PhoneNumber?)? validator;
  final InputDecoration? decoration;
  final Color? borderColor;
  final double borderRadius;
  final bool disableLengthCheck;
  final AutovalidateMode? autovalidateMode;

  const AppPhoneField({
    super.key,
    this.controller,
    this.initialCountryCode,
    this.onChanged,
    this.invalidNumberMessage = 'Invalid Number',
    this.validator,
    this.decoration,
    this.borderColor,
    this.borderRadius = 10.0,
    this.disableLengthCheck = false,
    this.autovalidateMode,
  });

  @override
  Widget build(BuildContext context) {
    return FormField<PhoneNumber>(
      validator: validator,
      autovalidateMode: autovalidateMode ?? AutovalidateMode.onUserInteraction,
      builder: (FormFieldState<PhoneNumber> state) {
        return IntlPhoneField(
          controller: controller,
          invalidNumberMessage: invalidNumberMessage,
          disableLengthCheck: disableLengthCheck,
          cursorColor: ColorName.primaryColor,
          decoration: decoration ??
              InputDecoration(
                contentPadding: const EdgeInsets.all(0),
                labelStyle: AppTextStyle.appMediumTextStyle(
                    size: 14, color: ColorName.black.withValues(alpha: .30)),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: borderColor ??
                          ColorName.black.withValues(alpha: .30)),
                  borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: borderColor ??
                          ColorName.black.withValues(alpha: .30)),
                  borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: borderColor ??
                          ColorName.black.withValues(alpha: .30)),
                  borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: borderColor ?? ColorName.primaryColor),
                  borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
                ),
                errorText: state.errorText, // Display validation error
              ),
          pickerDialogStyle: PickerDialogStyle(
            backgroundColor: Colors.white,
            searchFieldCursorColor: ColorName.black.withValues(alpha: .30),
            searchFieldInputDecoration: InputDecoration(
              hintText: 'Search country',
              hintStyle: AppTextStyle.appMediumTextStyle(
                  color: ColorName.black.withValues(alpha: .30)),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: ColorName.primaryColor),
              ),
            ),
          ),
          initialCountryCode: initialCountryCode ?? 'PK',
          onChanged: (phone) {
            onChanged?.call(phone);
            state.didChange(phone); 
          },
        );
      },
    );
  }
}
