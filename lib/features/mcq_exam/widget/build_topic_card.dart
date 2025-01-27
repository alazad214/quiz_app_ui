import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';

Widget buildTopicCard(
  String title,
  borderColor,
  AssetGenImage? image,
  ontap,
) {
  return InkWell(
    onTap: ontap,
    child: Container(
      height: 88.h,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(10.sp),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1,
        ),
        color: AppColors.cFFFFFF,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          Container(
            height: 68.h,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: AppColors.cF5F5F5,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Image.asset(
              image!.path,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Text(
              title,
              style: TextFontStyle.textStyle16w500c333333,
            ),
          ),
          Image.asset(
            Assets.icons.arrowRightPng.path,
            height: 30,
          ),
        ],
      ),
    ),
  );
}
