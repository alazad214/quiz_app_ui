import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehdi0605/common_widgets/custom_button.dart';
import 'package:mehdi0605/common_widgets/custom_textfeild.dart';
import 'package:mehdi0605/constants/app_colors.dart';
import 'package:mehdi0605/constants/text_font_style.dart';
import 'package:mehdi0605/helpers/navigation_service.dart';
import 'package:mehdi0605/helpers/ui_helpers.dart';

import '../../../helpers/all_routes.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _is_checked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Create Your Account',
                        style: TextFontStyle.textStyle24w700c333333),
                    UIHelper.verticalSpace(8.h),
                    Text(
                        'Welcome to Heilprakt! Start mastering your exam preparation!',
                        style: TextFontStyle.textStyle16w400c767676),
                    UIHelper.verticalSpace(24.h),
                    CustomTextfield(
                      hintText: 'First Name',
                    ),
                    UIHelper.verticalSpaceMedium,
                    CustomTextfield(
                      hintText: 'Last Name',
                    ),
                    UIHelper.verticalSpaceMedium,
                    CustomTextfield(
                      hintText: 'Username',
                    ),
                    UIHelper.verticalSpaceMedium,
                    CustomTextfield(
                      hintText: 'Email',
                    ),
                    UIHelper.verticalSpaceMedium,
                    CustomTextfield(
                      hintText: 'Gender',
                    ),
                    UIHelper.verticalSpaceMedium,
                    CustomTextfield(
                      hintText: 'DD.MM.YY',
                    ),
                    UIHelper.verticalSpaceMedium,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 6.h),
                          child: Checkbox(
                            activeColor: AppColors.c333333,
                            value: _is_checked,
                            onChanged: (val) {
                              setState(() {
                                _is_checked = val!;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: Wrap(
                            children: [
                              Column(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                        fontFamily: 'HelveticaNeueRoman.otf',
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'I agree to Heilprakt\'s',
                                          style: TextStyle(
                                              color: AppColors.c333333),
                                        ),
                                        TextSpan(
                                          text: ' User Agreement ',
                                          style: TextStyle(
                                              color: AppColors.primaryColor),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              print("User Agreement tapped");
                                            },
                                        ),
                                        TextSpan(
                                          text: 'and ',
                                          style: TextStyle(
                                              color: AppColors.c333333),
                                        ),
                                        TextSpan(
                                          text: 'Privacy Policy.',
                                          style: TextStyle(
                                              color: AppColors.primaryColor),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              print("Privacy Policy tapped");
                                            },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    UIHelper.verticalSpaceMedium,
                    customButton(
                        borderRadius: 16.r,
                        name: 'Sign Up',
                        textStyle: TextFontStyle.textStyle16w500cFFFFFF,
                        onCallBack: () {
                          NavigationService.navigateToUntilReplacement(
                              Routes.homePage);
                        },
                        context: context),
                    UIHelper.verticalSpaceMedium,
                    Center(
                      child: Text('Already have an account?',
                          style: TextFontStyle.textStyle16w400c767676),
                    ),
                    UIHelper.verticalSpaceMediumLarge,
                    customButton(
                        borderRadius: 16.r,
                        color: AppColors.c333333,
                        borderColor: AppColors.c333333,
                        name: 'Sign In',
                        textStyle: TextFontStyle.textStyle16w500cFFFFFF,
                        onCallBack: () {
                          NavigationService.navigateTo(Routes.login);
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
