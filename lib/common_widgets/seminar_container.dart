import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mehdi0605/constants/app_colors.dart';
import 'package:mehdi0605/constants/text_font_style.dart';
import 'package:mehdi0605/gen/assets.gen.dart';
import 'package:mehdi0605/helpers/ui_helpers.dart';

class SeminarContainer extends StatelessWidget {
  const SeminarContainer({
    super.key,
    required this.carouselLength,
    required this.carouselImage,
  });

  final int carouselLength;
  final String carouselImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      padding: EdgeInsets.all(10.w),
      width: double.infinity,
      height: 160.h,
      decoration: BoxDecoration(
        color: AppColors.cFFFFFF,
        borderRadius: BorderRadius.all(Radius.circular(12.r)),
      ),
      child: Stack(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(12.r)),
                child: Image.asset(
                  Assets.images.seminar.path,
                  width: Get.width / 2.8,
                  height: 131.h,
                  fit: BoxFit.cover,
                ),
              ),
              UIHelper.horizontalSpace(16.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UIHelper.verticalSpace(16.w),
                    Text(
                      'World Science Day daylong seminar',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextFontStyle.textStyle16w500cFF6B6Bhelvatica
                          .copyWith(color: AppColors.c333333),
                    ),
                    UIHelper.verticalSpace(8.w),
                    Row(
                      children: [
                        for (int i = 0; i < carouselLength; i++)
                          Align(
                            widthFactor: .5,
                            child: CircleAvatar(
                              backgroundColor: AppColors.scaffoldBackground,
                              radius: 14.r,
                              child: CircleAvatar(
                                radius: 12.r,
                                backgroundImage: AssetImage(carouselImage),
                              ),
                            ),
                          ),
                        UIHelper.horizontalSpace(8.w),
                        Text(
                          '+20 Going',
                          style: TextFontStyle.textStyle14w500c00BFA6.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            left: 8.w,
            top: 8.h,
            child: Container(
              width: 50.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.cFFFFFF,
                borderRadius: BorderRadius.all(Radius.circular(10.r)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4.r,
                    spreadRadius: 2.r,
                  ),
                ],
              ),
              child: Text(
                '10, Nov',
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextFontStyle.textStyle14w700c00BFA6helvatica,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
