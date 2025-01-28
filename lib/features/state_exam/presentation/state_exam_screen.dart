import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehdi0605/common_widgets/custom_appbar.dart';
import '../../../common_widgets/custom_textfeild.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/text_font_style.dart';

class StateExamScreen extends StatefulWidget {
  const StateExamScreen({super.key});

  @override
  State<StateExamScreen> createState() => _StateExamScreenState();
}

class _StateExamScreenState extends State<StateExamScreen> {
  int? selectedIndex;
  int? selectedIndex2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: 'Anotomy'),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextfield(
              fillColor: AppColors.cWhite,
              borderColor: AppColors.cWhite,
              prefixIcon: Icon(Icons.search),
              hintText: 'Search for PDFs',
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 6,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return buildTopicCard(index, 'PDF Name', '16/07/2025');
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTopicCard(int index, String pdfName, String pdfDate) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        height: 56.h,
        margin: EdgeInsets.only(top: 10.h),
        padding: EdgeInsets.all(10.sp),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.cFFFFFF,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: selectedIndex == index
                ? AppColors.primaryColor
                : Colors.transparent,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                pdfName,
                style: TextFontStyle.textStyle16w500c333333,
              ),
            ),
            Text(
              pdfDate,
              style: TextFontStyle.textStyle16w500c333333,
            )
          ],
        ),
      ),
    );
  }
}
