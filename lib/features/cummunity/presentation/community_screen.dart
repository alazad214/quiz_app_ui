import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mehdi0605/common_widgets/custom_appbar.dart';
import 'package:mehdi0605/common_widgets/custom_textfeild.dart';
import 'package:mehdi0605/constants/app_colors.dart';
import 'package:mehdi0605/constants/text_font_style.dart';
import 'package:mehdi0605/features/cummunity/presentation/community_comment_screen.dart';
import 'package:mehdi0605/features/cummunity/presentation/community_post_screen.dart';
import 'package:mehdi0605/gen/assets.gen.dart';
import 'package:mehdi0605/helpers/ui_helpers.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: 'Community',
        leadingVisible: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: UIHelper.kDefaulutPadding()),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 56.h,
                  width: 56.w,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(Assets.images.profileAvatar.path),
                ),
                UIHelper.horizontalSpace(10.w),
                Expanded(
                    child: CustomTextfield(
                  hintText: 'Write something...',
                  isRead: true,
                  ontap: () {
                    Get.to(() => CommunityPostScreen());
                  },
                  suffixIcon: Icon(
                    Icons.image,
                    color: AppColors.c00BFA6,
                  ),
                )),
              ],
            ),
            UIHelper.verticalSpace(24.h),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (itemBuilder, index) {
                  return Container(
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
                              child:
                                  Image.asset(Assets.images.profileAvatar.path),
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
                  );
                })
          ],
        ),
      ),
  
  
    );
  }
}
