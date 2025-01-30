import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../constants/app_colors.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../helpers/ui_helpers.dart';

class CarouselSliderWidget extends StatefulWidget {
  const CarouselSliderWidget({super.key});

  @override
  State<CarouselSliderWidget> createState() => _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  final ValueNotifier<int> _selectedIndex = ValueNotifier(0);
  int _currentIndex = 0;

  final List<String> imgList = [
    Assets.images.carasul.path,
    Assets.images.carasul.path,
    Assets.images.carasul.path,
    Assets.images.carasul.path,
    Assets.images.carasul.path,
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: imgList.map((item) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: Image.asset(
                item, fit: BoxFit.cover, width: double.maxFinite,
              ),
            );
          }).toList(),
          options: CarouselOptions(
            autoPlay: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 200),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        UIHelper.verticalSpace(10.h),
        AnimatedSmoothIndicator(
          activeIndex: _currentIndex,
          count: imgList.length,
          effect: const WormEffect(
            dotHeight: 8,
            dotWidth: 8,
            spacing: 8,
            dotColor: AppColors.cC0C0C0,
            activeDotColor:AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
