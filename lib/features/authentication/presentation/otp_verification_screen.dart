import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehdi0605/common_widgets/custom_button.dart';
import 'package:mehdi0605/constants/app_colors.dart';
import 'package:mehdi0605/constants/text_font_style.dart';
import 'package:mehdi0605/helpers/navigation_service.dart';
import 'package:mehdi0605/helpers/ui_helpers.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../helpers/all_routes.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final TextEditingController _optTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      body: Column(
        children: [
          SizedBox(height: 100.h),
          Padding(
            padding: EdgeInsets.all(24.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Enter code',
                  style: TextFontStyle.textStyle24w700c333333,
                ),
                UIHelper.verticalSpace(8.h),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            'We’ve sent an Email with an activation code to your Email',
                        style: TextFontStyle.textStyle16w400c767676,
                      ),
                      TextSpan(
                        text: ' Yourmail@gmail.com',
                        style: TextFontStyle.textStyle16w400c00BFA6,
                      ),
                    ],
                  ),
                ),
                UIHelper.verticalSpace(24.h),
                PinCodeTextField(
                  appContext: context,
                  length: 5,
                  obscureText: false,
                  keyboardType: TextInputType.number,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    fieldHeight: 50.h,
                    fieldWidth: 50.w,
                    activeFillColor: Colors.white,
                    inactiveFillColor: AppColors.scaffoldBackground,
                    selectedFillColor: AppColors.c333333,
                    inactiveColor: AppColors.c333333,
                    inactiveBorderWidth: 1,
                    activeBorderWidth: 1,
                    activeColor: AppColors.c767676,
                    borderRadius: BorderRadius.circular(15.0),
                    selectedColor: AppColors.c333333,
                    selectedBorderWidth: 1,
                    errorBorderColor: AppColors.cED2D6B,
                    errorBorderWidth: 1,
                  ),
                  //enableActiveFill: true,
                  controller: _optTEController,
                  onCompleted: (v) {
                    print("Completed");
                  },
                  onChanged: (value) {
                    print(value);
                    setState(() {});
                  },
                  // beforeTextPaste: (text) {
                  //   print("Allowing to paste $text");
                  //   // Logic for handling text paste
                  //   return true;
                  // },
                ),
                UIHelper.verticalSpaceSmall,
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'I didn’t receive a code',
                          style: TextFontStyle.textStyle16w400c767676,
                        ),
                        TextSpan(
                          text: ' Resend?',
                          style: TextFontStyle.textStyle16w500c00BFA6,
                        ),
                      ],
                    ),
                  ),
                ),
                UIHelper.verticalSpaceMediumLarge,
                customButton(
                    borderRadius: 16.r,
                    name: 'Verify',
                    textStyle: TextFontStyle.textStyle16w500cFFFFFF,
                    onCallBack: () {
                      NavigationService.navigateToUntilReplacement(
                          Routes.homePage);
                    },
                    context: context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
