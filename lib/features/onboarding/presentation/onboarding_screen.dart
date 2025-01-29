import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehdi0605/constants/app_colors.dart';
import 'package:mehdi0605/constants/text_font_style.dart';
import 'package:mehdi0605/gen/assets.gen.dart';
import 'package:mehdi0605/helpers/all_routes.dart';
import 'package:mehdi0605/helpers/navigation_service.dart';
import 'package:mehdi0605/helpers/ui_helpers.dart';
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
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                child: Image.asset(
                  Assets.images.welcomeImage.path,
                  fit: BoxFit.cover,
                ),
              ),
              Center(
                child: Column(
                  children: [
                    UIHelper.verticalSpace(60.h),
                    SizedBox(
                      height: 50,
                      width: 204,
                      child: Image.asset(Assets.images.onBoardingLogo.path),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 252, // Adjust this value as needed
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    'Prepare with Confidence',
                    style: TextFontStyle.textStyle26w700cF5F5F5,
                  ),
                ),
              ),
              Positioned(
                bottom: 156, // Adjust this value as needed
                left: 0,
                right: 0,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Explore our exam simulations and practice questions before you buy. Take the first step towards acing your exams!',
                      style: TextStyle(
                        fontFamily: 'HelveticaNeueRoman.otf',
                        fontSize: 16.sp,
                        color: AppColors.cF5F5F5,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.normal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 80,
                left: 0,
                right: 0,
                child: Center(
                  child: Column(
                    children: [
                      SliderButton(
                        action: () async {
                          NavigationService.navigateToReplacement(Routes.login);
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
                                style: TextStyle(
                                  fontFamily: TextFontStyle
                                      .textStyle16w400c5C5C5C.fontFamily,
                                  color: AppColors.cFFFFFF,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ),
                          ),
                        ),

                        // icon needs to be fixed------------------------>

                        icon: Image.asset(
                          Assets.icons.trippleArrow.path,
                        ),
                        width: 350.w,
                        radius: 16,
                        backgroundColor: AppColors.primaryColor,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
