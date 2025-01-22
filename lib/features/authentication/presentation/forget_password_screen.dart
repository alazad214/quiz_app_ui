import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mehdi0605/common_widgets/custom_button.dart';
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
  bool _is_checked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Login to your account',
                    style: TextFontStyle.textStyle24w700c333333),
                UIHelper.verticalSpace(8.h),
                Text('Welcome Back to Heilprakt!',
                    style: TextFontStyle.textStyle16w400c767676),
                UIHelper.verticalSpace(24.h),
                TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.r),
                      borderSide: const BorderSide(
                        color: AppColors.cC0C0C0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.r),
                      borderSide: const BorderSide(
                        color: AppColors.cC0C0C0,
                      ),
                    ),
                    hintText: 'Enter email',
                    hintStyle:
                        TextStyle(fontSize: 16, color: AppColors.cC0C0C0C),
                  ),
                ),
                UIHelper.verticalSpaceMedium,
                TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.r),
                      borderSide: const BorderSide(
                        color: AppColors.cC0C0C0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.r),
                      borderSide: const BorderSide(
                        color: AppColors.cC0C0C0,
                      ),
                    ),
                    hintText: 'Enter password',
                    hintStyle:
                        TextStyle(fontSize: 16, color: AppColors.cC0C0C0C),
                  ),
                ),
                UIHelper.verticalSpaceMedium,
                customButton(
                    borderRadius: 16.r,
                    name: 'Sign In',
                    textStyle: TextFontStyle.textStyle16w500cFFFFFF,
                    onCallBack: () {},
                    context: context),
                UIHelper.verticalSpaceMedium,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          checkColor: AppColors.c333333,
                          value: _is_checked,
                          onChanged: (val) {
                            setState(() {
                              _is_checked = val!;
                            });
                          },
                        ),
                        Text('Remember Me',
                            style: TextFontStyle.textStyle16w400c33333),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Forget Password?',
                          style: TextFontStyle.textStyle16w400c00BFA6),
                    ),
                  ],
                ),
                UIHelper.verticalSpaceMedium,
                Center(
                  child: Text('Or Do not have an account?',
                      style: TextFontStyle.textStyle16w400c767676),
                ),
                UIHelper.verticalSpaceMediumLarge,
                customButton(
                    borderRadius: 16.r,
                    color: AppColors.c333333,
                    borderColor: AppColors.c333333,
                    name: 'Sign Up',
                    textStyle: TextFontStyle.textStyle16w500cFFFFFF,
                    onCallBack: () {
                      NavigationService.navigateToReplacement(Routes.signup);
                    },
                    context: context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
