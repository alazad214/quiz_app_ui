import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehdi0605/constants/text_font_style.dart';
import 'package:mehdi0605/helpers/ui_helpers.dart';

import '../../../common_widgets/custom_appbar.dart';
import '../../../common_widgets/custom_button.dart';
import '../../../constants/app_colors.dart';
import '../widget/score_info_widget.dart';

class OralResultScreen extends StatefulWidget {
  const OralResultScreen({super.key});

  @override
  State<OralResultScreen> createState() => _OralResultScreenState();
}

class _OralResultScreenState extends State<OralResultScreen> {
  final double scorePercentage = 0.10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      appBar: CustomAppbar(
        title: 'Choose Topic',
      ),
      body: Padding(
        padding: EdgeInsets.all(24.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 100.w,
                    height: 100.h,
                    child: CircularProgressIndicator(
                      value: scorePercentage,
                      strokeWidth: 8,
                      backgroundColor: Colors.grey[300],
                      valueColor:
                          AlwaysStoppedAnimation<Color>(AppColors.primaryColor),
                    ),
                  ),
                  Text(
                    "${(scorePercentage * 100).toInt()}%",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            UIHelper.verticalSpace(24.h),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Congratulations!",
                    style: TextFontStyle.textStyle16w700c333333,
                  ),
                  Text(
                    "You've Passed the exam with 85%",
                    style: TextFontStyle.textStyle16w500c333333,
                  ),
                ],
              ),
            ),
            UIHelper.verticalSpace(60.h),
            ScoreInfoWidget(),
            UIHelper.verticalSpace(12.h),
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  "Retake?",
                  style: TextFontStyle.textStyle14w500c00BFA6
                ),
              ),
            ),
            Spacer(),
            customButton(
              name: 'Review Incorrect Answers',
              onCallBack: () {},
              context: context,
            )
          ],
        ),
      ),
    );
  }
}


