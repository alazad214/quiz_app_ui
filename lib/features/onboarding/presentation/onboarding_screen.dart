import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:mehdi0605/common_widgets/custom_button.dart';
import 'package:mehdi0605/constants/app_colors.dart';
import 'package:mehdi0605/constants/text_font_style.dart';
import 'package:mehdi0605/gen/fonts.gen.dart';
import '../../../gen/assets.gen.dart';

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
          Container(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              Assets.images.welcomeImage.path,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 252, // Adjust this value as needed
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'Prepare with Confidence',
                style: TextFontStyle.textStyle26w700ccFFFFFF,
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
                  'Explore our exam simulations and practice questions before you buy.Take the first step towards acing your exams!',
                  style: TextStyle(
                    fontFamily: 'HelveticaNeueRoman.otf',
                    fontSize: 16,
                    color: AppColors.cFFFFFF,
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 68,
            left: 25,
            right: 25,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(16),
              ),
              height: 56,
              // Remove width constraint
              // width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: customButton(
                    name: 'Get Started', onCallBack: () {}, context: context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
