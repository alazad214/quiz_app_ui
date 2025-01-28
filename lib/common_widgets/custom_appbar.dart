import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mehdi0605/constants/app_colors.dart';
import 'package:mehdi0605/constants/text_font_style.dart';
import 'package:mehdi0605/gen/assets.gen.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    required this.title,
    this.onCallBack,
    this.leadingVisible = false,
    this.actions,
    this.centerTitle,
    this.backgroundColor,
  });

  final String title;
  final onCallBack;
  final bool leadingVisible;
  final actions;
  final centerTitle;
  final backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: Visibility(
          visible: !leadingVisible,
          child: Container(
            height: 35.h,
            width: 35.w,
            margin: EdgeInsets.all(8.sp),
            padding: EdgeInsets.all(6.sp),
            decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(10.r)),
            child: InkWell(
              onTap: onCallBack ?? Get.back,
              child: SvgPicture.asset(
                Assets.icons.arrowleft,
                height: 12.h,
                width: 12.w,
                color: AppColors.cWhite,
              ),
            ),
          )),
      backgroundColor: backgroundColor ?? Colors.transparent,
      titleSpacing: 2.w,
      centerTitle: centerTitle ?? true,
      title: Text(title,
          style: TextFontStyle.textStyle16w500c00BFA6
              .copyWith(color: AppColors.c000000)),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
