import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehdi0605/constants/app_colors.dart';
import 'package:mehdi0605/constants/text_font_style.dart';
import 'package:mehdi0605/gen/assets.gen.dart';
import 'package:mehdi0605/helpers/all_routes.dart';
import 'package:mehdi0605/helpers/navigation_service.dart';
import 'package:slider_button/slider_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image.asset(
              Assets.images.welcomeImage.path,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 60.h),
              child: SizedBox(
                height: 50,
                width: 204,
                child: Image.asset(Assets.images.onBoardingLogo.path),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 50.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  /// 🔹 Title
                  Text(
                    'Prepare with Confidence',
                    textAlign: TextAlign.center,
                    style: TextFontStyle.textStyle26w700cF5F5F5,
                  ),

                  SizedBox(height: 10.h),

                  /// 🔹 Description
                  Text(
                    'Explore our exam simulations and practice questions before you buy. '
                    'Take the first step towards acing your exams!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'HelveticaNeueRoman',
                      fontSize: 16.sp,
                      color: AppColors.cF5F5F5,
                      fontWeight: FontWeight.w300,
                    ),
                  ),

                  SizedBox(height: 20.h),

                  Column(
                    children: [
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: SliderButton(
                          action: () async {
                            NavigationService.navigateToReplacement(
                                Routes.login);
                            return true;
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 80,
                              width: 140,
                              decoration: BoxDecoration(
                                color: AppColors.cButtonColor,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Center(
                                child: Text(
                                  "Get Started",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextFontStyle.textStyle16w400c5C5C5C
                                      .copyWith(color: AppColors.cWhite),
                                ),
                              ),
                            ),
                          ),
                          width: 350.w,
                          radius: 16,
                          backgroundColor: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
