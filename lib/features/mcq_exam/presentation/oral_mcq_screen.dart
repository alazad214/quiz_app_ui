import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mehdi0605/common_widgets/custom_appbar.dart';
import 'package:mehdi0605/common_widgets/custom_button.dart';
import 'package:mehdi0605/constants/app_colors.dart';
import 'package:mehdi0605/constants/text_font_style.dart';
import 'package:mehdi0605/features/mcq_exam/presentation/mcq_result_screen.dart';
import 'package:mehdi0605/helpers/ui_helpers.dart';

class OralMCQScreen extends StatefulWidget {
  const OralMCQScreen({super.key});

  @override
  State<OralMCQScreen> createState() => _OralMCQScreenState();
}

class _OralMCQScreenState extends State<OralMCQScreen> {
  int? selectedOption;
  Timer? timer;
  late int remainingSeconds;

  @override
  void initState() {
    super.initState();
    remainingSeconds = 10 * 60;
    startTime();
  }

  void startTime() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (remainingSeconds > 0) {
        setState(() {
          remainingSeconds--;
        });
      }
    });
  }

  String formatTime(int seconds) {
    final minutes = seconds ~/ 60;
    final secs = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}';
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: 'Ontomy Topic'),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Question 2/10',
                    style: TextFontStyle.textStyle14w400c333333),
                Text('⏰ ${formatTime(remainingSeconds)} min Left',
                    style: TextFontStyle.textStyle14w400c333333)
              ],
            ),
            UIHelper.verticalSpace(24.h),
            Text(
              'What is the primary function of the heart?',
              style: TextFontStyle.textStyle16w500c333333,
            ),
            UIHelper.verticalSpace(20.h),
            buildOption(),
            UIHelper.verticalSpace(30.h),
            Row(
              children: [
                Expanded(
                  child: customButton(
                      name: 'Previous',
                      color: AppColors.cWhite,
                      borderColor: AppColors.c000000,
                      onCallBack: () {},
                      context: context,
                      textStyle: TextFontStyle.textStyle16w600cFFFFFF
                          .copyWith(color: AppColors.c767676)),
                ),
                UIHelper.horizontalSpace(10.w),
                Expanded(
                  child: customButton(
                    name: 'Next',
                    color: AppColors.c000000,
                    borderColor: AppColors.c000000,
                    onCallBack: () {
                      Get.to(() => McqResultScreen());
                    },
                    context: context,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildOption() {
    return Column(
      children: List.generate(4, (index) {
        return InkWell(
          onTap: () {
            setState(() {
              selectedOption = index;
            });
          },
          child: Container(
            padding: EdgeInsets.all(16.sp),
            margin: EdgeInsets.all(5.sp),
            decoration: BoxDecoration(
              color: AppColors.cWhite,
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(
                width: 1.w,
                color: selectedOption == index
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
          ),
        );
      }),
    );
  }


}
