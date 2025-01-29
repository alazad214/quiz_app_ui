import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehdi0605/constants/app_colors.dart';
import 'package:mehdi0605/constants/text_font_style.dart';
import 'package:mehdi0605/helpers/ui_helpers.dart';

class SeminarContainer extends StatefulWidget {
  const SeminarContainer({
    super.key,
    required this.carouselLength,
    required this.carouselImage,
  });
  final int carouselLength;

  final String carouselImage;
  @override
  State<SeminarContainer> createState() => _SeminarContainerState();
}

class _SeminarContainerState extends State<SeminarContainer> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // First container (bottom container)
        Container(
          width: 340.w,
          height: 149.w,
          decoration: BoxDecoration(
            color: AppColors.cFFFFFF,
            borderRadius: BorderRadius.all(Radius.circular(12.r)),
          ),
        ),
        // Second container (top container with an image)
        Positioned(
          top: 10
              .h, // You can adjust this for the vertical distance between the two containers
          left: 10
              .w, // You can adjust this for the horizontal position of the second container
          child: Stack(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 151.w,
                    height: 131.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12.r)),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12.r)),
                      child: Image.asset(
                        'assets/images/seminar.png', // Replace with your image path
                        fit: BoxFit
                            .cover, // This will make sure the image covers the container size
                        width: 151.w,
                        height: 131.h,
                      ),
                    ),
                  ),
                  UIHelper.horizontalSpace(16.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UIHelper.verticalSpace(16.w),
                      Text(
                        'World Science Day',
                        style: TextFontStyle.textStyle16w500cFF6B6Bhelvatica
                            .copyWith(color: AppColors.c333333),
                      ),
                      Text(
                        'daylong seminar',
                        style: TextFontStyle.textStyle16w500cFF6B6Bhelvatica
                            .copyWith(color: AppColors.c333333),
                      ),
                      UIHelper.verticalSpace(8.w),
                      Row(
                        children: [
                          for (int i = 0; i < widget.carouselLength; i++)
                            Align(
                              widthFactor: .5,
                              child: CircleAvatar(
                                backgroundColor: AppColors.scaffoldBackground,
                                radius: 14.r,
                                child: CircleAvatar(
                                  radius: 12.r,
                                  backgroundImage:
                                      AssetImage(widget.carouselImage),
                                ),
                              ),
                            ),
                          UIHelper.horizontalSpace(8.w),
                          Text(
                            '+20 Going',
                            style:
                                TextFontStyle.textStyle14w500c00BFA6.copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Positioned(
                left: 8.w,
                top: 8.h,
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        '10',
                        style: TextFontStyle.textStyle14w700c00BFA6helvatica,
                      ),
                      Text(
                        'Nov',
                        style: TextFontStyle.textStyle14w700c00BFA6helvatica,
                      ),
                    ],
                  ),
                  width: 50.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: AppColors.cFFFFFF,
                    borderRadius: BorderRadius.all(Radius.circular(12.r)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
