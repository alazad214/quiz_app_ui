import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehdi0605/common_widgets/custom_appbar.dart';
import 'package:mehdi0605/common_widgets/custom_button.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/text_font_style.dart';
import '../../../helpers/ui_helpers.dart';

class McqResultScreen2 extends StatefulWidget {
  const McqResultScreen2({super.key});

  @override
  State<McqResultScreen2> createState() => _McqResultScreen2State();
}

class _McqResultScreen2State extends State<McqResultScreen2> {
  int? selectedOption = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: 'Result Screen'),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(UIHelper.kDefaulutPadding()),
        child: Column(
          children: [
            buildOption(),
            buildOption(),
            buildOption(),
            UIHelper.verticalSpace(100.h)
          ],
        ),
      ),
      bottomSheet: Container(
        height: 85,
        padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 25.h),
        color: Colors.transparent,
        width: double.infinity,
        child: customButton(
            name: 'Go back to home', onCallBack: () {}, context: context),
      ),
    );
  }

  Widget buildOption() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('Question 1/3', style: TextFontStyle.textStyle14w400c333333),
      UIHelper.verticalSpace(24.h),
      Text(
        'What is the primary function of the heart?',
        style: TextFontStyle.textStyle16w500c333333,
      ),
      UIHelper.verticalSpace(20.h),
      ListView.builder(
          itemCount: 4,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (_, index) {
            return Container(
              padding: EdgeInsets.all(16.sp),
              margin: EdgeInsets.all(5.sp),
              decoration: BoxDecoration(
                color: AppColors.cWhite,
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(
                  width: 1.w,
                  color: selectedOption == 3
                      ? AppColors.primaryColor
                      : AppColors.cWhite,
                ),
              ),
              child: Row(
                children: [
                  Container(
                    height: 20.h,
                    width: 20.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.primaryColor,
                        width: 1.w,
                      ),
                    ),
                    child: Center(
                      child: selectedOption == index
                          ? Icon(Icons.circle,
                              size: 12.sp, color: AppColors.primaryColor)
                          : SizedBox(),
                    ),
                  ),
                  UIHelper.horizontalSpace(10.w),

                  // Option Text
                  Expanded(
                    child: Text(
                      "Option ${index + 1}",
                      style: TextFontStyle.textStyle16w400c00BFA6.copyWith(
                        color: AppColors.c333333,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
      Container(
        padding: EdgeInsets.all(16.sp),
        margin: EdgeInsets.all(5.sp),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.cWhite,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            width: 1.w,
            color: AppColors.primaryColor,
          ),
        ),
        child: Flexible(
          child: RichText(
            text: TextSpan(
              text: 'Explanation: ',
              style: TextFontStyle.textStyle16w500c00BFA6,
              children: [
                TextSpan(
                    text:
                        'This exam contains 60 questions. You have a total time of 2 hours to complete the exam. The timer will begin as soon as you start, and it will run continuously until the time is up. ',
                    style: TextFontStyle.textStyle16w500c00BFA6
                        .copyWith(color: AppColors.c333333)),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
