import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehdi0605/constants/app_colors.dart';
import 'package:mehdi0605/gen/assets.gen.dart';
import 'package:mehdi0605/helpers/ui_helpers.dart';

import '../../constants/text_font_style.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good Morning!',
              style: TextStyle(
                fontFamily: 'HelveticaNeueRoman.otf',
                fontSize: 16.sp,
                color: AppColors.c333333,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              'Rosa Lawson',
              style: TextStyle(
                fontFamily: 'HelveticaNeueRoman.otf',
                fontSize: 24.sp,
                color: AppColors.c333333,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.batch_prediction)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UIHelper.verticalSpaceSmall,
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 16.w), // Padding around the search bar
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search for courses or seminars',
                hintStyle: TextStyle(fontSize: 16, color: AppColors.cC0C0C0C),
                filled: true,
                fillColor: AppColors.cFFFFFF,
                // Light background color for the search bar
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0), // Rounded corners
                  borderSide: BorderSide.none, // No border
                ),
                contentPadding: EdgeInsets.symmetric(
                    vertical: 15.h,
                    horizontal: 20.w), // Padding inside the search bar
              ),
            ),
          ),
          UIHelper.verticalSpaceSmall,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  'Rosa Lawson',
                  style: TextStyle(
                    fontFamily: 'HelveticaNeueRoman.otf',
                    fontSize: 20.sp,
                    color: AppColors.c333333,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              UIHelper.verticalSpaceSmall,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(60)),
                    ),
                    child: Image.asset(Assets.images.chest.path),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(60)),
                    ),
                    child: Image.asset(Assets.images.brain.path),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(60)),
                    ),
                    child: Image.asset(Assets.images.vegina.path),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(60)),
                    ),
                    child: Image.asset(Assets.images.heart.path),
                  ),
                ],
              ),
              UIHelper.verticalSpaceSmall,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(60)),
                    ),
                    child: Image.asset(Assets.images.chest.path),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(60)),
                    ),
                    child: Image.asset(Assets.images.brain.path),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(60)),
                    ),
                    child: Image.asset(Assets.images.vegina.path),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(60)),
                    ),
                    child: Image.asset(Assets.images.heart.path),
                  ),
                ],
              ),
              UIHelper.verticalSpaceMedium,
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  'Exam Preparation',
                  style: TextStyle(
                    fontFamily: 'HelveticaNeueRoman.otf',
                    fontSize: 20.sp,
                    color: AppColors.c333333,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              UIHelper.verticalSpaceMedium,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 110,
                    width: 111,
                    decoration: BoxDecoration(
                      color: AppColors
                          .cFFFFFF, // Set the desired container color here
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      // border: Border.all(
                      //   width: 1,
                      // ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset(Assets.images.mcq.path),
                    ),
                  ),
                  Container(
                    height: 110,
                    width: 111,
                    decoration: BoxDecoration(
                      color: AppColors
                          .cFFFFFF, // Set the desired container color here
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset(Assets.images.oral.path),
                    ),
                  ),
                  Container(
                    height: 110,
                    width: 111,
                    decoration: BoxDecoration(
                      color: AppColors
                          .cFFFFFF, // Set the desired container color here
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset(Assets.images.state.path),
                    ),
                  ),
                ],
              ),
              UIHelper.verticalSpaceMedium,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      'Latest from Community',
                      style: TextStyle(
                        fontFamily: 'HelveticaNeueRoman.otf',
                        fontSize: 20.sp,
                        color: AppColors.c333333,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      'View All',
                      style: TextFontStyle.textStyle16w400c00BFA6,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
