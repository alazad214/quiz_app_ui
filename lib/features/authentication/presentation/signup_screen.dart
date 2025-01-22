import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehdi0605/common_widgets/custom_button.dart';
import 'package:mehdi0605/constants/app_colors.dart';
import 'package:mehdi0605/constants/text_font_style.dart';
import 'package:mehdi0605/helpers/ui_helpers.dart';

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
                        hintText: 'First Name',
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
                        hintText: 'Last Name',
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
                        hintText: 'Username',
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
                        hintText: 'Email',
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
                        hintText: 'Gender',
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
                        hintText: 'DD.MM.YY',
                        hintStyle:
                            TextStyle(fontSize: 16, color: AppColors.cC0C0C0C),
                      ),
                    ),
                    UIHelper.verticalSpaceMedium,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Checkbox(
                          checkColor: AppColors.c333333,
                          value: _is_checked,
                          onChanged: (val) {
                            setState(
                              () {
                                _is_checked = val!;
                              },
                            );
                          },
                        ),
                        Expanded(
                          child: Wrap(
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                    fontFamily: 'HelveticaNeueRoman.otf',
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'I agree to Heilprakt\'s',
                                      style:
                                          TextStyle(color: AppColors.c333333),
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
                                      style:
                                          TextStyle(color: AppColors.c333333),
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
                        ),
                      ],
                    ),
                    UIHelper.verticalSpaceMedium,
                    customButton(
                        borderRadius: 16.r,
                        name: 'Sign Up',
                        textStyle: TextFontStyle.textStyle16w500cFFFFFF,
                        onCallBack: () {},
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
                          // Navigations
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
