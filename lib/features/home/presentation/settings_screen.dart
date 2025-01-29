import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehdi0605/common_widgets/custom_appbar.dart';
import 'package:mehdi0605/common_widgets/custom_button.dart';
import 'package:mehdi0605/common_widgets/custom_textfeild.dart';
import 'package:mehdi0605/constants/app_colors.dart';
import 'package:mehdi0605/constants/text_font_style.dart';
import 'package:mehdi0605/helpers/ui_helpers.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: 'Settings'),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment
                    .bottomRight, // Adjusts the alignment of the children in the stack
                children: [
                  CircleAvatar(
                    radius: 45, // Background circle size
                    backgroundImage: AssetImage('assets/images/person.png'),
                  ),
                  GestureDetector(
                    onTap: () => {},
                    child: Image.asset(
                      'assets/images/update_image.png',
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
                    // NavigationService.navigateToReplacement(Routes.signup);
                  },
                  context: context),
            ],
          ),
        ),
      ),
    );
  }
}
