import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehdi0605/gen/assets.gen.dart';
import '../../../common_widgets/custom_button.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/text_font_style.dart';

import '../../../helpers/ui_helpers.dart';

void webinerPopup(BuildContext context, ontap) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        elevation: 12,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Container(
          padding: EdgeInsets.all(20.sp),
          width: double.infinity,
          decoration: BoxDecoration(
              color: AppColors.cE9EEEC,
              borderRadius: BorderRadius.circular(16.r)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                Assets.icons.success.path,
                height: 160.h,
              ),
              Text(
                  textAlign: TextAlign.center,
                  'Interested for the seminer',
                  style: TextFontStyle.textStyle24w700c333333),
              UIHelper.verticalSpace(8.h),
              Text(
                  textAlign: TextAlign.center,
                  "We will notify you for he webinar",
                  style: TextFontStyle.textStyle14w400c333333),
              UIHelper.verticalSpace(8.h),
              Text(
                  textAlign: TextAlign.center,
                  "9 November at 9:30 AM",
                  style: TextFontStyle.textStyle14w400c333333.copyWith(
                    color: AppColors.primaryColor
                  )),
              UIHelper.verticalSpace(8.h),
              customButton(
                  name: 'Go back to home', onCallBack: ontap, context: context)
            ],
          ),
        ),
      );
    },
  );
}
