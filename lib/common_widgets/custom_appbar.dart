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
    this.onCallBack,
    this.leadingVisible = false,
    this.actions,
    this.centerTitle, this.backgroundColor,
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
          child: Padding(
              padding: EdgeInsets.all(12.sp),
              child: InkWell(
                onTap: onCallBack ?? Get.back,
                child: SvgPicture.asset(
                  Assets.icons.arrowleft,
                  height: 20.h,
                  width: 20.w,
                ),
              ))),
      backgroundColor:backgroundColor?? Colors.transparent,
      titleSpacing: 2.w,
      centerTitle: centerTitle,
      title: Text(
        title,
        style: TextFontStyle.textStyle16w600cFFFFFF
            .copyWith(color: AppColors.c333333, fontWeight: FontWeight.w500),
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
