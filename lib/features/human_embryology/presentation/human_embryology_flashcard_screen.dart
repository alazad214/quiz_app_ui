import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehdi0605/constants/text_font_style.dart';
import 'package:mehdi0605/features/human_embryology/presentation/widget/carusul_silider_widget.dart';
import 'package:mehdi0605/features/human_embryology/presentation/widget/flash_card_latin_widget.dart';
import 'package:mehdi0605/features/human_embryology/presentation/widget/learn_exam_button.dart';
import 'package:mehdi0605/helpers/navigation_service.dart';
import 'package:mehdi0605/helpers/ui_helpers.dart';
import '../../../common_widgets/custom_appbar.dart';
import '../../../constants/app_colors.dart';
import '../../../helpers/all_routes.dart';

class HumanEmbryologyFlashcardScreen extends StatefulWidget {
  const HumanEmbryologyFlashcardScreen({super.key});

  @override
  State<HumanEmbryologyFlashcardScreen> createState() =>
      _HumanEmbryologyFlashcardScreenState();
}

class _HumanEmbryologyFlashcardScreenState
    extends State<HumanEmbryologyFlashcardScreen> {
  int _selectedContainerIndex = -1;
  int _selectedButtonIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: 'Human Embryology',
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSliderWidget(),
            UIHelper.verticalSpace(29.h),

            // customButton(name: "Learn", onCallBack: (){},
            //     context: context,padding: EdgeInsets.symmetric(horizontal: 10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: LearnExamButton(
                  buttonName: 'Learn',
                  onTap: () {
                    setState(() {
                      _selectedButtonIndex = 0;
                    });
                  },
                  backgroundColor: _selectedButtonIndex == 0
                      ? AppColors.primaryColor
                      : AppColors.cFFFFFF,
                  textColor: _selectedButtonIndex == 0
                      ? TextFontStyle.textStyle16w500cFEFEFE
                      : TextFontStyle.textStyle14w500c242424,
                )),
                UIHelper.horizontalSpace(16.w),
                Expanded(
                    child: LearnExamButton(
                  buttonName: 'Exam',
                  onTap: () {
                    setState(() {
                      _selectedButtonIndex = 1;
                    });
                  },
                  backgroundColor: _selectedButtonIndex == 1
                      ? AppColors.primaryColor
                      : AppColors.cFFFFFF,
                  textColor: _selectedButtonIndex == 1
                      ? TextFontStyle.textStyle16w500cFEFEFE
                      : TextFontStyle.textStyle14w500c242424,
                )),
              ],
            ),
            UIHelper.verticalSpace(24.h),
            FlashCardLatinWidget(
              text: 'FlashCards',
              borderColor: _selectedContainerIndex == 0
                  ? AppColors.primaryColor
                  : Colors.transparent,
              onTap: () {
                setState(() {
                  _selectedContainerIndex = 0;
                  NavigationService.navigateTo(Routes.tapCardScreen);
                });
              },
              img: null,
            ),
            UIHelper.verticalSpace(16.h),
            FlashCardLatinWidget(
              text: 'Latin Term',
              borderColor: _selectedContainerIndex == 1
                  ? AppColors.primaryColor
                  : Colors.transparent,
              onTap: () {
                setState(() {
                  _selectedContainerIndex = 1;
                });
              },
              img: null,
            ),
          ],
        ),
      ),
    );
  }
}
