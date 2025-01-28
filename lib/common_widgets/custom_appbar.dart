import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../constants/app_colors.dart';
import '../constants/text_font_style.dart';
import '../gen/assets.gen.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    required this.title,
    this.subtitle,
    this.onCallBack,
    this.leadingVisible = false,
    this.actions,
    this.centerTitle,
    this.backgroundColor,
    this.isLeading = false,
  });

  final String title;
  final String? subtitle;
  final onCallBack;
  final bool leadingVisible;
  final actions;
  final centerTitle;
  final backgroundColor;
  final bool isLeading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading:
          isLeading, // Set automaticallyImplyLeading based on isLeading
      leading: isLeading
          ? null
          : Visibility(
              visible: leadingVisible,
              child: Padding(
                  padding: EdgeInsets.all(12.sp),
                  child: InkWell(
                    onTap: onCallBack ?? Get.back,
                    child: SvgPicture.asset(
                      Assets.icons.arrowleft,
                      height: 20.h,
                      width: 20.w,
                    ),
                  )),
            ),
      backgroundColor: backgroundColor ?? Colors.transparent,
      titleSpacing: 2.w,
      centerTitle: centerTitle,
      title: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextFontStyle.textStyle16w600cFFFFFF.copyWith(
                color: AppColors.c333333,
                fontWeight: FontWeight.w300,
                fontSize: 16.sp,
                fontFamily: 'HelveticaNeueRoman.otf',
              ),
            ),
            Text(
              subtitle ?? '',
              style: TextStyle(
                fontFamily: 'HelveticaNeueRoman.otf',
                fontSize: 24.sp,
                color: AppColors.c333333,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
          ],
        ),
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
