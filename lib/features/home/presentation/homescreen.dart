import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehdi0605/common_widgets/exam_preparation_gridview.dart';
import 'package:mehdi0605/common_widgets/seminar_container.dart';
import 'package:mehdi0605/constants/app_colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mehdi0605/features/home/widgets/choice_topic_items.dart';
import 'package:mehdi0605/gen/assets.gen.dart';
import 'package:mehdi0605/helpers/ui_helpers.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../constants/text_font_style.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
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

  int _currentIndex = 0;

  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();

    _pageController.addListener(() {
      setState(() {
        _currentIndex = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UIHelper.verticalSpaceMedium,
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Good Morning!',
                              style:
                                  TextFontStyle.textStyle16400c333333helvatica,
                            ),
                            Text(
                              'Rosa Lawson',
                              style: TextFontStyle.textStyle20w500c333333,
                            ),
                          ],
                        ),
                        UIHelper.horizontalSpace(169.w),
                        GestureDetector(
                          onTap: () {},
                          child: SizedBox(
                            height: 24.h,
                            width: 24.w,
                            child: Image.asset(
                              Assets.icons.medalStar.path,
                            ),
                          ),
                        ),
                        UIHelper.horizontalSpaceSmall,
                        GestureDetector(
                          onTap: () {},
                          child: SizedBox(
                            height: 24.h,
                            width: 24.w,
                            child: Image.asset(
                              Assets.icons.notification.path,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              UIHelper.verticalSpaceSmall,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search for courses or seminars',
                    hintStyle:
                        TextStyle(fontSize: 16, color: AppColors.cC0C0C0C),
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
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  'Choose Topic',
                  style: TextFontStyle.textStyle20w500c333333,
                ),
              ),
              UIHelper.verticalSpace(16.h),
              Container(
                height: 200.h,
                child: topicsGridView(),
              ),
              UIHelper.verticalSpace(54.h),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  'Exam Preparation',
                  style: TextFontStyle.textStyle20w500c333333,
                ),
              ),
              UIHelper.verticalSpace(16.h),
              ExamGridView(examcategoryimages: examimages),
              UIHelper.verticalSpace(16.h),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  'Latest from Community',
                  style: TextFontStyle.textStyle20w500c333333,
                ),
              ),
              UIHelper.verticalSpace(16.h),
              Container(
                child: Column(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        aspectRatio: 2.1,
                        scrollDirection: Axis.horizontal,
                        autoPlay: true,
                        viewportFraction: 0.8,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentIndex = index;
                          });

                          _pageController.jumpToPage(index);
                        },
                      ),
                      items: carouselData.map((carouselItem) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 8.0), // Add margin for spacing
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.h),
                                  color: AppColors.cFFFFFF,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    UIHelper.verticalSpace(12),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 14.0),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                carouselItem['image'],
                                                height: 26.h,
                                                width:
                                                    26.w, // Adjust image height
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  carouselItem['title'],
                                                  style: TextFontStyle
                                                      .textStyle14w400c767676helvatica
                                                      .copyWith(
                                                    color: AppColors.c333333,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 16),
                                          child: Text(
                                            '${carouselItem['time']}',
                                            style: TextFontStyle
                                                .textStyle14w400c767676helvatica
                                                .copyWith(
                                              color: AppColors.cC0C0C0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    UIHelper.verticalSpace(10.h),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16.0),
                                          child: Text(
                                            carouselItem['text'],
                                            style: TextFontStyle
                                                .textStyle14w400c767676helvatica,
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 4),
                                          child: Row(
                                            children: [
                                              IconButton(
                                                onPressed: () {},
                                                icon: Image.asset(
                                                    'assets/icons/star.png'),
                                              ),
                                              IconButton(
                                                onPressed: () {},
                                                icon: Image.asset(
                                                    'assets/icons/comment.png'),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                    UIHelper.verticalSpace(14.h),
                    Center(
                      child: SmoothPageIndicator(
                        controller: _pageController, // Use PageController
                        count: carouselData.length,
                        effect: WormEffect(
                          dotWidth: 8.0.w, // Adjust the dot size
                          dotHeight: 8.0.h, // Adjust the dot size
                          activeDotColor: AppColors.primaryColor,
                          dotColor: AppColors.cC0C0C0C,
                          spacing: 8.0.w, // Adjust spacing between dots
                        ),
                      ),
                    ),
                    UIHelper.verticalSpace(16.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(
                            'Upcoming Seminar',
                            style: TextFontStyle.textStyle20w500c333333,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text(
                            'View All',
                            style: TextFontStyle.textStyle16w400c00BFA6,
                          ),
                        ),
                      ],
                    ),
                    UIHelper.verticalSpace(16.h),
                    SeminarContainer(
                      carouselLength: carouselData.length,
                      carouselImage: carouselData[_currentIndex]['image'],
                    ),
                    UIHelper.verticalSpace(8.h),
                    SeminarContainer(
                      carouselLength: carouselData.length,
                      carouselImage: carouselData[_currentIndex]['image'],
                    ),
                  ],
                ),
              ),
            ],
          ),
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
