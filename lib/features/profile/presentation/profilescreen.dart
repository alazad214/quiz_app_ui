import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehdi0605/common_widgets/custom_button.dart';
import 'package:mehdi0605/constants/app_colors.dart';
import 'package:mehdi0605/constants/text_font_style.dart';
import 'package:mehdi0605/gen/assets.gen.dart';
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
          padding: EdgeInsets.all(20.sp),
          child: Column(
            children: [
              Row(
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CircleAvatar(
                                  radius: 45.sp,
                                  backgroundImage:
                                      AssetImage(Assets.images.person.path),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    NavigationService.navigateTo(
                                        Routes.settingstScreen);
                                  },
                                  child: Image.asset(
                                    Assets.images.updateImage.path,
                                    height: 32.h,
                                    width: 32.w,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          'Asif Ullah',
                          style: TextFontStyle.headline24w500c0CC0DF,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset(
                              Assets.icons.location.path,
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
                  ),
             
                  CircleAvatar(
                    radius: 16.r,
                    backgroundColor: AppColors.cE8ECEC,
                    child: GestureDetector(
                      onTap: () {
                        NavigationService.navigateTo(Routes.settingstScreen);
                      },
                      child: Icon(
                        Icons.settings_outlined,
                        size: 24.sp,
                        color: AppColors.c767676,
                      ),
                    ),
                  ),
                ],
              ),
              UIHelper.verticalSpaceMediumLarge,
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15.sp),
                child: Column(
                  children: [
                    Column(
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
                                  style: TextFontStyle.textStyle16w400c333333,
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
                                  style: TextFontStyle.textStyle16w400c333333,
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
                                  style: TextFontStyle.textStyle16w400c333333,
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
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: AppColors.cE6F9F6,
                ),
              ),
              UIHelper.verticalSpaceMediumLarge,
              customButton(
                  height: 50.h,
                  borderRadius: 16.r,
                  color: AppColors.primaryColor,
                  name: 'Sign Up',
                  textStyle: TextFontStyle.textStyle16w500cFFFFFF,
                  onCallBack: () {
                    NavigationService.navigateToReplacement(Routes.signup);
                  },
                  context: context),
            ],
          ),
        ),
      ),
    );
  }
}
