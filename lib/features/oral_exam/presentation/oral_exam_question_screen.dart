import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehdi0605/helpers/all_routes.dart';
import 'package:mehdi0605/helpers/navigation_service.dart';
import 'package:mehdi0605/helpers/ui_helpers.dart';

import '../../../common_widgets/custom_appbar.dart';
import '../../../common_widgets/custom_button.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/text_font_style.dart';

class OralExamQuestionScreen extends StatefulWidget {
  const OralExamQuestionScreen({super.key});

  @override
  State<OralExamQuestionScreen> createState() => _OralExamQuestionScreenState();
}

class _OralExamQuestionScreenState extends State<OralExamQuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      appBar:CustomAppbar(title: 'Choose Topic',),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24.w,vertical: 24.h),
        child: Column(
          children: [
            Row(
              children: [
                Text("| Question 2/10",style: TextFontStyle.textStyle16w700c333333,)
              ],
            ),
            UIHelper.verticalSpace(24.h),
            Text(dummy,style: TextFontStyle.textStyle16w500c333333,),
            UIHelper.verticalSpace(24.h),
            customButton(name: 'Show Answer', onCallBack: () { NavigationService.navigateTo(Routes.oralExamSuggestedAnswerScreen); }, context: context,)
          ],
        ),
      ),
    );
  }
}



String dummy="A 45-year-old patient presents with sudden onset severe headache, dizziness, and blurred vision. Upon examination, you observe signs of increased blood pressure and mild nuchal rigidity. The patient has no known history of trauma or recent illness.\n\nQuestion: What is the most likely diagnosis, and what would be your initial approach to managing this patient?";
