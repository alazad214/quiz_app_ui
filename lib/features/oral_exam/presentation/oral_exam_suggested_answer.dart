import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehdi0605/helpers/all_routes.dart';
import 'package:mehdi0605/helpers/navigation_service.dart';

import '../../../common_widgets/custom_appbar.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../helpers/ui_helpers.dart';
import '../widget/custom_answer button.dart';
import 'oral_result_screen.dart';

class OralExamSuggestedAnswer extends StatefulWidget {
  const OralExamSuggestedAnswer({super.key});

  @override
  State<OralExamSuggestedAnswer> createState() => _OralExamSuggestedAnswerState();
}

class _OralExamSuggestedAnswerState extends State<OralExamSuggestedAnswer> {
  // bool _isfloatingvisible=false;
  final List<Map<String, String>> questions = [
    {
      "question":
      "A 45-year-old patient presents with sudden onset severe headache, dizziness, and blurred vision. Upon examination, you observe signs of increased blood pressure and mild nuchal rigidity. The patient has no known history of trauma or recent illness.\n\nWhat is the most likely diagnosis, and what would be your initial approach to managing this patient?",
      "answer":
      "The most likely diagnosis is a subarachnoid hemorrhage (SAH), which can present with a sudden, severe headache (often described as a 'thunderclap headache') and may be accompanied by neurological symptoms such as blurred vision and dizziness. Initial management includes immediate neuroimaging (preferably a CT scan) to confirm the diagnosis, followed by urgent referral to neurology or neurosurgery for further treatment."
    },
    {
      "question":
      "A 60-year-old male presents with progressive difficulty in swallowing, hoarseness, and unintentional weight loss over 3 months. Examination reveals cervical lymphadenopathy and mild dehydration.\n\nWhat is the most likely diagnosis, and what investigations would you perform?",
      "answer":
      "The most likely diagnosis is esophageal carcinoma. Investigations should include an upper GI endoscopy with biopsy, barium swallow, and imaging studies like CT or PET scans to assess the extent of disease and metastasis."
    },
    {
      "question":
      "A 25-year-old woman presents with a butterfly-shaped rash on her face, joint pain, and fatigue. Laboratory tests reveal anemia and proteinuria.\n\nWhat is the most likely diagnosis, and what initial tests should you perform?",
      "answer":
      "The most likely diagnosis is systemic lupus erythematosus (SLE). Initial tests should include ANA (antinuclear antibody), anti-dsDNA, complete blood count, urinalysis, and renal function tests."
    },
  ];

  // Current question index
  int currentIndex = 0;

  // Show Floating Button
  bool isFloatingVisible = false;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.cFFFFFF,
        appBar:CustomAppbar(title: 'Choose Topic',),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 24.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("| Question ${currentIndex + 1}/${questions.length}",style: TextFontStyle.textStyle16w700c333333,),
                  Spacer(),
                  Image.asset(Assets.icons.alarmclock.path,width: 24.w,height: 24.h,),
                  Text("(2:00)",style: TextFontStyle.textStyle14w400c767676helvatica,)
                ],
              ),
              UIHelper.verticalSpace(24.h),
              Text(question,style: TextFontStyle.textStyle16w500c333333,),
              UIHelper.verticalSpace(28.h),
              // customButton(name: 'Show Answer', onCallBack: () {  }, context: context,)

              Text("Suggested Answer :",style: TextFontStyle.textStyle16w700primaryColor,),
              UIHelper.verticalSpace(12.h),
              Text( questions[currentIndex]["answer"]!,style: TextFontStyle.textStyle16w400c767676,),
              UIHelper.verticalSpace(56.h),
              Row(
                children: [
                  Expanded(
                      child:  CustomAnswerButton(buttonName: "Answered  Wrong ❌",
                        textStyle:  TextFontStyle.textStyle16w500cFF6B6B,
                        color: AppColors.cFFFFFF,
                        borderColor: AppColors.primaryColor,
                        onTap: () {
                          setState(() {
                            isFloatingVisible=true;
                          });
                        },)
                  ),
                  UIHelper.horizontalSpace(16.h),
                  Expanded(
                      child:  CustomAnswerButton(buttonName: 'Answered Correct✅',
                        textStyle: TextFontStyle.textStyle16w500primaryColor,
                        color: AppColors.cFFFFFF,
                        borderColor: AppColors.primaryColor,
                        onTap: () {
                          setState(() {
                            isFloatingVisible=true;
                          });
                        },
                      )
                  )
                ],
              ),
              UIHelper.verticalSpace(60.h),
            ],
          ),
        ),
      floatingActionButton: isFloatingVisible
          ? Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Container(
          width: 364.w,
          child: FloatingActionButton.extended(
            backgroundColor: AppColors.c000000,
            onPressed: () {
              // Check if it's the last question
              if (currentIndex < questions.length - 1) {
                setState(() {
                  currentIndex++;
                  isFloatingVisible = false;
                });
              } else {
               NavigationService.navigateTo(Routes.oralResultScreen);
              }
            },
            label: Text(
              "Next",
              style: TextFontStyle.textStyle16w500cFFFFFF,
            ),
          ),
        ),
      )
          : null,
    );

  }
}
String question="A 45-year-old patient presents with sudden onset severe headache, dizziness, and blurred vision. Upon examination, you observe signs of increased blood pressure and mild nuchal rigidity. The patient has no known history of trauma or recent illness.\n\nQuestion: What is the most likely diagnosis, and what would be your initial approach to managing this patient?";
String answer="The most likely diagnosis is a subarachnoid hemorrhage (SAH), which can present with a sudden, severe headache (often described as a 'thunderclap headache') and may be accompanied by neurological symptoms such as blurred vision and dizziness. Increased blood pressure and nuchal rigidity are also common findings. Initial management includes immediate neuroimaging (preferably a CT scan) to confirm the diagnosis, followed by urgent referral to neurology or neurosurgery for further treatment.";