import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:mehdi0605/common_widgets/custom_button.dart';
import 'package:mehdi0605/common_widgets/custom_textfeild.dart';
import 'package:mehdi0605/constants/app_colors.dart';
import 'package:mehdi0605/constants/text_font_style.dart';
import 'package:mehdi0605/features/authentication/forget_password.dart';
import 'package:mehdi0605/features/bottom_nav/presentation/navigation_screen.dart';
import 'package:mehdi0605/helpers/navigation_service.dart';
import 'package:mehdi0605/helpers/ui_helpers.dart';

import '../../../helpers/all_routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChacked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(24.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Login to your account',
                        style: TextFontStyle.textStyle24w700c333333),
                    UIHelper.verticalSpace(8.h),
                    Text('Welcome Back!!',
                        style: TextFontStyle.textStyle16w400c767676),
                    UIHelper.verticalSpace(24.h),
                    CustomTextfield(
                      hintText: 'Enter email',
                    ),
                    UIHelper.verticalSpaceMedium,
                    CustomTextfield(
                      hintText: 'Enter password',
                    ),
                    UIHelper.verticalSpaceMedium,
                    customButton(
                        name: 'Sign In',
                        textStyle: TextFontStyle.textStyle16w500cFFFFFF,
                        onCallBack: () {
                          Get.to(() => NavigationScreen());
                        },
                        context: context),
                    UIHelper.verticalSpaceMedium,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              activeColor: AppColors.c333333,
                              value: isChacked,
                              onChanged: (val) {
                                setState(() {
                                  isChacked = val!;
                                });
                              },
                            ),
                            Text('Remember Me',
                                style: TextFontStyle.textStyle16w400c33333),
                          ],
                        ),
                        TextButton(
                          onPressed: () {
                            Get.to(()=>ForgetPassword());
                          },
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
                          NavigationService.navigateToReplacement(
                            Routes.signup,
                          );
                        },
                        context: context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
