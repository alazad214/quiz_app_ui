import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mehdi0605/common_widgets/custom_button.dart';
import 'package:mehdi0605/common_widgets/custom_textfeild.dart';
import 'package:mehdi0605/constants/text_font_style.dart';
import 'package:mehdi0605/helpers/navigation_service.dart';
import 'package:mehdi0605/helpers/ui_helpers.dart';

import '../../../helpers/all_routes.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100.h),
          Padding(
            padding: EdgeInsets.all(24.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Forget Password',
                  style: TextFontStyle.textStyle24w700c333333,
                ),
                UIHelper.verticalSpace(5.h),
                Text(
                  'Enter your email and forget your password. ',
                  style: TextFontStyle.textStyle16400c333333helvatica,
                ),
                UIHelper.verticalSpaceMedium,
                CustomTextfield(
                  hintText: 'Email',
                ),
                SizedBox(height: Get.height / 2),
                customButton(
                  borderRadius: 16.r,
                  name: 'Continue',
                  onCallBack: () {
                    NavigationService.navigateToReplacement(
                        Routes.otpVerification);
                  },
                  context: context,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
