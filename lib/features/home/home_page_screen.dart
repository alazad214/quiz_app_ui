import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehdi0605/common_widgets/custom_appbar.dart';
import 'package:mehdi0605/constants/app_colors.dart';
import 'package:mehdi0605/features/home/widgets/choice_topic_items.dart';
import 'package:mehdi0605/helpers/ui_helpers.dart';
import '../../constants/text_font_style.dart';
import 'widgets/exam_preparation_gridview.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  final List<Map<String, dynamic>> topicimages = [
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

  final List<String> imageSliders = [
    'assets/images/McqExam.png',
    'assets/images/McqExam.png',
    'assets/images/McqExam.png',
  ];

  // Use PageController for the carousel slider
  final PageController _pageController = PageController();

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      appBar: CustomAppbar(
        title: 'Good Morning!',
        subtitle: 'Rosa Lawson',
        leadingVisible: true,
        isLeading: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.batch_prediction)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpaceSmall,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: TextField(
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
            UIHelper.verticalSpaceSmall,

            // Choose Topic
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Choose Topic',
                style: TextFontStyle.textStyle20w500c333333,
              ),
            ),
            UIHelper.verticalSpaceSmall,

            // Choose Topic Grid
            Container(
              height: 200.h,
              child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                itemCount: topicimages.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  return TopicsTile(
                    topics: topicimages[index]['category'],
                    topicimages: topicimages[index]['image'],
                  );
                },
              ),
            ),

            // Exam preparation
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Exam Preparation',
                style: TextFontStyle.textStyle20w500c333333,
              ),
            ),
            UIHelper.verticalSpaceSmall,

            // Exam preparation Grid
            Container(
              height: 110.h,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1,
                  crossAxisSpacing: 16.w,
                ),
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                itemCount: examimages.length,
                itemBuilder: (context, index) => ExamTile(
                  topics: examimages[index]['category'],
                  examimages: examimages[index]['image'],
                ),
              ),
            ),
            UIHelper.verticalSpaceSmall,
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

            // Image Carousel with SmoothPageIndicator
            Container(
              child: Column(
                children: [
                  // CarouselSlider
                  CarouselSlider.builder(
                    itemCount: imageSliders.length,
                    options: CarouselOptions(
                      height: 200.0,
                      scrollDirection: Axis.horizontal,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.easeInOut,
                      viewportFraction: 0.8,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                    ),
                    itemBuilder: (context, index, realIndex) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                imageSliders[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                  // Dotted Page Indicator using PageController
                  SmoothPageIndicator(
                    controller:
                        _pageController, // Attach the PageController here
                    count: imageSliders.length,
                    effect: WormEffect(
                      dotHeight: 8.0,
                      dotWidth: 8.0,
                      spacing: 16.0,
                      dotColor: Colors.grey,
                      activeDotColor: AppColors.primaryColor,
                    ),
                    onDotClicked: (index) {
                      _pageController.animateToPage(
                        index,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
