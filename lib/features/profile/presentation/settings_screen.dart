import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mehdi0605/common_widgets/custom_appbar.dart';
import 'package:mehdi0605/common_widgets/custom_button.dart';
import 'package:mehdi0605/common_widgets/custom_textfeild.dart';
import 'package:mehdi0605/constants/app_colors.dart';
import 'package:mehdi0605/constants/text_font_style.dart';
import 'package:mehdi0605/gen/assets.gen.dart';
import 'package:mehdi0605/helpers/ui_helpers.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  Uint8List? _image;
  File? selectedImage;
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  // Function to pick image from gallery
  Future _pickImageFromGallery() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        selectedImage = File(pickedFile.path);
        _image = selectedImage!.readAsBytesSync();
      });
    }
  }

  // Function to pick image from camera
  Future _pickImageFromCamera() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        selectedImage = File(pickedFile.path);
        _image = selectedImage!.readAsBytesSync();
      });
    }
  }

  void showImagePickerOption(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: AppColors.cE8ECEC,
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.27,
          child: Padding(
            padding: EdgeInsets.all(50.sp),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10.r),
                    onTap: () {
                      _pickImageFromGallery();
                      Navigator.pop(context);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.image,
                          size: 70.sp,
                        ),
                        Text('Gallery'),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10.r),
                    focusColor: AppColors.primaryColor,
                    onTap: () {
                      _pickImageFromCamera();
                      Navigator.pop(context);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.camera_alt,
                          size: 70.sp,
                        ),
                        Text('Camera'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: 'Settings'),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(16.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 45.sp,
                    backgroundImage: _image != null
                        ? MemoryImage(_image!)
                        : AssetImage(Assets.images.person.path)
                            as ImageProvider,
                  ),
                  GestureDetector(
                    onTap: () => {
                      showImagePickerOption(context),
                    },
                    child: Image.asset(
                      Assets.images.updateImage.path,
                      height: 32,
                      width: 32,
                    ),
                  ),
                ],
              ),
              UIHelper.verticalSpaceSmall,
              Text(
                'Personal Information',
                style: TextFontStyle.textStyle20w500c222222,
              ),
              UIHelper.verticalSpaceSmall,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ' First Name',
                        style: TextFontStyle.textStyle16w400c333333,
                      ),
                      UIHelper.verticalSpace(8.h),
                      Container(
                        width: 164,
                        child: CustomTextfield(
                          controller: firstnameController,
                          borderColor: AppColors.cFAFAFA,
                          hintText: 'First Name',
                          fillColor: AppColors.cE8ECEC,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(' Last Name',
                          style: TextFontStyle.textStyle16w400c333333),
                      UIHelper.verticalSpace(8.h),
                      Container(
                        width: 164,
                        child: CustomTextfield(
                          controller: lastnameController,
                          borderColor: AppColors.cFAFAFA,
                          hintText: 'Last Name',
                          fillColor: AppColors.cE8ECEC,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              UIHelper.verticalSpace(16.h),
              Text(
                ' Email',
                style: TextFontStyle.textStyle16w400c333333,
              ),
              UIHelper.verticalSpace(8.h),
              CustomTextfield(
                controller: emailController,
                borderColor: AppColors.cFAFAFA,
                fillColor: AppColors.cE8ECEC,
                hintText: 'Enter your email',
              ),
              UIHelper.verticalSpace(16.h),
              Text(
                ' Location',
                style: TextFontStyle.textStyle16w400c333333,
              ),
              UIHelper.verticalSpace(8.h),
              CustomTextfield(
                controller: locationController,
                borderColor: AppColors.cFAFAFA,
                fillColor: AppColors.cE8ECEC,
                hintText: 'Enter your location',
              ),
              UIHelper.verticalSpace(60.h),
              customButton(
                  height: 50.h,
                  borderRadius: 16.r,
                  color: AppColors.primaryColor,
                  name: 'Update',
                  textStyle: TextFontStyle.textStyle16w500cFFFFFF,
                  onCallBack: () {
                    // Handle update button logic here
                  },
                  context: context),
            ],
          ),
        ),
      ),
    );
  }
}
