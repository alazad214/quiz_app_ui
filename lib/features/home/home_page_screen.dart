import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mehdi0605/constants/app_colors.dart';
import 'package:mehdi0605/features/home/widgets/choice_topic_items.dart';
import 'package:mehdi0605/helpers/ui_helpers.dart';
import '../../constants/text_font_style.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  TextEditingController _searchController = TextEditingController();
  final List<Map<String, dynamic>> topicitem = [
    {'category': 'Anatomy', 'image': 'assets/images/chest.png'},
    {'category': 'Neurology', 'image': 'assets/images/brain.png'},
    {'category': 'Gynecology', 'image': 'assets/images/vegina.png'},
    {'category': 'Cardiology', 'image': 'assets/images/heart.png'},
    {'category': 'Cardiology', 'image': 'assets/images/heart.png'},
    {'category': 'Cardiology', 'image': 'assets/images/heart.png'},
    {'category': 'Cardiology', 'image': 'assets/images/heart.png'},
    {'category': 'Cardiology', 'image': 'assets/images/heart.png'},
  ];

  final List<Map<String, dynamic>> examimages = [
    {'category': 'MCQ Exam', 'image': 'assets/images/McqExam.png'},
    {'category': 'Oral Exam', 'image': 'assets/images/OralExam.png'},
    {'category': 'State Exam', 'image': 'assets/images/StateExam.png'},
  ];

  final List<Map<String, dynamic>> carouselData = [
    {
      'text':
          'I wanted to share some tips and strategies for anyone preparing for the upcoming Anatomy State Exam.',
      'image': 'assets/images/person.png',
      'title': 'Arina',
      'time': '24h',
    },
    {
      'text':
          'I wanted to share some tips and strategies for anyone preparing for the upcoming Anatomy State Exam.',
      'image': 'assets/images/person.png',
      'title': 'John',
      'time': '12h',
    },
    {
      'text':
          'I wanted to share some tips and strategies for anyone preparing for the upcoming Anatomy State Exam.',
      'image': 'assets/images/person.png',
      'title': 'Sarah',
      'time': '48h',
    },
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,

      //Custom AppBar design=======================>

      // appBar: CustomAppbar(
      //   title: 'Good Morning!',
      //   subtitle: 'Rosa Lawson',
      //   leadingVisible: true,
      //   isLeading: true,
      //   actions: [
      //     IconButton(onPressed: () {}, icon: Icon(Icons.batch_prediction)),
      //     IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpaceSmall,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search for courses or seminars',
                  hintStyle: TextStyle(fontSize: 16, color: AppColors.cC0C0C0C),
                  filled: true,
                  fillColor: AppColors.cFFFFFF,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
                ),
              ),
            ),
            UIHelper.verticalSpaceSmall, //16.h
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Choose Topic',
                style: TextFontStyle.textStyle20w500c333333,
              ),
            ),
            UIHelper.verticalSpaceSmall, //16.h
            Container(
              height: 200.h,
              child: topicsGridView(),
            ),
            UIHelper.verticalSpaceMedium,
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Exam Preparation',
                style: TextFontStyle.textStyle20w500c333333,
              ),
            ),
            UIHelper.verticalSpaceSmall,
            // examGridView(examimages: examimages),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    'Latest from Community',
                    style: TextFontStyle.textStyle20w500c333333,
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
            UIHelper.verticalSpaceSmall,
            // CarouselContainer(carouseltitle: carouselData[0]['title'], carouseltext: carouselData[0]['image'], carouseltime: carouselData[0]['text'], carouselimage: carouselData[0]['time'], carousellength: carouselData.length)
          ],
        ),
      ),
    );
  }

  GridView topicsGridView() {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      itemCount: topicitem.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        return TopicsTile(
          topics: topicitem[index]['category'],
          topicimages: topicitem[index]['image'],
        );
      },
    );
  }
}

///fadsjfaksdjf
