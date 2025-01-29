import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mehdi0605/common_widgets/custom_appbar.dart';
import 'package:mehdi0605/common_widgets/custom_button.dart';
import 'package:mehdi0605/common_widgets/custom_textfeild.dart';
import 'package:mehdi0605/constants/text_font_style.dart';
import 'package:mehdi0605/gen/assets.gen.dart';
import 'package:mehdi0605/helpers/ui_helpers.dart';

import '../../../constants/app_colors.dart';

class CommunityPostScreen extends StatefulWidget {
  const CommunityPostScreen({super.key});

  @override
  State<CommunityPostScreen> createState() => _CommunityPostScreenState();
}

class _CommunityPostScreenState extends State<CommunityPostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: 'Community'),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: UIHelper.kDefaulutPadding()),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Anika Tasrin',
              style: TextFontStyle.textStyle16w500c333333,
            ),
            UIHelper.verticalSpace(15.h),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  CustomTextfield(
                    hintText: 'Write something',
                    maxline: 5,
                    borderColor: AppColors.cWhite,
                  ),
                  Container(
                    padding: EdgeInsets.all(10.sp),
                    child: Row(
                      children: [
                        Icon(
                          Icons.image,
                          color: AppColors.c00BFA6,
                          size: 27,
                        ),
                        Text('  |  Add Photo',
                            style:
                                TextFontStyle.textStyle14w400c333333helvatica)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            UIHelper.verticalSpace(15.h),
            Container(
              height: 80.h,
              width: 80.w,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: AppColors.cWhite,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Image.asset(Assets.images.profileAvatar.path),
            ),
            SizedBox(height: Get.height / 2.8),
            customButton(
              name: 'Submit',
              onCallBack: () {},
              context: context,
            )
          ],
        ),
      ),
    );
  }
}
