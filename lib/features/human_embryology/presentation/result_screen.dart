import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mehdi0605/common_widgets/custom_appbar.dart';
import 'package:mehdi0605/features/bottom_nav/presentation/navigation_screen.dart';
import 'package:mehdi0605/features/human_embryology/presentation/widget/restart_flash_card_button.dart';
import 'package:mehdi0605/helpers/navigation_service.dart';
import 'package:mehdi0605/helpers/ui_helpers.dart';

import '../../../common_widgets/custom_button.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: ''),
      body: Padding(
        padding: EdgeInsets.all(24.sp),
        child: Column(
          children: [
            Center(
                child: Image.asset(
              Assets.images.congratulation.path,
              width: 120.w,
              height: 120.h,
            )),
            UIHelper.verticalSpace(24.h),
            Text(
              "Great Job! 🎉",
              style: TextFontStyle.textStyle18w700c333333,
            ),
            UIHelper.verticalSpace(15.h),
            Center(
                child: Text(
              "You’ve completed all the flashcards for Human Embryology. Keep up the great work, and review often to strengthen your memory!",
              style: TextFontStyle.textStyle16w400c767676helvatica,
            )),
            UIHelper.verticalSpace(32.h),
            TextButton(
                onPressed: () {
                  NavigationService.goBack;
                },
                child: Text(
                  "Back to the last question",
                  style: TextFontStyle.textStyle14w500c00BFA6,
                )),
            Spacer(),
            RestartFlashCardButton(
                buttonName: "Restart Flashcards",
                color: Colors.transparent,
                borderColor: AppColors.c767676,
                textStyle: TextFontStyle.textStyle16w500c767676helvatica,
                onTap: () {
                  Get.offAll(() => NavigationScreen());
                }),
            UIHelper.verticalSpace(16.h),
            Padding(
              padding: const EdgeInsets.only(bottom: 63),
              child: customButton(
                name: 'Go to Next Topic',
                onCallBack: () {
                   Get.offAll(()=>NavigationScreen());
                },
                context: context,
              ),
            )
          ],
        ),
      ),
    );
  }
}
