import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mehdi0605/common_widgets/custom_appbar.dart';
import 'package:mehdi0605/features/mcq_exam/presentation/mcq_topic_instruction.dart';
import 'package:mehdi0605/helpers/ui_helpers.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';

class TopicSectionScreen extends StatefulWidget {
  const TopicSectionScreen({super.key});

  @override
  State<TopicSectionScreen> createState() => _TopicSectionScreenState();
}

class _TopicSectionScreenState extends State<TopicSectionScreen> {
  int? selectedIndex;
  int? selectedIndex2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: 'Choose Topic'),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: 2,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return buildTopicCard(index, 'Anatomy topic');
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTopicCard(int index, String title) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
        topicSectionSheet(context);
      },
      child: Container(
        height: 56.h,
        margin: EdgeInsets.only(top: 10.h),
        padding: EdgeInsets.all(10.sp),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.cFFFFFF,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: selectedIndex == index
                ? AppColors.primaryColor
                : Colors.transparent,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: TextFontStyle.textStyle16w500c333333,
              ),
            ),
            Image.asset(
              Assets.icons.arrowRightPng.path,
              height: 30,
            ),
          ],
        ),
      ),
    );
  }

  void topicSectionSheet(
    BuildContext context,
  ) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(18.r),
        ),
      ),
      backgroundColor: AppColors.cWhite,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          width: double.infinity,
          padding: EdgeInsets.only(
              top: 10.sp, left: 20.sp, right: 20.sp, bottom: 20.sp),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 3.h,
                width: Get.width / 3.5,
                decoration: BoxDecoration(
                  color: AppColors.c767676,
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              UIHelper.verticalSpace(10),
              Text(' Choose Your Exam Simulation',
                  style: TextFontStyle.textStyle16w500c333333),
              UIHelper.verticalSpace(10),
              ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex2 = index;
                        });
                        Get.to(() => McqTopicInstruction());
                      },
                      child: Container(
                        height: 40.h,
                        decoration: BoxDecoration(
                          color: AppColors.cFFFFFF,
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                              color: selectedIndex2 == index
                                  ? AppColors.primaryColor
                                  : AppColors.c767676,
                              width: 0.1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('⁉️ 10 Questions ',
                                style: TextFontStyle.textStyle16w400c00BFA6
                                    .copyWith(
                                  color: AppColors.c767676,
                                )),
                            Text('-',
                                style: TextFontStyle.textStyle16w400c00BFA6
                                    .copyWith(
                                  color: AppColors.c767676,
                                )),
                            Text('⏰ 20 minutes',
                                style: TextFontStyle.textStyle16w400c00BFA6
                                    .copyWith(
                                  color: AppColors.c767676,
                                )),
                          ],
                        ),
                      ),
                    );
                  })
            ],
          ),
        );
      },
    );
  }
}
