import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/text_font_style.dart';
import '../../../helpers/ui_helpers.dart';

class ScoreInfoWidget extends StatelessWidget {
  const ScoreInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          //             // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Score:",
              style: TextFontStyle.textStyle16w500c333333,
            ),
            Spacer(),
            Text(
              "(75%)",
              style: TextFontStyle.textStyle16w400c333333,
            ),
            Spacer(),
            Text(
              "Passed",
              style: TextFontStyle.textStyle16w500c333333,
            ),
          ],
        ),
        UIHelper.verticalSpace(12.h),
        Row(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Time Taken:",
              style: TextFontStyle.textStyle16w500c333333,
            ),
            UIHelper.horizontalSpaceLarge,
            Text(
              "1 hour, 45 minutes",
              style: TextFontStyle.textStyle16w400c333333,
            ),
            // Text("Passed",style: TextFontStyle.textStyle16w500c333333,),
          ],
        ),
        UIHelper.verticalSpace(12.h),
        Row(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Correct Answers:",
              style: TextFontStyle.textStyle16w500c333333,
            ),
            UIHelper.horizontalSpace(20.w),
            Text(
              "1 hour, 45 minutes",
              style: TextFontStyle.textStyle16w400c333333,
            ),
            // Text("Passed",style: TextFontStyle.textStyle16w500c333333,),
          ],
        ),
      ],
    );
  }
}