
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/app_colors.dart';
import '../../../../constants/text_font_style.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../helpers/ui_helpers.dart';

class FlashCardLatinWidget extends StatefulWidget {
  const FlashCardLatinWidget({super.key, required this.text, required this.borderColor, required this.onTap});
      final String text;
      final Color borderColor;
      final VoidCallback onTap;
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
          padding: EdgeInsets.all(16.sp),
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 25.r,
                    backgroundColor: AppColors.cE6F9F6,
                    child: Center(child: Image.asset(Assets.icons.flashcard.path)),
                  ),
                  UIHelper.horizontalSpace(16.w),
                  Text(widget.text,style: TextFontStyle.textStyle16w500c333333,maxLines: 1,),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
