import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mehdi0605/common_widgets/custom_appbar.dart';
import 'package:mehdi0605/common_widgets/custom_button.dart';
import 'package:mehdi0605/constants/app_colors.dart';
import 'package:mehdi0605/constants/text_font_style.dart';
import 'package:mehdi0605/features/bottom_nav/presentation/navigation_screen.dart';
import 'package:mehdi0605/features/webinar/widgets/webiner_popup.dart';
import 'package:mehdi0605/gen/assets.gen.dart';
import 'package:mehdi0605/helpers/ui_helpers.dart';

class WebinarDetails extends StatefulWidget {
  const WebinarDetails({super.key});

  @override
  State<WebinarDetails> createState() => _WebinarDetailsState();
}

class _WebinarDetailsState extends State<WebinarDetails> {
  final List<Map<String, dynamic>> carouselData = [
    {
      'text':
          'I wanted to share some tips and strategies for anyone preparing for the upcoming Anatomy State Exam.',
      'image': 'assets/images/person.png',
      'title': 'Arina',
      'time': '24h',
    },
    {
      'text':
          'I wanted to share some tips and strategies for anyone preparing for the upcoming Anatomy State Exam.',
      'image': 'assets/images/person.png',
      'title': 'John',
      'time': '12h',
    },
    {
      'text':
          'I wanted to share some tips and strategies for anyone preparing for the upcoming Anatomy State Exam.',
      'image': 'assets/images/person.png',
      'title': 'Sarah',
      'time': '48h',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(



      appBar: CustomAppbar(title: 'Webinar Details'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0.w),
              child: Center(
                child: SizedBox(
                  height: 220.h,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(14.r),
                    child: Image.asset(
                      Assets.images.seminar.path,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'World Science Day daylong seminar',
                style: TextFontStyle.textStyle20w500c333333.copyWith(
                  fontSize: 21.sp,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.calendar_month),
                      UIHelper.horizontalSpace(4.w),
                      Text('10 November'),
                    ],
                  ),
                  UIHelper.horizontalSpace(22.w),
                  Row(
                    children: [
                      Icon(Icons.punch_clock),
                      UIHelper.horizontalSpace(4.w),
                      Text('9:30 AM - 5:00 PM'),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text('By: Carlos j.r'),
            ),
            UIHelper.verticalSpace(14.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      for (var attendee in carouselData)
                        Padding(
                          padding: EdgeInsets.only(right: 8.w),
                          child: Align(
                            widthFactor: .5,
                            child: CircleAvatar(
                              backgroundColor: AppColors.scaffoldBackground,
                              radius: 14.r,
                              child: CircleAvatar(
                                radius: 12.r,
                                backgroundImage: AssetImage(attendee['image']),
                              ),
                            ),
                          ),
                        ),
                      Text(
                        '+20 Going',
                        style: TextFontStyle.textStyle14w500c00BFA6.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  UIHelper.verticalSpace(31.h),
                  Text(
                    '   Details',
                    style:
                        TextFontStyle.textStyle16w500cFF6B6Bhelvatica.copyWith(
                      color: AppColors.c333333,
                    ),
                  ),
                  Container(
                    width: 80.w,
                    child: Divider(
                      thickness: 1.5.w,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  UIHelper.verticalSpace(20.h),
                  Text(
                      'Join us for a full-day seminar celebrating World Science Day. Explore groundbreaking scientific advancements, discussions with industry experts, and networking opportunities.'),
                  UIHelper.verticalSpace(60.h),
                  customButton(
                      height: 50.h,
                      borderRadius: 16.r,
                      color: AppColors.primaryColor,
                      name: 'Interested',
                      textStyle: TextFontStyle.textStyle16w500cFFFFFF,
                      onCallBack: () {
                        webinerPopup(context, () {
                          Get.offAll(() => NavigationScreen());
                        });
                      },
                      context: context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
