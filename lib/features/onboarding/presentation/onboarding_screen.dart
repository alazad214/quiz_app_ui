import 'package:flutter/material.dart';
import 'package:mehdi0605/common_widgets/custom_button.dart';
import 'package:mehdi0605/constants/app_colors.dart';
import 'package:mehdi0605/constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
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
            bottom: 88,
            left: 0,
            right: 0,
            child: Center(
              child: SliderButton(
                action: () async {
                  ///Do something here OnSlide
                  return true;
                },

                ///Put label over here
                label: Text(
                  "Get Started!",
                  style: TextStyle(
                      color: Color(0xff4a4a4a),
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
                icon: Center(
                    child: Icon(
                  Icons.power_settings_new,
                  color: Colors.white,
                  size: 40.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                )),

                ///Change All the color and size from here.
                width: 380,
                radius: 16,
                buttonColor: const Color.fromARGB(255, 0, 191, 150),
                backgroundColor: AppColors.primaryColor,
                // highlightedColor: Colors.white,
                baseColor: const Color.fromARGB(255, 7, 6, 6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
