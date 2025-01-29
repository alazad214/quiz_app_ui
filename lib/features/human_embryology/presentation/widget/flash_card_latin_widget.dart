
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/app_colors.dart';
import '../../../../constants/text_font_style.dart';
import '../../../../helpers/ui_helpers.dart';

class FlashCardLatinWidget extends StatefulWidget {
  const FlashCardLatinWidget({super.key, required this.text, required this.borderColor, required this.onTap, required this.img});
      final String text;
      final Color borderColor;
      final VoidCallback onTap;
      final Widget img;
  @override
  State<FlashCardLatinWidget> createState() => _FlashCardLatinWidgetState();
}

class _FlashCardLatinWidgetState extends State<FlashCardLatinWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Expanded(
        child: Container(
          padding: EdgeInsets.all(5.sp),
          decoration: ShapeDecoration(
              color: Colors.white,
              shape:
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  side: BorderSide(
                    color:widget.borderColor
                  )

              )
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 25.r,
                  backgroundColor: AppColors.cE6F9F6,
                  child: Center(child: widget.img),
                ),
                UIHelper.horizontalSpace(16.w),
                Expanded(child: Text(widget.text,style: TextFontStyle.textStyle16w500c333333,maxLines: 1,)),
              ],
            ),
          ),
        ),
      )
    );
  }
}
