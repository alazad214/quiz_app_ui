import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/text_font_style.dart';
import '../../../../gen/assets.gen.dart';

class FlipCardWidget extends StatefulWidget {
  const FlipCardWidget({super.key});

  @override
  State<FlipCardWidget> createState() => _FlipCardWidgetState();
}

class _FlipCardWidgetState extends State<FlipCardWidget> {
  int currentIndex = 1;
  final List<String> questions = [
    "Embryology is the branch of biology that studies the formation, early growth, and development of living organisms.",
    "What is the powerhouse of the cell?",
    "What is the process of converting light energy into chemical energy?",
    "Define mitosis and meiosis.",
    "What is the basic unit of life?",
    "What is the function of the nucleus in a cell?",
    "Name the process of breaking down glucose for energy.",
    "What are the building blocks of proteins?",
    "What is DNA replication?",
    "What is the role of ribosomes in cells?"
  ];
  @override
  Widget build(BuildContext context) {
    return FlipCard(
      direction: FlipDirection.HORIZONTAL,
      front: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 24.h),
          child: Center(
            child: Text(
              "This is the answer to the question.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.black87,
              ),
            ),
          ),
        ),
      ),
      back: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 100.h, horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.r),
                child: Image.asset(
                  Assets.images.carasul.path,
                  height: 200.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 16.h),
              Text(questions[currentIndex],
                  textAlign: TextAlign.center,
                  style: TextFontStyle.textStyle16w500c333333),
            ],
          ),
        ),
      ),
    );
  }
}
