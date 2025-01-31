import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehdi0605/constants/app_colors.dart';
import 'package:mehdi0605/features/human_embryology/presentation/widget/flip_card_widget.dart';
import 'package:mehdi0605/helpers/all_routes.dart';
import 'package:mehdi0605/helpers/navigation_service.dart';
import 'package:mehdi0605/helpers/ui_helpers.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';

class FlashTapCardScreen extends StatefulWidget {
  @override
  _FlashTapCardScreenState createState() => _FlashTapCardScreenState();
}

class _FlashTapCardScreenState extends State<FlashTapCardScreen> {
  int currentIndex = 0; // Tracks the current question index
  final int totalQuestions = 10; // Total number of questions

  void goToNextQuestion() {
    if (currentIndex < totalQuestions - 1) {
      setState(() {
        currentIndex++;
      });
    } else {
      NavigationService.navigateTo(Routes.resultScreen);
    }
  }

  void goToPreviousQuestion() {
    if (currentIndex > 0) {
      setState(() {
        currentIndex--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "${currentIndex + 1}/$totalQuestions",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Progress bar
            Container(
              width: double.infinity,
              height: 8.h,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: FractionallySizedBox(
                widthFactor: (currentIndex + 1) / totalQuestions,
                alignment: Alignment.centerLeft,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
            ),
            UIHelper.verticalSpace(32.h),
            Center(
              child: Text(
                "Tap the card to flip",
                style: TextFontStyle.textStyle14w400c767676helvatica,
              ),
            ),
            UIHelper.verticalSpace(16.h),
            FlipCardWidget(),

            UIHelper.verticalSpace(40.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: goToPreviousQuestion,
                  child: Image.asset(
                    Assets.icons.undo2.path,
                    width: 24.w,
                    color: (currentIndex >= 1)
                        ? AppColors.c000000
                        : Colors.black26,
                  ),
                ),
                GestureDetector(
                  onTap: goToNextQuestion,
                  child: Image.asset(
                    Assets.icons.undo3.path,
                    width: 24.w,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
