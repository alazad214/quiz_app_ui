import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mehdi0605/common_widgets/custom_appbar.dart';
import 'package:mehdi0605/common_widgets/custom_textfeild.dart';
import 'package:mehdi0605/constants/app_colors.dart';
import 'package:mehdi0605/constants/text_font_style.dart';
import 'package:mehdi0605/features/mcq_exam/presentation/topic_section_screen.dart';
import 'package:mehdi0605/features/mcq_exam/widget/build_topic_card.dart';
import 'package:mehdi0605/gen/assets.gen.dart';
import 'package:mehdi0605/helpers/ui_helpers.dart';

class McqFirstScreen extends StatefulWidget {
  const McqFirstScreen({super.key});

  @override
  State<McqFirstScreen> createState() => _McqFirstScreenState();
}

class _McqFirstScreenState extends State<McqFirstScreen> {
  int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: 'Choose Topic'),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select or Search for a Topic to Practice',
              style: TextFontStyle.textStyle16w500c333333,
            ),
            UIHelper.verticalSpaceMedium,
            CustomTextfield(
              fillColor: AppColors.cWhite,
              borderColor: AppColors.cWhite,
              prefixIcon: Icon(Icons.search),
              hintText: 'Search for courses or seminars',
            ),
            UIHelper.verticalSpaceMedium,
            ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return buildTopicCard(
                    'Anatomyr topic',
                    selectedIndex == index
                        ? AppColors.primaryColor
                        : Colors.transparent,
                    Assets.images.anatomy, () {
                  setState(() {
                    selectedIndex = index;
                  });
                  Get.to(() => TopicSectionScreen());
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
