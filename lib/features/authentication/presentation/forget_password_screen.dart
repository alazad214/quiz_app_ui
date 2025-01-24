import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehdi0605/common_widgets/custom_button.dart';
import 'package:mehdi0605/common_widgets/custom_textfeild.dart';
import 'package:mehdi0605/constants/app_colors.dart';
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
  bool _obscureText1 = false;
  bool _obscureText2 = false;

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
                Text('Create a strong passowrd',
                    style: TextFontStyle.textStyle24w700c333333),
                UIHelper.verticalSpaceMedium,

                //CUSTOM FIELDS

                CustomTextfield(
                  hintText: 'Enter Password',
                  hintTextSyle:
                      TextStyle(fontSize: 16, color: AppColors.cC0C0C0C),
                  isObsecure: !_obscureText1,
                  borderRadius: 16.r,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText1 = !_obscureText1;
                      });
                    },
                    child: Icon(
                      _obscureText1 ? Icons.visibility : Icons.visibility_off,
                      color: AppColors.cC0C0C0C,
                    ),
                  ),
                ),
                UIHelper.verticalSpaceMedium,
                CustomTextfield(
                  hintText: 'Confirm Password',
                  hintTextSyle:
                      TextStyle(fontSize: 16, color: AppColors.cC0C0C0C),
                  isObsecure: !_obscureText2,
                  borderRadius: 16.r,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText2 = !_obscureText2;
                      });
                    },
                    child: Icon(
                      _obscureText2 ? Icons.visibility : Icons.visibility_off,
                      color: AppColors.cC0C0C0C,
                    ),
                  ),
                ),
                UIHelper.verticalSpaceMedium,
                customButton(
                  borderRadius: 16.r,
                  name: 'Continue',
                  textStyle: TextFontStyle.textStyle16w500cFFFFFF,
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
