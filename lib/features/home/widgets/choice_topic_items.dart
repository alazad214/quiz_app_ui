import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehdi0605/constants/text_font_style.dart';

class TopicsTile extends StatelessWidget {
  const TopicsTile(
      {super.key, required this.topics, required this.topicimages});

  final String topics;
  final String topicimages;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(60)),
              ),
              child: Image.asset(
                topicimages,
              )),
          SizedBox(height: 8.h),
          Text(
            topics, // Display the topic name here
            style: TextFontStyle.textStyle14w400c767676helvatica,
          ),
        ],
      ),
    );
  }
}
