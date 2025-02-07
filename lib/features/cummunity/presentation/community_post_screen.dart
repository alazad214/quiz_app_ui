import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mehdi0605/common_widgets/custom_appbar.dart';
import 'package:mehdi0605/common_widgets/custom_button.dart';
import 'package:mehdi0605/common_widgets/custom_textfeild.dart';
import 'package:mehdi0605/constants/text_font_style.dart';
import 'package:mehdi0605/helpers/ui_helpers.dart';

import '../../../constants/app_colors.dart';

class CommunityPostScreen extends StatefulWidget {
  const CommunityPostScreen({super.key});

  @override
  State<CommunityPostScreen> createState() => _CommunityPostScreenState();
}

class _CommunityPostScreenState extends State<CommunityPostScreen> {
  List<File> selectedImages=[];
  final picker = ImagePicker();
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
                        GestureDetector(
                          onTap:(){
                            log("message");
                            getImages();
                          },
                          child: Icon(
                            Icons.image,
                            color: AppColors.c00BFA6,
                            size: 27,
                          ),
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
            selectedImages.isEmpty
                ? Center(child: Text("No images selected"))
                : GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: selectedImages.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (BuildContext context, index) {
                return Stack(
                  children: [
                    Container(
                      height: 80.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                        color: AppColors.cWhite,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: kIsWeb
                            ? Image.network(selectedImages[index].path,fit: BoxFit.cover)
                            : Image.file(selectedImages[index], fit: BoxFit.cover),
                      ),
                    ),
                    Positioned(
                      top: -50,
                        bottom: 20,
                        child: GestureDetector(
                          onTap:(){
                            selectedImages.removeAt(index);
                            setState(() {
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              shape: BoxShape.circle,
                            ),
                             child: const Icon(
                            Icons.close,
                          color: Colors.white,
                          size: 20,
                                          ),
                          ),
                        ))
                  ]
                );
              },
            ),
            SizedBox(height: Get.height / 2.8),
            Padding(
              padding:  EdgeInsets.only(bottom: 50.sp),
              child: customButton(
                name: 'Submit',
                onCallBack: () {},
                context: context,
              ),
            )
          ],
        ),
      ),
    );
  }
  Future getImages()async{
    final pickedFile=await picker.pickMultiImage(
        imageQuality: 100,
    );
    List<XFile> xfilePicke= pickedFile;
    if( pickedFile.isNotEmpty){
      for( var i =0;i<xfilePicke.length;i++){
        selectedImages.add(File(xfilePicke[i].path));
      }
      setState(() {
      });
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Nothing is selected')));
    }
  }
}