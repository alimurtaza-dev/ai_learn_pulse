import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_cropper/image_cropper.dart';

import '../gen/colors.gen.dart';
import '../utils/app_pickers.dart';
import 'network_image_view.dart';

class EditProfileImageView extends StatefulWidget {
  final String? initialImageUrl;
  final Function(String pickedImagePath) onImageSelection;

  const EditProfileImageView({
    super.key,
    required this.onImageSelection,
    this.initialImageUrl,
  });

  @override
  State<EditProfileImageView> createState() => _EditProfileImageViewState();
}

class _EditProfileImageViewState extends State<EditProfileImageView> {
  String? _pickedImagePath;

  Future<void> _pickImage() async {
    final result = await AppPickers.pickImage(context);
    if (result != null) {
      _pickedImagePath = result.path;

      await _editImage();
    }
  }

  Future<void> _editImage() async {
    if (_pickedImagePath != null) {
      final CroppedFile? croppedFile = await ImageCropper().cropImage(
        sourcePath: _pickedImagePath!,
        uiSettings: [
          AndroidUiSettings(
            toolbarTitle: 'Adjust',
            toolbarColor: ColorName.primaryColor,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false,
          ),
          IOSUiSettings(
            title: 'Adjust',
          ),
          WebUiSettings(
            context: context,
          ),
        ],
      );

      // croppedFile != null;

      _pickedImagePath = croppedFile?.path ?? _pickedImagePath;
      if (_pickedImagePath != null) {
        widget.onImageSelection(_pickedImagePath!);
      }

      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(60),
          child: _pickedImagePath != null
              ? Image.file(
                  File(_pickedImagePath!),
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                )
              : NetworkImageView(
                  widget.initialImageUrl ?? '',
                  width: 120,
                  height: 120,
                ),
        ),
        GestureDetector(
          onTap: _pickImage,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
              color: ColorName.primaryColor,
              shape: BoxShape.circle,
            ),
            child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  FontAwesomeIcons.pen,
                  color: Colors.white,
                  size: 17,
                )),
          ),
        )
      ],
    );
  }
}
