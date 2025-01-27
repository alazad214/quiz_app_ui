import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mehdi0605/common_widgets/custom_appbar.dart';

import 'package:mehdi0605/common_widgets/custom_button.dart';
import 'package:mehdi0605/constants/app_colors.dart';
import 'package:mehdi0605/constants/text_font_style.dart';
import 'package:mehdi0605/features/mcq_exam/presentation/mcq_result_screen2.dart';
import 'package:mehdi0605/helpers/ui_helpers.dart';

class McqResultScreen extends StatefulWidget {
  @override
  State<McqResultScreen> createState() => _McqResultScreenState();
}

class _McqResultScreenState extends State<McqResultScreen> {
  final double scorePercentage = 0.10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: 'Result Screen'),
      body: Padding(
        padding: EdgeInsets.all(24.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 100.w,
                  height: 100.h,
                  child: CircularProgressIndicator(
                    value: scorePercentage,
                    strokeWidth: 10.r,
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation(AppColors.primaryColor),
                  ),
                ),
                Text("${(scorePercentage * 100).toInt()}%",
                    style: TextFontStyle.textStyle16w400c00BFA6),
              ],
            ),
            UIHelper.verticalSpaceMedium,
            Text("Congratulations!",
                style: TextFontStyle.textStyle16w700cFFFFFF),
            Text("You've Passed the exam with 85%",
                style: TextFontStyle.textStyle16w400c33333),
            UIHelper.verticalSpaceMedium,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Your Score: (75%)  Passed",
                    style: TextFontStyle.textStyle16w400c33333),
                UIHelper.verticalSpace(5),
                Text("Time Taken: 1 hour, 45 minutes",
                    style: TextFontStyle.textStyle16w400c33333),
                UIHelper.verticalSpace(5),
                Text("Correct Answers: 45 Correct, 15 Incorrect",
                    style: TextFontStyle.textStyle16w400c33333),
              ],
            ),
            Spacer(),
            customButton(
              name: 'Review Incorrect Answers',
              onCallBack: () {
                Get.to(() => McqResultScreen2());
              },
              context: context,
            ),
          ],
        ),
      ),
    );
  }
}
