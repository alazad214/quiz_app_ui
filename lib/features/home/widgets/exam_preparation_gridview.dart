import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehdi0605/constants/text_font_style.dart';

import '../../../constants/app_colors.dart';
import '../../../gen/assets.gen.dart';

class ExamTile extends StatelessWidget {
  const ExamTile({
    super.key,
    required this.examimages,
    required this.topics,
  });
  final String topics;
  final String examimages;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 110,
          width: 111,
          decoration: BoxDecoration(
            color: AppColors.cFFFFFF,
            borderRadius: BorderRadius.all(Radius.circular(14)),
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: 8, // Position the image at the bottom
                left: 0,
                right: 0,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SizedBox(
                      height: 60.h,
                      width: 60.w,
                      child: Image.asset(
                        examimages,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom:
                    4, // Adjust this value to position the text appropriately
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    topics, // Display the topic name here
                    style: TextFontStyle.textStyle14w400c333333helvatica,
                    textAlign: TextAlign.center, // Center the text horizontally
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
