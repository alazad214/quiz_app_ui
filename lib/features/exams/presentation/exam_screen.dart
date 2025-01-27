import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mehdi0605/common_widgets/custom_appbar.dart';
import 'package:mehdi0605/constants/app_colors.dart';
import 'package:mehdi0605/constants/text_font_style.dart';
import 'package:mehdi0605/features/mcq_exam/presentation/mcq_first_screen.dart';
import 'package:mehdi0605/gen/assets.gen.dart';

class ExamScreen extends StatefulWidget {
  const ExamScreen({super.key});

  @override
  State<ExamScreen> createState() => _ExamScreenState();
}

class _ExamScreenState extends State<ExamScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(
          title: 'Exam Preparation',
          leadingVisible: true,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(24.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Wrap(
                runSpacing: 10,
                spacing: 10,
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.start,
                children: [
                  buildExamCard('MCQ exam', Assets.images.mcqExamPng, () {
                    Get.to(() => McqFirstScreen());
                  }),
                  buildExamCard('Oral Exam', Assets.images.mcqExamPng, () {}),
                  buildExamCard('State exam', Assets.images.mcqExamPng, () {}),
                ],
              )
            ],
          ),
        ));
  }

  Widget buildExamCard(String title, AssetGenImage? image, ontap) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 160.h,
        width: Get.width / 2.5,
        decoration: BoxDecoration(
            color: AppColors.cFFFFFF,
            borderRadius: BorderRadius.circular(10.r),
            boxShadow: [
              BoxShadow(
                color: AppColors.c000000.withOpacity(0.1),
                blurRadius: 10.r,
                offset: const Offset(0, 2),
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            if (image != null)
              Image.asset(
                image.path,
                height: 90,
              ),
            Text(
              title,
              style: TextFontStyle.textStyle16w500c333333,
            ),
          ],
        ),
      ),
    );
  }
}
