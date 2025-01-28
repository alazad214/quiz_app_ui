import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mehdi0605/common_widgets/custom_appbar.dart';
import 'package:mehdi0605/common_widgets/custom_textfeild.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../helpers/ui_helpers.dart';

class CommunityCommentScreen extends StatefulWidget {
  const CommunityCommentScreen({super.key});

  @override
  State<CommunityCommentScreen> createState() => _CommunityCommentScreenState();
}

class _CommunityCommentScreenState extends State<CommunityCommentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "Anika's Posts"),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: UIHelper.kDefaulutPadding()),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpace(24.h),
            Container(
              padding: EdgeInsets.all(10.sp),
              margin: EdgeInsets.only(bottom: 10.h),
              decoration: BoxDecoration(
                color: AppColors.cF5F5F5,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40.h,
                        width: 40.w,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(Assets.images.profileAvatar.path),
                      ),
                      UIHelper.horizontalSpace(10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Anika Tahsan',
                            style: TextFontStyle.textStyle16w500c333333,
                          ),
                          Text('5 minute ago'),
                        ],
                      ),
                    ],
                  ),
                  UIHelper.verticalSpace(10.h),
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Image.asset(
                      Assets.images.community.path,
                    ),
                  ),
                  UIHelper.verticalSpace(10.h),
                  Text(
                    "I'm currently preparing for my pharmacology exam, and I’ve been struggling a bit with memorizing all the drug classifications and mechanisms of action. There’s just so much information, and I often get the terms mixed up.",
                    style: TextFontStyle.textStyle14w400c767676helvatica,
                  ),
                  UIHelper.verticalSpace(10.h),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            Assets.icons.star.path,
                            height: 25,
                          ),
                          UIHelper.verticalSpace(5.h),
                          Text(
                            '1.5k Likes',
                            style: TextFontStyle.textStyle12w400cA1A1A1,
                          )
                        ],
                      ),
                      UIHelper.horizontalSpace(10.h),
                      InkWell(
                        onTap: () {
                          Get.to(() => CommunityCommentScreen());
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              Assets.icons.chatBox.path,
                              height: 25,
                            ),
                            UIHelper.verticalSpace(5.h),
                            Text(
                              '245 Comments',
                              style: TextFontStyle.textStyle12w400cA1A1A1,
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            UIHelper.verticalSpace(10.h),
            Text(
              'Comments',
              style: TextFontStyle.textStyle16w500c333333,
            ),
            UIHelper.verticalSpace(10.h),
            ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (_, context) {
                  return Container(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40.h,
                          width: 40.w,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(Assets.images.profileAvatar.path),
                        ),
                        UIHelper.horizontalSpace(5.w),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(10.sp),
                            decoration: BoxDecoration(
                                color: AppColors.cWhite,
                                borderRadius: BorderRadius.circular(10.r)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Anika Tahsin',
                                  style: TextFontStyle.textStyle16w500c333333,
                                ),
                                UIHelper.verticalSpace(5.h),
                                Text(
                                  'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
                                  style: TextFontStyle
                                      .textStyle14w400c767676helvatica,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
            UIHelper.verticalSpace(100.h),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 85,
        padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 25.h),
        color: Colors.transparent,
        width: double.infinity,
        child: CustomTextfield(
            hintText: 'Write Your comment',
            suffixIcon: InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 17.h),
                child: Image.asset(
                  Assets.icons.send.path,
                ),
              ),
            )),
      ),
    );
  }
}
