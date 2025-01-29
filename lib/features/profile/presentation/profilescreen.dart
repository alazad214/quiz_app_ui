import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                              alignment: Alignment
                                  .bottomRight, // Adjusts the alignment of the children in the stack
                              children: [
                                CircleAvatar(
                                  radius: 34, // Background circle size
                                  backgroundImage:
                                      AssetImage('assets/images/person.png'),
                                ),
                                GestureDetector(
                                  onTap: () {},
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
                                    Routes.settinstScreen,
                                  );
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
                      padding: const EdgeInsets.all(.0),
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          children: [
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
                            Divider(),
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
