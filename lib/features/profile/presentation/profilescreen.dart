import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mehdi0605/common_widgets/custom_button.dart';
import 'package:mehdi0605/constants/app_colors.dart';
import 'package:mehdi0605/constants/text_font_style.dart';
import 'package:mehdi0605/helpers/all_routes.dart';
import 'package:mehdi0605/helpers/navigation_service.dart';
import 'package:mehdi0605/helpers/ui_helpers.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Uint8List? _image;
  File? selectedImage;

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

  // Show the bottom sheet with options to choose from
  void showImagePickerOption(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: AppColors.cE8ECEC,
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.27,
          child: Padding(
            padding: const EdgeInsets.all(50.0),
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
                          size: 70,
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
                          size: 70,
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 32),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                _image != null
                                    ? CircleAvatar(
                                        radius: 34,
                                        backgroundImage: MemoryImage(_image!),
                                      )
                                    : CircleAvatar(
                                        radius: 34,
                                        backgroundImage: const AssetImage(
                                            'assets/images/person.png'),
                                      ),
                                GestureDetector(
                                  onTap: () {
                                    showImagePickerOption(context);
                                  },
                                  child: Image.asset(
                                    'assets/images/update_image.png',
                                    height: 32,
                                    width: 32,
                                  ),
                                ),
                              ],
                            ),
                            UIHelper.horizontalSpace(250.w),
                            CircleAvatar(
                              radius: 16.r,
                              backgroundColor: AppColors.cE8ECEC,
                              child: GestureDetector(
                                onTap: () {
                                  NavigationService.navigateTo(
                                      Routes.settinstScreen);
                                },
                                child: const Icon(
                                  Icons.settings_outlined,
                                  size: 24,
                                  color: AppColors.c767676,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Sayeda Fatema',
                          style: TextFontStyle.headline24w500c0CC0DF,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset(
                              'assets/icons/location.png',
                              height: 16.h,
                              width: 16.w,
                            ),
                            UIHelper.horizontalSpace(2.w),
                            Text(
                              'myemail@gmail.com',
                              style:
                                  TextFontStyle.textStyle14w400c767676helvatica,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              UIHelper.verticalSpaceMediumLarge,
              Container(
                width: 345.w,
                height: 208.h,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          children: [
                            UIHelper.verticalSpace(14.h),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/icons/shield-tick.png',
                                      height: 18.h,
                                      width: 18.w,
                                    ),
                                    UIHelper.horizontalSpace(4.w),
                                    Text(
                                      'Privacy Policy',
                                      style:
                                          TextFontStyle.textStyle16w400c333333,
                                    ),
                                  ],
                                ),
                                UIHelper.horizontalSpace(160.w),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: 14.w,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            UIHelper.verticalSpace(6.w),
                            Divider(),
                            UIHelper.verticalSpace(16.w),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/icons/Check.png',
                                      height: 18.h,
                                      width: 18.w,
                                    ),
                                    UIHelper.horizontalSpace(4.w),
                                    Text(
                                      'Terms & Conditions',
                                      style:
                                          TextFontStyle.textStyle16w400c333333,
                                    ),
                                  ],
                                ),
                                UIHelper.horizontalSpace(118.w),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: 14.w,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            UIHelper.verticalSpace(6.w),
                            Divider(),
                            UIHelper.verticalSpace(16.w),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/icons/Help.png',
                                      height: 18.h,
                                      width: 18.w,
                                    ),
                                    UIHelper.horizontalSpace(4.w),
                                    Text(
                                      'About Us',
                                      style:
                                          TextFontStyle.textStyle16w400c333333,
                                    ),
                                  ],
                                ),
                                UIHelper.horizontalSpace(195.w),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: 14.w,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            UIHelper.verticalSpace(6.w),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: AppColors.cE6F9F6,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: customButton(
                    height: 50.h,
                    borderRadius: 16.r,
                    color: AppColors.primaryColor,
                    name: 'Sign Up',
                    textStyle: TextFontStyle.textStyle16w500cFFFFFF,
                    onCallBack: () {
                      NavigationService.navigateToReplacement(Routes.signup);
                    },
                    context: context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
