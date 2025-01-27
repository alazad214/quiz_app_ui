import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mehdi0605/common_widgets/custom_appbar.dart';
import 'package:mehdi0605/common_widgets/custom_button.dart';
import 'package:mehdi0605/constants/text_font_style.dart';
import 'package:mehdi0605/features/mcq_exam/presentation/oral_mcq_screen.dart';
import 'package:mehdi0605/gen/assets.gen.dart';
import 'package:mehdi0605/helpers/ui_helpers.dart';

class McqTopicInstruction extends StatefulWidget {
  const McqTopicInstruction({super.key});

  @override
  State<McqTopicInstruction> createState() => _McqTopicInstructionState();
}

class _McqTopicInstructionState extends State<McqTopicInstruction> {
  final List<String> instructionTitles = [
    "This exam contains 60 questions. You have a total time of 2 hours to complete the exam. The timer will begin as soon as you start, and it will run continuously until the time is up.",
    " Questions will be presented one at a time. You can move forward through the questions, but you cannot go back to change your answers once you've moved to the next question.",
    "Each question must be answered before proceeding to the next one.",
    "You will see immediate feedback will be shown during the exam. You'll see your results only after the exam is completed.",
    "To pass this exam, you must answer at least 75% of the questions correctly.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: 'Instructions'),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(UIHelper.kDefaulutPadding()),
        child: Column(
          children: [
            Image.asset(
              Assets.images.instructionImage.path,
              height: 200,
            ),
            UIHelper.verticalSpace(15.h),
            Text(
              'All the best for exam !',
              style: TextFontStyle.textStyle16w700cFFFFFF,
            ),
            Text(
              'Here’s some Instructions before starting the exam',
              textAlign: TextAlign.center,
              style: TextFontStyle.textStyle16w500c333333,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: instructionTitles.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.h),
                  child: Column(
                    children: [
                      InstructionItem(
                        title: instructionTitles[index],
                      ),
                    ],
                  ),
                );
              },
            ),
            customButton(
                name: 'Ready to go',
                onCallBack: () {
                  Get.to(() => OralMCQScreen());
                },
                context: context)
          ],
        ),
      ),
    );
  }
}

class InstructionItem extends StatelessWidget {
  const InstructionItem({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(Assets.icons.dot.path, height: 28.h),
        SizedBox(width: 5.w),
        Expanded(
          child: Text(
            title,
            style: TextFontStyle.textStyle16w400c5C5C5C,
            overflow: TextOverflow.visible,
          ),
        ),
      ],
    );
  }
}
